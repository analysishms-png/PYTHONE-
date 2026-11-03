<?php

namespace App\Http\Controllers;

use App\Exports\OccupancyForecastExport;
use App\Exports\RevenueSourceExport;
use App\Helpers\DateHelper;
use App\Models\Bookings;
use App\Models\BussSource;
use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\EInvoiceBill;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\Focc;
use App\Models\FomBillDetail;
use App\Models\GrpBookinDetail;
use App\Models\Guestfolio;
use App\Models\ItemMast;
use App\Models\Kot;
use App\Models\MenuHelp;
use App\Models\Paycharge;
use App\Models\Revmast;
use App\Models\RoomCat;
use App\Models\RoomMast;
use App\Models\RoomOcc;
use App\Models\Sale1;
use App\Models\States;
use App\Models\SubGroup;
use App\Models\VoucherType;
use App\Services\OccupancyForecastRevenue;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Cell\DataType;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Spatie\FlareClient\Report;

use function PHPSTORM_META\type;

// use PhpOffice\PhpSpreadsheet\Spreadsheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Reporting extends Controller
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
            if (! isset(Auth::user()->name)) {
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
    // Warning: Abandon hope, all who enter here. 😱

    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');

        return $ncurdate;
        $paycharge = Paycharge::$encrypter->value;
    }

    public function showheader()
    {
        $username = Auth::user()->name;

        return view('property.layouts.header', ['data' => $username]);
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
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>';
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
        $value = MenuHelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();

        return $value;
    }

    public function report_bulkcharge(Request $request)
    {
        $permission = revokeopen(141212);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        if ($this->revokeopen(141212)->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $this->ncurdate;
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $todate = date('Y-m-d', strtotime('-1 month', strtotime($this->ncurdate)));
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $companysub = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate'])
            ->orderBy('name')->groupBy('sub_code')->get();
        $travelagentsota = SubGroup::Where('propertyid', $this->propertyid)->whereIn('comp_type', ['Travel Agency (OTA)'])->orderBy('name', 'ASC')->get();
        $travelagents = SubGroup::Where('propertyid', $this->propertyid)->whereIn('comp_type', ['Travel Agency'])->orderBy('name', 'ASC')->get();
        $bussdata = BussSource::where('propertyid', $this->propertyid)->get();

        $uniqpay = Paycharge::where('propertyid', $this->propertyid)->groupBy('paytype')->get();

        $roundoff = 'ROFF'.$this->propertyid;
        $disc = 'DISC'.$this->propertyid;
        $revmast = Revmast::where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM'.$this->propertyid)
            ->whereNotIn('revmast.rev_code', [$roundoff, $disc])
            ->whereNot('seq_no', '0')
            ->distinct()
            ->orderBy('seq_no', 'ASC')
            ->get();

        return view('property.report_bulkcharge', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'company' => $company,
            'bsource' => $bsource,
            'revmast' => $revmast,
            'companysub' => $companysub,
            'travelagentsota' => $travelagentsota,
            'travelagents' => $travelagents,
            'bussdata' => $bussdata,
            'uniqpay' => $uniqpay,
        ]);
    }

    public function fetchdatabillprint(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $paychargedata = Paycharge::select('paycharge.*', 'revmast.field_type')->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $docid)
                ->whereNull('paycharge.modeset')->orderBy('paycharge.vdate', 'ASC')->orderBy('paycharge.vno', 'ASC')->orderBy('paycharge.sno', 'ASC')->get();
        } else {
            $paychargedata = Paycharge::select('paycharge.*', 'revmast.field_type')->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->whereNull('paycharge.modeset')->orderBy('paycharge.vdate', 'ASC')->orderBy('paycharge.vno', 'ASC')->orderBy('paycharge.sno', 'ASC')->get();
        }

        return json_encode($paychargedata);
    }

    public function fetchbilldata(Request $request)
    {
        $billno = $request->input('billno');
        $guestname = $request->input('guestname');
        $vprefix = $request->vprefix;
        $aprilstart = $vprefix.'-04-01';

        if ($guestname != '') {

            $fetchguestnameroomocc = RoomOcc::where('propertyid', $this->propertyid)
                ->where('name', $guestname)
                ->where('vprefix', $vprefix)
                ->first();
            if (! $fetchguestnameroomocc) {
                return json_encode('Invalid');
            }

            if ($fetchguestnameroomocc->chkindate <= $this->ncurdate && $fetchguestnameroomocc) {

                if ($fetchguestnameroomocc->userchkoutdate == null) {
                    return json_encode('Invalid');
                }
            }

            $fechbillno = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $fetchguestnameroomocc->docid)
                ->where('vprefix', $vprefix)
                ->where('vtype', 'RC')->first();

            $billno = $fechbillno->billno;
        }

        $chkbilltrue = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('billno', $billno)
            ->where('vprefix', $vprefix)
            ->whereNull('modeset')
            ->whereIn('vtype', ['RC', 'REV'])
            ->limit(1)
            ->first();

        if (! $chkbilltrue) {
            return json_encode('Invalid');
        }

        $paychargedata = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('vprefix', $vprefix)
            ->where('billno', $billno)
            ->whereNull('modeset')
            ->get();

        foreach ($paychargedata as $data) {
            $docid = $data->folionodocid;
            // $sno1 = $data->sno1;
            $sno = $data->sno;
        }

        $fomdata = FomBillDetail::where('propertyid', $this->propertyid)
            ->where('billno', $billno)
            ->where('status', 'settle')
            ->where('folionodocid', $docid)
            ->first();

        $sno1 = $fomdata->sno1;

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();

        $paymodetmp = Paycharge::select('paycharge.paycode', 'paycharge.comp_code', 'revmast.pay_type')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.vprefix', $vprefix)
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('paycharge.modeset', 'S')
            ->whereNot('paycharge.vtype', 'REV');

        if ($rocc) {
            $paymode = $paymodetmp->where('paycharge.folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->get();
        } else {
            $paymode = $paymodetmp->where('paycharge.folionodocid', $docid)
                ->where('sno1', $sno1)
                ->get();
        }

        $paymodedata = [];
        foreach ($paymode as $row) {
            $pay_type = $row->pay_type;
            $paydata = null;
            if ($pay_type == 'Company') {
                $paydata = SubGroup::where('propertyid', $this->propertyid)
                    ->where('sub_code', $row->comp_code)
                    ->first();
            }

            $paymodedata[] = [
                'pay_type' => $pay_type,
                'paycompname' => ($paydata) ? $paydata->name : null,
            ];
        }

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {

            $roomoccdata = RoomOcc::select(
                'roomocc.*',
                'cities.cityname',
                'states.name as statename',
                'room_cat.name as roomcategory',
                'company.name as companyname',
                'company.gstin as companygst',
                'travelagent.name as travelname',
                'travelagent.gstin as travelgst',
                'guestfolio.add1',
                'guestfolio.add2',
                'guestprof.guestsign'
            )
                ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
                ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
                ->leftJoin('states', 'states.state_code', '=', 'guestprof.state_code')
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
                ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
                ->leftJoin('subgroup as company', 'company.sub_code', '=', 'guestfolio.company')
                ->leftJoin('subgroup as travelagent', 'travelagent.sub_code', '=', 'guestfolio.travelagent')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('roomocc.docid', $docid)
                // ->where('roomocc.vprefix', $vprefix)
                ->where(function ($query) {
                    $query->whereNull('roomocc.type')
                        ->orWhere('roomocc.type', 'O');
                })
                ->first();
        } else {
            // return 'sagar';
            $roomoccdata = RoomOcc::select(
                'roomocc.*',
                'cities.cityname',
                'states.name as statename',
                'room_cat.name as roomcategory',
                'company.name as companyname',
                'company.gstin as companygst',
                'travelagent.name as travelname',
                'travelagent.gstin as travelgst',
                'guestfolio.add1',
                'guestfolio.add2',
                'guestprof.guestsign'
            )
                ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
                ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
                ->leftJoin('states', 'states.state_code', '=', 'guestprof.state_code')
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
                ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
                ->leftJoin('subgroup as company', 'company.sub_code', '=', 'guestfolio.company')
                ->leftJoin('subgroup as travelagent', 'travelagent.sub_code', '=', 'guestfolio.travelagent')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('roomocc.docid', $docid)
                ->where('roomocc.sno1', $sno1)
                // ->where('roomocc.vprefix', $vprefix)
                ->where(function ($query) {
                    $query->whereNull('roomocc.type')
                        ->orWhere('roomocc.type', 'O');
                })
                ->first();
        }

        $totaldebit = 0;
        $totalcredit = 0;

        foreach ($paychargedata as $data) {
            $totaldebit += $data->amtdr;
            $totalcredit += $data->amtcr;
        }
        $onamt = $paychargedata[0]->onamt;
        $billamt = str_replace(',', '', number_format($totaldebit - $totalcredit, 2));
        $divcode = DB::table('company')->where('propertyid', $this->propertyid)->value('division_code');
        $ranges = DateHelper::calculateDateRanges($aprilstart);
        if ($divcode == null) {
            $invoiceno = 'BCNT/'.$ranges['finyear']['current'].'-'.substr($ranges['finyear']['nextyear'], 2).'/'.$billno;
        } else {
            $invoiceno = $divcode.'/'.$ranges['finyear']['current'].'-'.substr($ranges['finyear']['nextyear'], 2).'/'.$billno;
        }
        $sumfieldc = DB::table('paycharge')
            ->join('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.folionodocid', $docid)
            ->where('revmast.field_type', 'C')
            ->where('paycharge.vtype', 'REV')
            ->where('paycharge.vprefix', $vprefix)
            ->sum('paycharge.amtdr');

        $sumtyperev = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('folionodocid', $docid)
            ->where('paycharge.vprefix', $vprefix)
            ->where('sno', 1)
            ->where('sno1', $sno1)
            ->where('vtype', 'REV')
            ->sum('amtdr');

        $einvoicebill = EInvoiceBill::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('cancelled', 'N')
            ->first();

        $data = [
            'einvoicebill' => $einvoicebill,
            'billno' => $billno,
            'paychargedata' => $paychargedata,
            'docid' => $docid,
            'sno1' => $sno1,
            'sumtyperev' => $sumtyperev,
            'companydata' => $companydata,
            'roomoccdata' => $roomoccdata,
            'billamt' => $billamt,
            'sumfieldc' => $sumfieldc,
            'onamt' => $onamt,
            'invoiceno' => $invoiceno,
            'paymodedata' => $paymodedata,
        ];

        return json_encode($data);
    }

    public function fetchcompname(Request $request)
    {
        $settlemode = $request->input('settlemode');
        $settlefor = $request->input('settlefor');
        if ($settlefor == 'Company') {
            $data = SubGroup::Where('propertyid', $this->propertyid)->where('comp_type', 'Corporate')->orderBy('name', 'ASC')->get();
        } elseif ($settlefor == 'Travel Agent') {
            $data = SubGroup::Where('propertyid', $this->propertyid)->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])->orderBy('name', 'ASC')->get();
        }

        return json_encode($data);
    }

    public function fetchpaydata(Request $request)
    {
        [$result, $revmast, $skipcode] = $this->bulkchargeData([
            'fromdate' => $request->input('fromdate'),
            'todate' => $request->input('todate'),
            'allsettlement' => $request->input('allsettlement'),
            'allcompany' => $request->input('allcompany'),
            'alltravelagent' => $request->input('alltravelagent'),
            'allbusssource' => $request->input('allbusssource'),
            'settleyn' => $request->input('settleyn'),
            'companyyn' => $request->input('companyyn'),
            'travelyn' => $request->input('travelyn'),
            'travelynota' => $request->input('travelynota'),
            'bussyn' => $request->input('bussyn'),
        ]);

        return json_encode([
            'skipcode' => $skipcode,
            'report' => $result,
            'revmast' => $revmast,
        ]);
    }

    // Shared data builder for Checkout Register (report_bulkcharge) — used by fetch / print / excel
    private function bulkchargeData(array $in)
    {
        $cgst = 'CGSS'.$this->propertyid;
        $sgst = 'SGSS'.$this->propertyid;
        $roundoff = 'ROFF'.$this->propertyid;
        $disc = 'DISC'.$this->propertyid;
        $fromdate = $in['fromdate'] ?? null;
        $todate = $in['todate'] ?? null;

        $allsettlement = $in['allsettlement'] ?? '';
        $allcompany = $in['allcompany'] ?? '';
        $alltravelagent = $in['alltravelagent'] ?? '';
        $allbusssource = $in['allbusssource'] ?? '';

        $settleyn = $in['settleyn'] ?? 'N';
        $companyyn = $in['companyyn'] ?? 'N';
        $travelyn = $in['travelyn'] ?? 'N';
        $travelynota = $in['travelynota'] ?? 'N';
        $bussyn = $in['bussyn'] ?? 'N';

        $seqrevcode = [];
        $revmast = Revmast::where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM'.$this->propertyid)
            ->whereNot('seq_no', '0')
            ->whereNotIn('revmast.rev_code', [$roundoff, $disc])
            ->distinct()
            ->orderBy('seq_no', 'ASC')
            ->get();

        $skipcode = [$roundoff, $disc];

        foreach ($revmast as $row) {
            $seqrevcode[] = $row->rev_code;
        }

        $roomoccJoinExpr = 'CASE 
            WHEN paycharge.msno1 = 0 THEN paycharge.sno1 
            ELSE paycharge.msno1 
         END';

        $effectiveSnoExpr = "CASE 
            WHEN roomocc.leaderyn = 'Y' THEN CASE 
               WHEN paycharge.msno1 = 0 THEN paycharge.sno1 
               ELSE paycharge.msno1 
            END
            ELSE paycharge.sno1
         END";

        $selectFields = [
            'paycharge.folionodocid',
            DB::raw("{$effectiveSnoExpr} AS effective_sno"),
            DB::raw("SUM(CASE WHEN paycharge.sno IS NOT NULL and roomocc.type = 'O' THEN paycharge.amtdr ELSE 0 END) AS billamt"),
            DB::raw("SUM(CASE WHEN paycharge.sno = 1 and roomocc.type = 'O' THEN paycharge.amtdr ELSE 0 END) AS goods1"),
            DB::raw("SUM(CASE WHEN paycharge.paycode = '{$cgst}' and roomocc.type = 'O' THEN paycharge.amtdr - paycharge.amtcr ELSE 0 END) AS cgstsum"),
            DB::raw("SUM(CASE WHEN paycharge.paycode = '{$sgst}' and roomocc.type = 'O' THEN paycharge.amtdr - paycharge.amtcr ELSE 0 END) AS sgstsum"),
            DB::raw("SUM(CASE WHEN paycharge.paycode = '{$roundoff}' and roomocc.type = 'O' THEN paycharge.amtdr - paycharge.amtcr ELSE 0 END) AS roundoff"),
            DB::raw("SUM(CASE WHEN paycharge.paycode = '{$disc}' and roomocc.type = 'O' THEN paycharge.amtcr ELSE 0 END) AS discount"),
        ];

        $dynamicAliases = [];

        foreach ($seqrevcode as $code) {
            // $alias = "sum_" . strtolower($code);
            $alias = 'sum_'.preg_replace('/[^a-z0-9_]/i', '_', strtolower($code));
            $selectFields[] = DB::raw("SUM(CASE WHEN paycharge.paycode = '{$code}' and roomocc.type = 'O' THEN paycharge.amtdr ELSE 0 END) AS {$alias}");
            $dynamicAliases[] = $alias;
        }

        $mainQuery = DB::table('paycharge')
            ->select([
                DB::raw("{$effectiveSnoExpr} AS effective_sno"),
                DB::raw("{$effectiveSnoExpr} AS sno1"),
                'paycharge.settledate',
                'paycharge.vprefix',
                'guestfolio.name as guestname',
                // 'guestfolio.vdate as checkindate',
                'roomocc.chkindate as checkindate',
                'roomocc.chkintime as checkintime',
                DB::raw("COALESCE(roomocc.chkoutdate, '') as chkoutdate"),
                'roomocc.leaderyn as leaderyn',
                'roomocc.chkouttime as chkouttime',
                'roomocc.docid as roomdocid',
                'roomocc.sno1 as rocc1',
                'guestfolio.busssource as bcode',
                'busssource.name as busssource',
                'guestprof.mobile_no as mobile_no',
                'guestfolio.company as compcode',
                'guestfolio.docid as folionodocid',
                'guestfolio.travelagent as travelcode',
                'paycharge.foliono',
                'fombilldetails.billno',
                'paycharge.docid',
                'roomocc.roomno as roomno',
                DB::raw('(roomocc.adult + roomocc.children) AS occ'),
                // DB::raw('SUM(roomocc.nodays) as nights'),
                'roomocc.nodays as nights',
                'subcom.name as company',
                'subcom.gstin as compgstin',
                'travelcom.name as travelcompany',
                'travelcom.gstin as travelgstin',
                'booking.DocId as bookingdocid',
                'booking.BookNo AS bookno',
                'booking.RefBookNo AS refbookingid',
            ])
            ->leftJoin('roomocc', function ($join) use ($roomoccJoinExpr) {
                $join->on('roomocc.docid', '=', 'paycharge.folionodocid')
                    ->on('roomocc.sno1', '=', DB::raw($roomoccJoinExpr));
            })
            ->leftJoin('fombilldetails', function ($join) use ($effectiveSnoExpr) {
                $join->on('fombilldetails.folionodocid', '=', 'paycharge.folionodocid')
                    ->on('fombilldetails.sno1', '=', DB::raw($effectiveSnoExpr))
                    ->where('fombilldetails.status', '=', 'settle');
            })
            ->leftJoin('guestfolio', 'paycharge.folionodocid', '=', 'guestfolio.docid')
            ->leftJoin('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->leftJoin('subgroup AS subcom', 'guestfolio.company', '=', 'subcom.sub_code')
            ->leftJoin('subgroup AS travelcom', 'guestfolio.travelagent', '=', 'travelcom.sub_code')
            ->leftJoin('busssource', 'busssource.bcode', '=', 'guestfolio.busssource')
            ->leftJoin('booking', 'booking.DocId', '=', 'guestfolio.bookingdocid')
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereBetween('paycharge.settledate', [$fromdate, $todate])
            ->where('paycharge.roomtype', 'RO')
            ->where('paycharge.foliono', '!=', 0)
            ->where('roomocc.type', 'O');

        if ($companyyn == 'Y') {
            $mainQuery->whereIn('guestfolio.company', explode(',', $allcompany));
        }

        if ($travelyn == 'Y') {
            $mainQuery->whereIn('guestfolio.travelagent', explode(',', $alltravelagent));
        }

        if ($travelynota == 'Y') {
            $mainQuery->whereIn('guestfolio.travelagent', explode(',', $alltravelagent));
        }

        if ($bussyn == 'Y') {
            $mainQuery->whereIn('guestfolio.busssource', explode(',', $allbusssource));
        }

        if (strtolower($settleyn) == 'y') {
            $mainQuery->whereIn('paycharge.paytype', explode(',', strtolower($allsettlement)));
        }

        $mainQuery->groupBy(
            'paycharge.folionodocid',
            DB::raw($effectiveSnoExpr),
            'fombilldetails.billno'
        )->orderBy('fombilldetails.billno')
            ->orderBy('paycharge.settledate');

        $cgstQuery = DB::table('paycharge')
            ->leftJoin('roomocc', function ($join) use ($roomoccJoinExpr) {
                $join->on('roomocc.docid', '=', 'paycharge.folionodocid')
                    ->on('roomocc.sno1', '=', DB::raw($roomoccJoinExpr));
            })
            ->select($selectFields)
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereBetween('paycharge.settledate', [$fromdate, $todate])
            ->groupBy('paycharge.folionodocid', DB::raw($effectiveSnoExpr));

        $resultQuery = DB::table(DB::raw("({$mainQuery->toSql()}) AS main_query"))
            ->mergeBindings($mainQuery)
            ->leftJoin(DB::raw("({$cgstQuery->toSql()}) AS cgst"), function ($join) {
                $join->on('main_query.folionodocid', '=', 'cgst.folionodocid')
                    ->on('main_query.effective_sno', '=', 'cgst.effective_sno');
            })
            ->mergeBindings($cgstQuery)
            ->select([
                'main_query.sno1',
                'main_query.rocc1',
                'main_query.settledate',
                'main_query.guestname',
                'main_query.leaderyn',
                'main_query.checkindate',
                'main_query.checkintime',
                'main_query.roomdocid',
                'main_query.chkoutdate',
                'main_query.chkouttime',
                'main_query.mobile_no',
                'main_query.foliono',
                'main_query.billno',
                'main_query.folionodocid',
                'main_query.bookingdocid',
                'main_query.roomno',
                'main_query.occ',
                'main_query.nights',
                'main_query.vprefix',
                DB::raw('IFNULL(cgst.goods1, 0) AS goods1'),
                DB::raw('IFNULL(cgst.cgstsum, 0) AS cgstsum'),
                DB::raw('IFNULL(cgst.sgstsum, 0) AS sgstsum'),
                DB::raw('IFNULL(cgst.roundoff, 0) AS roundoff'),
                DB::raw('IFNULL(cgst.discount, 0) AS discount'),
                DB::raw('(IFNULL(cgst.cgstsum, 0) + IFNULL(cgst.sgstsum, 0)) AS total_tax'),
                DB::raw('IFNULL(cgst.billamt, 0) AS billamt'),
                'main_query.company',
                'main_query.compgstin',
                'main_query.travelcompany',
                'main_query.travelgstin',
                'main_query.compcode',
                'main_query.travelcode',
                'main_query.bookno',
                'main_query.refbookingid',
                'main_query.busssource',
                'main_query.bcode',
            ]);

        foreach ($dynamicAliases as $alias) {
            $resultQuery->addSelect(DB::raw("IFNULL(cgst.{$alias}, 0) AS {$alias}"));
        }

        $resulttmp = $resultQuery->get();

        if ($resulttmp->isEmpty()) {
            return [[], $revmast, $skipcode];
        }

        $roomDocIds = $resulttmp->pluck('roomdocid')->filter()->unique()->values()->toArray();

        $bulkPaymentQuery = DB::table('paycharge')
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('revmast.field_type', '=', 'P');
            })
            ->whereIn('paycharge.folionodocid', $roomDocIds)
            ->where('modeset', 'S')
            ->where('paycharge.paycode', '!=', 'ROFF'.$this->propertyid)
            ->select([
                'paycharge.folionodocid',
                'paycharge.sno1',
                'paycharge.paytype',
                DB::raw('SUM(paycharge.amtcr) AS totalamt'),
                DB::raw('MAX(paycharge.u_name) AS u_name'),
            ])
            ->groupBy('paycharge.folionodocid', 'paycharge.sno1', 'paycharge.paytype')
            ->havingRaw('SUM(paycharge.amtcr) > 0');

        if (strtolower($settleyn) == 'y') {
            $bulkPaymentQuery->whereIn('paycharge.paytype', explode(',', strtolower($allsettlement)));
        }

        $bulkPaymentData = $bulkPaymentQuery->get()
            ->groupBy(function ($item) {
                return $item->folionodocid.'_'.$item->sno1;
            });

        $bulkAdvanceData = Paycharge::whereIn('paycharge.folionodocid', $roomDocIds)
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereIn('vtype', ['REC', 'CHK'])
            ->whereNull('modeset')
            ->select([
                'folionodocid',
                'sno1',
                DB::raw('SUM(paycharge.amtcr) AS advance_sum'),
                'paycharge.paytype',
                'paycharge.vdate as advdate',
            ])
            ->groupBy('folionodocid', 'sno1', 'paycharge.paytype')
            ->get()
            ->groupBy(function ($item) {
                return $item->folionodocid.'_'.$item->sno1;
            });

        $result = [];

        foreach ($resulttmp as $row) {
            $paymentkey = $row->roomdocid.'_'.$row->rocc1;
            $paymentDataForRoom = $bulkPaymentData->get($paymentkey, collect());

            $paytypeStr = $paymentDataForRoom->pluck('paytype')->implode(', ');
            $paymentStr = $paymentDataForRoom->pluck('totalamt')->implode(', ');

            if (strtolower($settleyn) == 'y' && empty(trim($paytypeStr))) {
                continue;
            }

            $advanceKey = $row->roomdocid.'_'.$row->rocc1;
            $advanceDataForRoom = $bulkAdvanceData->get($advanceKey, collect());

            $advancePaytypeStr = $advanceDataForRoom->pluck('paytype')->implode(', ');
            $advanceVdateStr = $advanceDataForRoom
                ->pluck('advdate')
                ->map(fn ($date) => Carbon::parse($date)->format('d-m-Y'))
                ->implode(', ');
            $advanceSumStr = $advanceDataForRoom->pluck('advance_sum')->implode(', ');

            $row->paytype = $paytypeStr;
            $row->payment = $paymentStr;
            $row->advancevdate = $advanceVdateStr;
            $row->advancepaytype = $advancePaytypeStr;
            $row->advance = $advanceSumStr;
            $row->u_name = $paymentDataForRoom->pluck('u_name')->first();

            $result[] = $row;
        }

        return [$result, $revmast, $skipcode];
    }

    // ─── Checkout Register (report_bulkcharge) — Calculate nights ─────────────
    private function bulkchargeNights($checkin, $checkout)
    {
        if (empty($checkin) || empty($checkout)) {
            return '';
        }
        $diff = strtotime($checkout) - strtotime($checkin);
        $nights = (int) ceil($diff / 86400);

        return $nights > 0 ? $nights : '1';
    }

    // Sum comma separated numeric string (used for advance / payment values)
    private function bulkchargeSumCsv($value)
    {
        if ($value === null || $value === '') {
            return 0.0;
        }
        $sum = 0.0;
        foreach (explode(',', (string) $value) as $part) {
            $part = trim($part);
            if ($part !== '' && is_numeric($part)) {
                $sum += (float) $part;
            }
        }

        return $sum;
    }

    // Build prepared rows + totals for Checkout Register print / excel export
    private function bulkchargePreparedRows(array $in)
    {
        [$result, $revmast, $skipcode] = $this->bulkchargeData($in);

        $revNames = [];
        $revKeys = [];
        foreach ($revmast as $r) {
            $revKeys[] = 'sum_'.preg_replace('/[^a-z0-9_]/i', '_', strtolower($rev_code = $r->rev_code));
            $revNames[] = $r->name;
        }

        $rows = [];
        $tot = [
            'count' => 0,
            'occ' => 0,
            'nights' => 0,
            'goods' => 0.0,
            'revs' => array_fill(0, count($revKeys), 0.0),
            'cgst' => 0.0,
            'sgst' => 0.0,
            'tax' => 0.0,
            'discount' => 0.0,
            'roundoff' => 0.0,
            'advance' => 0.0,
            'billamt' => 0.0,
            'payment' => 0.0,
        ];

        foreach ($result as $item) {
            $nightCount = $this->bulkchargeNights($item->checkindate ?? '', $item->chkoutdate ?? '');

            $revVals = [];
            foreach ($revKeys as $k => $key) {
                $v = (float) ($item->$key ?? 0);
                $revVals[] = $v;
                $tot['revs'][$k] += $v;
            }

            $advance = $this->bulkchargeSumCsv($item->advance ?? '');
            $payment = $this->bulkchargeSumCsv($item->payment ?? '');

            $checkin = ! empty($item->checkindate) ? Carbon::parse($item->checkindate)->format('d/m/Y') : '';
            $checkout = ! empty($item->chkoutdate) ? Carbon::parse($item->chkoutdate)->format('d/m/Y') : '';
            if (! empty($item->checkintime)) {
                $checkin .= ' '.substr($item->checkintime, 0, 5);
            }
            if (! empty($item->chkouttime)) {
                $checkout .= ' '.substr($item->chkouttime, 0, 5);
            }

            $rows[] = [
                'billno' => $item->billno,
                'foliono' => $item->foliono,
                'guestname' => $item->guestname,
                'leaderyn' => $item->leaderyn ?? '',
                'settledate' => ! empty($item->settledate) ? Carbon::parse($item->settledate)->format('d/m/Y') : '',
                'mobile_no' => $item->mobile_no,
                'checkin' => $checkin,
                'checkout' => $checkout,
                'roomno' => $item->roomno,
                'occ' => $item->occ,
                'nights' => $nightCount,
                'goods' => (float) ($item->goods1 ?? 0),
                'revs' => $revVals,
                'cgst' => (float) ($item->cgstsum ?? 0),
                'sgst' => (float) ($item->sgstsum ?? 0),
                'tax' => (float) ($item->total_tax ?? 0),
                'discount' => (float) ($item->discount ?? 0),
                'roundoff' => (float) ($item->roundoff ?? 0),
                'advmode' => $item->advancepaytype,
                'advdate' => $item->advancevdate,
                'advance' => $advance,
                'billamt' => (float) ($item->billamt ?? 0),
                'pmode' => $item->paytype,
                'payment' => $payment,
                'company' => $item->company,
                'compgstin' => $item->compgstin,
                'travelcompany' => $item->travelcompany,
                'travelgstin' => $item->travelgstin,
                'bookno' => $item->bookno,
                'refbookingid' => $item->refbookingid,
                'busssource' => $item->busssource,
                'u_name' => $item->u_name,
            ];

            $tot['count'] += 1;
            $tot['occ'] += (int) ($item->occ ?? 0);
            $tot['nights'] += (int) $nightCount;
            $tot['goods'] += (float) ($item->goods1 ?? 0);
            $tot['cgst'] += (float) ($item->cgstsum ?? 0);
            $tot['sgst'] += (float) ($item->sgstsum ?? 0);
            $tot['tax'] += (float) ($item->total_tax ?? 0);
            $tot['discount'] += (float) ($item->discount ?? 0);
            $tot['roundoff'] += (float) ($item->roundoff ?? 0);
            $tot['advance'] += $advance;
            $tot['billamt'] += (float) ($item->billamt ?? 0);
            $tot['payment'] += $payment;
        }

        $revNames = $revmast->pluck('name')->all();

        return [$rows, $revNames, $tot];
    }

    // Checkout Register (report_bulkcharge) — collect filter inputs
    private function bulkchargeFilters(Request $request)
    {
        return [
            'fromdate' => $request->query('fromdate', $this->ncurdate),
            'todate' => $request->query('todate', $this->ncurdate),
            'allsettlement' => (string) $request->query('allsettlement', ''),
            'allcompany' => (string) $request->query('allcompany', ''),
            'alltravelagent' => (string) $request->query('alltravelagent', ''),
            'allbusssource' => (string) $request->query('allbusssource', ''),
            'settleyn' => $request->query('settleyn', 'N'),
            'companyyn' => $request->query('companyyn', 'N'),
            'travelyn' => $request->query('travelyn', 'N'),
            'travelynota' => $request->query('travelynota', 'N'),
            'bussyn' => $request->query('bussyn', 'N'),
        ];
    }

    // ─── Checkout Register — Print (DomPDF, contributionreport format) ──────────

    public function printbulkcharge(Request $request)
    {
        $permission = revokeopen(141212);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $filters = $this->bulkchargeFilters($request);
        [$rows, $revNames, $totals] = $this->bulkchargePreparedRows($filters);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.bulkchargeprint', [
            'company' => $company,
            'rows' => $rows,
            'revNames' => $revNames,
            'totals' => $totals,
            'fromdate' => $filters['fromdate'],
            'todate' => $filters['todate'],
        ])->setPaper('a4', 'landscape')
            ->stream('checkout-register-'.$filters['fromdate'].'-to-'.$filters['todate'].'.pdf');
    }

    // ─── Checkout Register — Excel Export (PhpSpreadsheet, contributionreport format)

    public function exportbulkchargeexcel(Request $request)
    {
        try {
            $filters = $this->bulkchargeFilters($request);
            [$rows, $revNames, $totals] = $this->bulkchargePreparedRows($filters);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $prefix = ['Bill No', 'Folio No', 'Guest Name', 'Bill Date', 'Mobile', 'In', 'Out', 'Room', 'Occ', 'Nights', 'Goods'];
            $suffix = ['CGST', 'SGST', 'Total Tax', 'Discount', 'Round Off', 'Adv Mode', 'Adv Date', 'Advance', 'Bill Amt', 'P.Mode', 'Payment', 'Company', 'Company GSTIN', 'Travel Company', 'Travel GSTIN', 'Book No', 'Ref. Book Id.', 'Bus Source', 'Uname'];

            $headers = array_merge($prefix, $revNames, $suffix);
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Checkout Register');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Check Out Register');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.Carbon::parse($filters['fromdate'])->format('d/m/Y')
                .'  To: '.Carbon::parse($filters['todate'])->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Money (zero-based) column indexes: Goods + revs + money trailing cols
            $revCount = count($revNames);
            $moneyIdxs = [10];                                   // Goods
            for ($i = 0; $i < $revCount; $i++) {
                $moneyIdxs[] = 11 + $i;                             // Revenue columns
            }
            $trailStart = 11 + $revCount;
            foreach ([0, 1, 2, 3, 4, 7, 8, 10] as $off) {          // cgst,sgst,tax,disc,roundoff,advance,billamt,payment
                $moneyIdxs[] = $trailStart + $off;
            }

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($rows as $i => $r) {
                $vals = array_merge(
                    [
                        $r['billno'],
                        $r['foliono'],
                        $r['guestname'],
                        $r['settledate'],
                        $r['mobile_no'],
                        $r['checkin'],
                        $r['checkout'],
                        $r['roomno'],
                        $r['occ'],
                        $r['nights'],
                        $r['goods'],
                    ],
                    array_values($r['revs']),
                    [
                        $r['cgst'],
                        $r['sgst'],
                        $r['tax'],
                        $r['discount'],
                        $r['roundoff'],
                        $r['advmode'],
                        $r['advdate'],
                        $r['advance'],
                        $r['billamt'],
                        $r['pmode'],
                        $r['payment'],
                        $r['company'],
                        $r['compgstin'] ? '('.$r['compgstin'].')' : '',
                        $r['travelcompany'],
                        $r['travelgstin'] ? '('.$r['travelgstin'].')' : '',
                        $r['bookno'],
                        $r['refbookingid'],
                        $r['busssource'],
                        $r['u_name'],
                    ]
                );

                foreach ($vals as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex($j + 1);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                foreach ($moneyIdxs as $mi) {
                    $mCol = Coordinate::stringFromColumnIndex($mi + 1);
                    $sheet->getStyle($mCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                    $sheet->getStyle($mCol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                }

                $currentRow++;
            }

            // Grand Total Row
            $sheet->setCellValue('A'.$currentRow, 'Total');
            $sheet->setCellValue('B'.$currentRow, $totals['count']);
            $sheet->setCellValue('H'.$currentRow, $totals['count']);
            $sheet->setCellValue('I'.$currentRow, $totals['occ']);
            $sheet->setCellValue('J'.$currentRow, $totals['nights']);
            $sheet->setCellValue('K'.$currentRow, $totals['goods']);

            foreach ($totals['revs'] as $k => $v) {
                $col = Coordinate::stringFromColumnIndex(12 + $k);
                $sheet->setCellValue($col.$currentRow, $v);
            }
            $trailVals = [
                $totals['cgst'],
                $totals['sgst'],
                $totals['tax'],
                $totals['discount'],
                $totals['roundoff'],
                '',
                '',
                $totals['advance'],
                $totals['billamt'],
                '',
                $totals['payment'],
            ];
            foreach ($trailVals as $j => $v) {
                $col = Coordinate::stringFromColumnIndex($trailStart + 1 + $j);
                $sheet->setCellValue($col.$currentRow, $v);
            }

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            foreach ($moneyIdxs as $mi) {
                $mCol = Coordinate::stringFromColumnIndex($mi + 1);
                $sheet->getStyle($mCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle($mCol.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                    ->setWrapText(false);
            }

            // Column widths
            for ($i = 1; $i <= $colCount; $i++) {
                $sheet->getColumnDimension(
                    Coordinate::stringFromColumnIndex($i)
                )->setWidth($i === 3 ? 26 : 12);
            }

            // Download
            $filename = 'Checkout_Register_'
                .Carbon::parse($filters['fromdate'])->format('Ymd').'_to_'
                .Carbon::parse($filters['todate'])->format('Ymd').'_'
                .date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Checkout Register Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── Guest Trail — Shared Data Method ─────────────────────────────────────

    private function guesttrailData($fromdate)
    {
        $propertyid = $this->propertyid;

        $subQuery = DB::table('paycharge AS P')
            ->select(
                'P.folionodocid',
                'P.sno1',
                DB::raw("GROUP_CONCAT(DISTINCT CASE WHEN P.billno IS NOT NULL AND CAST(P.billno AS CHAR) NOT IN ('0', '') THEN CAST(P.billno AS CHAR) END ORDER BY P.billno SEPARATOR ', ') AS billno"),
                DB::raw("GROUP_CONCAT(DISTINCT CASE WHEN P.billno IS NOT NULL AND CAST(P.billno AS CHAR) NOT IN ('0', '') THEN CAST(P.vprefix AS CHAR) END ORDER BY P.billno SEPARATOR ', ') AS vprefix"),
                DB::raw("SUM(CASE WHEN P.paycode = 'RMCH{$propertyid}' AND P.vdate = '{$fromdate}' THEN P.amtdr ELSE 0 END) AS RoomRent"),
                DB::raw("SUM(CASE WHEN P.paycode = 'DISC{$propertyid}' AND P.vdate = '{$fromdate}' THEN P.amtdr ELSE 0 END) AS RoomDisc"),
                DB::raw("SUM(CASE WHEN P.paycode NOT IN ('DISC{$propertyid}','RMCH{$propertyid}','CGSS{$propertyid}','SGSS{$propertyid}','IGSS{$propertyid}','TOUT{$propertyid}') AND P.vdate = '{$fromdate}' THEN P.amtdr ELSE 0 END) AS ExtraCharge"),
                DB::raw("SUM(CASE WHEN P.paycode IN ('CGSS{$propertyid}','SGSS{$propertyid}','IGSS{$propertyid}') AND P.vdate = '{$fromdate}' THEN P.amtdr ELSE 0 END) AS Tax"),
                DB::raw("SUM(CASE WHEN P.paycode = 'TOUT{$propertyid}' AND P.vdate = '{$fromdate}' THEN P.amtdr ELSE 0 END) AS Outlet"),
                DB::raw("SUM(CASE WHEN P.paycode <> 'DISC{$propertyid}' AND P.modeset <> 'S' AND P.vdate = '{$fromdate}' THEN P.amtcr ELSE 0 END) AS CreditAmt"),
                DB::raw("SUM(CASE WHEN P.vdate < '{$fromdate}' THEN P.amtdr - P.amtcr ELSE 0 END) AS Backfor"),
                DB::raw("SUM(CASE WHEN P.vdate = '{$fromdate}' THEN P.amtdr - P.amtcr ELSE 0 END) AS TotalToday"),
                DB::raw("SUM(CASE WHEN P.modeset <> 'S' THEN P.amtdr - P.amtcr ELSE 0 END) AS TotaluptoDate"),
                DB::raw('SUM(P.amtdr - P.amtcr) AS Carryfor'),
                DB::raw("GROUP_CONCAT(CASE WHEN P.modeset = 'S' THEN CONCAT(P.paytype, ': ', FORMAT(P.amtcr, 2)) ELSE NULL END SEPARATOR ' | ') AS PaymentDetail")
            )
            ->where('P.propertyid', $propertyid)
            ->groupBy('P.folionodocid', 'P.sno1');

        return DB::table('roomocc AS R')
            ->leftJoinSub($subQuery, 'P', function ($join) {
                $join->on('R.docid', '=', 'P.folionodocid')
                    ->on('R.sno1', '=', 'P.sno1');
            })
            ->select(
                'R.folioNo as foliono',
                'R.chkindate as checkindate',
                'R.chkintime as checkintime',
                DB::raw("COALESCE(R.chkoutdate, '') as chkoutdate"),
                'R.chkouttime as chkouttime',
                'R.nodays as nights',
                'R.adult',
                'R.roomno',
                'R.name as guestname',
                'R.roomrate as tarrif',
                DB::raw('IFNULL(P.RoomRent, 0) AS RoomRent'),
                DB::raw('IFNULL(P.RoomDisc, 0) AS RoomDisc'),
                DB::raw('IFNULL(P.ExtraCharge, 0) AS ExtraCharge'),
                DB::raw('IFNULL(P.Tax, 0) AS Tax'),
                DB::raw('IFNULL(P.Outlet, 0) AS Outlet'),
                DB::raw('IFNULL(P.CreditAmt, 0) AS CreditAmt'),
                DB::raw('IFNULL(P.Backfor, 0) AS Backfor'),
                DB::raw('IFNULL(P.TotalToday, 0) AS TotalToday'),
                DB::raw('IFNULL(P.TotaluptoDate, 0) AS TotaluptoDate'),
                DB::raw('IFNULL(P.Carryfor, 0) AS Carryfor'),
                DB::raw("IFNULL(P.billno, '') AS billno"),
                DB::raw("IFNULL(P.vprefix, '') AS vprefix"),
                DB::raw("IFNULL(P.PaymentDetail, '') AS PaymentDetail")
            )
            ->where('R.propertyid', $propertyid)
            ->whereDate('R.chkindate', '<=', $fromdate)
            ->where(function ($query) use ($fromdate) {
                $query->whereDate('R.chkoutdate', '>=', $fromdate)
                    ->orWhereNull('R.chkoutdate');
            })
            ->orderBy('R.sno1')
            ->orderBy('R.chkindate')
            ->get();
    }

    // ─── Guest Trail — Fetch (AJAX JSON) ──────────────────────────────────────

    public function fetchguesttraildata(Request $request)
    {
        $fromdate = $request->input('fromdate');

        try {
            $resulttmp = $this->guesttrailData($fromdate);

            if ($resulttmp->isEmpty()) {
                return json_encode(['report' => []]);
            }

            $result = [];
            foreach ($resulttmp as $row) {
                $result[] = (object) [
                    'foliono' => $row->foliono,
                    'guestname' => $row->guestname,
                    'checkindate' => $row->checkindate,
                    'checkintime' => $row->checkintime,
                    'chkoutdate' => $row->chkoutdate,
                    'chkouttime' => $row->chkouttime,
                    'roomno' => $row->roomno,
                    'occ' => $row->adult,
                    'nights' => $row->nights,
                    'tarrif' => $row->tarrif,
                    'RoomRent' => $row->RoomRent,
                    'RoomDisc' => $row->RoomDisc,
                    'ExtraCharge' => $row->ExtraCharge,
                    'Tax' => $row->Tax,
                    'Outlet' => $row->Outlet,
                    'CreditAmt' => $row->CreditAmt,
                    'Backfor' => $row->Backfor,
                    'TotalToday' => $row->TotalToday,
                    'TotaluptoDate' => $row->TotaluptoDate,
                    'Carryfor' => $row->Carryfor,
                    'billno' => $row->billno,
                    'vprefix' => $row->vprefix,
                    'PaymentDetail' => $row->PaymentDetail,
                ];
            }

            return json_encode(['report' => $result]);
        } catch (Exception $e) {
            return json_encode(['report' => [], 'error' => $e->getMessage()]);
        }
    }

    // ─── Guest Trail — Print (DomPDF) ─────────────────────────────────────────

    public function printguesttrail(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $data = $this->guesttrailData($fromdate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.guesttrailprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
        ])->setPaper('a4', 'landscape')
            ->stream('guest-trail-'.$fromdate.'.pdf');
    }

    // ─── Guest Trail — Excel Export (PhpSpreadsheet) ──────────────────────────

    public function exportguesttrail(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $data = $this->guesttrailData($fromdate);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $headers = [
                '#',
                'Folio No',
                'Guest Name',
                'Room No',
                'In Date',
                'Out Date',
                'Occ',
                'Nights',
                'Tariff',
                'Room Rent',
                'Room Disc',
                'Extra Charge',
                'Tax',
                'Outlet',
                'Credit Amt',
                'Backfor',
                'Total Today',
                'Total Upto Date',
                'Carryfor',
                'Bill No',
                'Payment Detail',
            ];
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Guest Trail');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Guest Trail');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'Date: '.Carbon::parse($fromdate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 4: Headers
            foreach ($headers as $colIndex => $header) {
                $colLetter = Coordinate::stringFromColumnIndex($colIndex + 1);
                $sheet->setCellValue("{$colLetter}4", $header);
            }
            $sheet->getStyle("A4:{$lastCol}4")->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => [
                    'fillType' => Fill::FILL_SOLID,
                    'color' => ['argb' => 'FF5C2D91'],
                ],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $rowNum = 5;
            $i = 1;
            foreach ($data as $row) {
                $nights = '';
                if ($row->checkindate && $row->chkoutdate) {
                    $diff = Carbon::parse($row->checkindate)->diffInDays(Carbon::parse($row->chkoutdate));
                    $nights = $diff > 0 ? $diff : 1;
                }
                $sheet->setCellValue("A{$rowNum}", $i++);
                $sheet->setCellValue("B{$rowNum}", $row->foliono ?? '');
                $sheet->setCellValue("C{$rowNum}", $row->guestname ?? '');
                $sheet->setCellValue("D{$rowNum}", $row->roomno ?? '');
                $sheet->setCellValue("E{$rowNum}", $row->checkindate ? Carbon::parse($row->checkindate)->format('d/m/Y') : '');
                $sheet->setCellValue("F{$rowNum}", $row->chkoutdate ? Carbon::parse($row->chkoutdate)->format('d/m/Y') : '');
                $sheet->setCellValue("G{$rowNum}", $row->adult ?? '');
                $sheet->setCellValue("H{$rowNum}", $nights);
                $sheet->setCellValue("I{$rowNum}", $row->tarrif ?? 0);
                $sheet->setCellValue("J{$rowNum}", $row->RoomRent ?? 0);
                $sheet->setCellValue("K{$rowNum}", $row->RoomDisc ?? 0);
                $sheet->setCellValue("L{$rowNum}", $row->ExtraCharge ?? 0);
                $sheet->setCellValue("M{$rowNum}", $row->Tax ?? 0);
                $sheet->setCellValue("N{$rowNum}", $row->Outlet ?? 0);
                $sheet->setCellValue("O{$rowNum}", $row->CreditAmt ?? 0);
                $sheet->setCellValue("P{$rowNum}", $row->Backfor ?? 0);
                $sheet->setCellValue("Q{$rowNum}", $row->TotalToday ?? 0);
                $sheet->setCellValue("R{$rowNum}", $row->TotaluptoDate ?? 0);
                $sheet->setCellValue("S{$rowNum}", $row->Carryfor ?? 0);
                $sheet->setCellValue("T{$rowNum}", $row->billno ?? '');
                $sheet->setCellValue("U{$rowNum}", $row->PaymentDetail ?? '');

                $sheet->getStyle("A{$rowNum}:{$lastCol}{$rowNum}")->applyFromArray([
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                ]);

                $rowNum++;
            }

            // Auto-width
            foreach (range('A', $lastCol) as $col) {
                $sheet->getColumnDimension($col)->setAutoSize(true);
            }

            // Download
            $filename = 'Guest_Trail_'.Carbon::parse($fromdate)->format('Ymd').'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
            $writer->save('php://output');
            exit;
        } catch (Exception $e) {
            return redirect()->back()->with('error', 'Export failed: '.$e->getMessage());
        }
    }

    // ─── Guest Trail — Load Page ──────────────────────────────────────────────

    public function guesttrail(Request $request)
    {
        return view('property.frontoffice.guesttrail');
    }

    public function lostfoundregister()
    {
        return view('property.lostfoundregister');
    }

    public function fetchlostfounddata(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $propertyid = $this->propertyid;

        $query = DB::table('lostfound as lf')
            ->leftJoin('housekeeparmast as hk', function ($j) use ($propertyid) {
                $j->on('lf.foundby', '=', 'hk.sn')
                    ->where('hk.propertyid', '=', $propertyid);
            })
            ->select(
                'lf.vno',
                'lf.founddate',
                'lf.foundtime',
                'lf.foundlocation',
                'lf.roomno',
                'lf.itemname',
                'lf.brandname',
                'lf.itemcondition',
                DB::raw("CASE WHEN lf.foundby > 0 THEN COALESCE(hk.name, CAST(lf.foundby AS CHAR)) ELSE '' END as foundby"),
                'lf.storagelocation',
                'lf.status',
                'lf.claimby',
                'lf.receivedby',
                'lf.claimmoblieno',
                'lf.claimemail',
                'lf.claimremark',
                'lf.couiername',
                'lf.couierdocno'
            )
            ->where('lf.propertyid', $propertyid)
            ->whereIn('lf.status', ['Found', 'Claimed']);

        if ($fromdate) {
            $query->whereDate('founddate', '>=', $fromdate);
        }
        if ($todate) {
            $query->whereDate('founddate', '<=', $todate);
        }

        $query->orderBy('founddate', 'desc');

        $result = $query->get();

        return response()->json($result);
    }

    public function printlostfoundregister(Request $request)
    {
        $fromdate = $request->query('fromdate');
        $todate = $request->query('todate');
        $propertyid = $this->propertyid;

        $query = DB::table('lostfound as lf')
            ->leftJoin('housekeeparmast as hk', function ($j) use ($propertyid) {
                $j->on('lf.foundby', '=', 'hk.sn')
                    ->where('hk.propertyid', '=', $propertyid);
            })
            ->select(
                'lf.vno',
                'lf.founddate',
                'lf.foundtime',
                'lf.foundlocation',
                'lf.roomno',
                'lf.itemname',
                'lf.brandname',
                'lf.itemcondition',
                DB::raw("CASE WHEN lf.foundby > 0 THEN COALESCE(hk.name, CAST(lf.foundby AS CHAR)) ELSE '' END as foundby"),
                'lf.storagelocation',
                'lf.status',
                'lf.claimby',
                'lf.receivedby',
                'lf.claimmoblieno',
                'lf.claimemail',
                'lf.claimremark',
                'lf.couiername',
                'lf.couierdocno'
            )
            ->where('lf.propertyid', $propertyid)
            ->whereIn('lf.status', ['Found', 'Claimed']);

        if ($fromdate) {
            $query->whereDate('founddate', '>=', $fromdate);
        }
        if ($todate) {
            $query->whereDate('founddate', '<=', $todate);
        }

        $query->orderBy('founddate', 'desc');
        $data = $query->get();

        $company = Companyreg::where('propertyid', $propertyid)->first();

        $pdf = Pdf::loadView('property.print.lostfoundregisterprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('lost-found-register.pdf');
    }

    public function exportlostfoundexcel(Request $request)
    {
        $fromdate = $request->query('fromdate');
        $todate = $request->query('todate');
        $propertyid = $this->propertyid;

        $query = DB::table('lostfound as lf')
            ->leftJoin('housekeeparmast as hk', function ($j) use ($propertyid) {
                $j->on('lf.foundby', '=', 'hk.sn')
                    ->where('hk.propertyid', '=', $propertyid);
            })
            ->select(
                'lf.vno',
                'lf.founddate',
                'lf.foundtime',
                'lf.foundlocation',
                'lf.roomno',
                'lf.itemname',
                'lf.brandname',
                'lf.itemcondition',
                DB::raw("CASE WHEN lf.foundby > 0 THEN COALESCE(hk.name, CAST(lf.foundby AS CHAR)) ELSE '' END as foundby"),
                'lf.storagelocation',
                'lf.status',
                'lf.claimby',
                'lf.receivedby',
                'lf.claimmoblieno',
                'lf.claimemail',
                'lf.claimremark',
                'lf.couiername',
                'lf.couierdocno'
            )
            ->where('lf.propertyid', $propertyid)
            ->whereIn('lf.status', ['Found', 'Claimed']);

        if ($fromdate) {
            $query->whereDate('founddate', '>=', $fromdate);
        }
        if ($todate) {
            $query->whereDate('founddate', '<=', $todate);
        }

        $query->orderBy('founddate', 'desc');
        $data = $query->get();

        $company = Companyreg::where('propertyid', $propertyid)->first();

        $spreadsheet = new Spreadsheet;
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Lost & Found Register');

        $lastCol = 'S';

        $sheet->mergeCells('A1:'.$lastCol.'1');
        $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
        $sheet->getStyle('A1')->applyFromArray([
            'font' => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $sheet->mergeCells('A2:'.$lastCol.'2');
        $sheet->setCellValue('A2', 'Lost & Found Register');
        $sheet->getStyle('A2')->applyFromArray([
            'font' => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $dateRange = '';
        if ($fromdate && $todate) {
            $dateRange = 'From: '.date('d-m-Y', strtotime($fromdate)).' To: '.date('d-m-Y', strtotime($todate));
        } elseif ($fromdate) {
            $dateRange = 'From: '.date('d-m-Y', strtotime($fromdate));
        } elseif ($todate) {
            $dateRange = 'To: '.date('d-m-Y', strtotime($todate));
        }
        $sheet->mergeCells('A3:'.$lastCol.'3');
        $sheet->setCellValue('A3', $dateRange);
        $sheet->getStyle('A3')->applyFromArray([
            'font' => ['size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        $headers = [
            '#',
            'Tag No',
            'Found Date',
            'Found Time',
            'Found Location',
            'Room No',
            'Item Name',
            'Brand',
            'Condition',
            'Found By',
            'Storage Location',
            'Status',
            'Claim By',
            'Received By',
            'Claim Mobile',
            'Claim Email',
            'Claim Remark',
            'Courier Name',
            'Courier Doc No',
        ];
        $headerRow = 5;
        foreach ($headers as $i => $h) {
            $col = Coordinate::stringFromColumnIndex($i + 1);
            $sheet->setCellValue($col.$headerRow, $h);
        }
        $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => [
                'horizontal' => Alignment::HORIZONTAL_CENTER,
                'vertical' => Alignment::VERTICAL_CENTER,
            ],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        $currentRow = $headerRow + 1;
        foreach ($data as $i => $row) {
            $tagno = ! empty($row->vno) ? 'LF-'.str_pad((int) $row->vno, 2, '0', STR_PAD_LEFT) : '';

            $sheet->setCellValue('A'.$currentRow, $i + 1);
            $sheet->setCellValue('B'.$currentRow, $tagno);
            $sheet->setCellValue('C'.$currentRow, $row->founddate ? date('d-m-Y', strtotime($row->founddate)) : '');
            $sheet->setCellValue('D'.$currentRow, $row->foundtime ?? '');
            $sheet->setCellValue('E'.$currentRow, $row->foundlocation ?? '');
            $sheet->setCellValue('F'.$currentRow, $row->roomno ?? '');
            $sheet->setCellValue('G'.$currentRow, $row->itemname ?? '');
            $sheet->setCellValue('H'.$currentRow, $row->brandname ?? '');
            $sheet->setCellValue('I'.$currentRow, $row->itemcondition ?? '');
            $sheet->setCellValue('J'.$currentRow, $row->foundby ?? '');
            $sheet->setCellValue('K'.$currentRow, $row->storagelocation ?? '');
            $sheet->setCellValue('L'.$currentRow, $row->status ?? '');
            $sheet->setCellValue('M'.$currentRow, $row->claimby ?? '');
            $sheet->setCellValue('N'.$currentRow, $row->receivedby ?? '');
            $sheet->setCellValue('O'.$currentRow, $row->claimmoblieno ?? '');
            $sheet->setCellValue('P'.$currentRow, $row->claimemail ?? '');
            $sheet->setCellValue('Q'.$currentRow, $row->claimremark ?? '');
            $sheet->setCellValue('R'.$currentRow, $row->couiername ?? '');
            $sheet->setCellValue('S'.$currentRow, $row->couierdocno ?? '');

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'borders' => ['allBorders' => [
                    'borderStyle' => Border::BORDER_THIN,
                    'color' => ['argb' => 'FFDDDDDD'],
                ]],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);
            if ($i % 2 === 1) {
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                    ->getFill()->setFillType(Fill::FILL_SOLID)
                    ->getStartColor()->setARGB('FFF2F2F2');
            }

            $currentRow++;
        }

        $sheet->getStyle('A'.$headerRow.':A'.($currentRow - 1))->applyFromArray([
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        foreach (range('A', $lastCol) as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }

        $writer = new Xlsx($spreadsheet);
        $fileName = 'Lost-Found-Register.xlsx';

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'.$fileName.'"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit;
    }

    public function billreprintsubmit(Request $request)
    {
        $validate = $request->validate([
            'billno' => 'required',
            'docid' => 'required',
            'folionodocid' => 'required',
            'sno1' => 'required',
        ]);

        $sno1 = $request->input('sno1');
        $folionodocid = $request->input('folionodocid');
        $count = $request->input('rowcount');
        $totalbalance = 0.00;
        $totalroomcharge = 0.00;
        $billprintingsummerised = $request->input('billprintingsummerised');
        $taxsummary = $request->input('taxsummary');
        $invoiceno = $request->input('invoiceno');

        for ($i = 1; $i <= $count; $i++) {
            $roomcharge = $request->input('room_charge_'.$i);
            $paydocid = $request->input('paydocid'.$i);
            $paysno = $request->input('paysno'.$i);
            $paysnoone = $request->input('paysnoone'.$i);
            if ($roomcharge !== null) {
                $updata = [
                    'amtdr' => $request->input('room_charge_'.$i),
                    'onamt' => $request->input('payonamt'.$i),
                    'billamount' => $request->input('paybillamt'.$i),
                    'updated_at' => $this->currenttime,
                ];
                // Log::info('Bill Reprint Update Data: ', $updata);

                Paycharge::where('propertyid', $this->propertyid)->where('docid', $paydocid)->where('sno', $paysno)
                    ->where('sno1', $paysnoone)->update($updata);
            }
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->where('role', 'Property')->first();

        $guest = RoomOcc::select('roomocc.*', 'guestprof.mobile_no', 'guestprof.guestsign')
            ->leftJoin('guestprof', function ($join) {
                $join->on('guestprof.guestcode', '=', 'roomocc.guestprof');
                // ->on('guestprof.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $folionodocid)
            ->where('roomocc.sno1', $sno1)
            ->first();

        // $paycharger = Paycharge::where('propertyid', $this->propertyid)->where('docid', $paydocid)->where('sno', $paysno)
        //    ->where('sno1', $paysnoone)->first();

        $paycharger = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $folionodocid)
            ->where('sno1', $sno1)->whereNot('billno', '0')->first();

        $chargedt = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $folionodocid)
            ->where('sno1', $sno1)->get();

        $paycode = ['RMCH'.$this->propertyid, 'MEGE'.$this->propertyid];
        foreach ($chargedt as $row) {
            $totalbalance += $row->amtdr;
        }

        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $paycode = ['RMCH'.$this->propertyid, 'MEGE'.$this->propertyid];

        $igncode = [];
        $settlecodes = [];
        $revmasttax = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'T')->where('type', 'Cr')->get();
        $revmastpay = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->where('type', 'Dr')->get();

        foreach ($revmasttax as $row) {
            $igncode[] = $row->rev_code;
        }

        foreach ($revmastpay as $row) {
            $settlecodes[] = $row->rev_code;
        }

        $charged = [];
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $folionodocid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $cond = ['paycharge.msno1' => $rocc->sno1];
        } else {
            $cond = ['paycharge.sno1' => $sno1];
        }
        if ($enviro->billprintingsummerised == 'Y') {
            $charged1 = Paycharge::select(
                'paycharge.id',
                'paycharge.vdate',
                'paycharge.vtype',
                'paycharge.vno',
                'paycharge.comments',
                'paycharge.roomno',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.amtcr) as amtcr'),
                'plan_mast.name as plankanaam',
                'paycharge.split',
                'paycharge.paycode'
            )
                ->leftJoin('roomocc', function ($join) {
                    $join->on('roomocc.docid', '=', 'paycharge.folionodocid')
                        ->on('roomocc.sno1', '=', 'paycharge.sno1')
                        ->where('roomocc.type', 'O')
                        ->where('roomocc.propertyid', $this->propertyid)
                        ->whereRaw("
                  roomocc.sno = (
                     SELECT MAX(ro.sno)
                     FROM roomocc ro
                     WHERE ro.docid = paycharge.folionodocid
                        AND ro.sno1 = paycharge.sno1
                        AND ro.type = 'O'
                        AND ro.propertyid = ?
                  )
            ", [$this->propertyid]);
                })
                ->leftJoin('plan_mast', function ($join) {
                    $join->on('roomocc.plancode', '=', 'plan_mast.pcode')
                        ->where('plan_mast.propertyid', $this->propertyid);
                })
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $folionodocid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->whereIn('paycharge.paycode', $paycode)
                ->groupBy('paycharge.roomno', 'paycharge.vdate')
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            // Log::info('charged1sum: ' . $charged1->sum('amtdr'));

            foreach ($charged1 as $row) {
                $totalroomcharge += $row->amtdr;
                $charged[] = [
                    'sn' => $row->id,
                    'vdate' => $row->vdate,
                    'vtype' => $row->vtype,
                    'vno' => $row->vno,
                    'comments' => $row->plankanaam.' For Room '.$row->roomno,
                    'amtdr' => $row->amtdr,
                    'amtcr' => $row->amtcr,
                    'split' => $row->split,
                    'paycode' => $row->paycode,
                ];
            }

            $charged2 = Paycharge::select(
                'id',
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->where($cond)
                ->whereNotIn('paycharge.paycode', $paycode)
                ->whereNot('paycharge.paycode', 'ROFF'.$this->propertyid)
                ->whereNull('paycharge.modeset')
                ->whereNotIn('paycharge.paycode', $igncode)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            foreach ($charged2 as $row2) {
                $totalroomcharge += $row2->amtdr;
                $charged[] = [
                    'vdate' => $row2->vdate,
                    'vtype' => $row2->vtype,
                    'vno' => $row2->vno,
                    'comments' => $row2->comments,
                    'amtdr' => $row2->amtdr,
                    'amtcr' => $row2->amtcr,
                    'split' => $row2->split,
                    'paycode' => $row2->paycode,
                ];
            }
        } else {
            $charged = Paycharge::select(
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->whereNot('paycode', 'ROFF'.$this->propertyid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            $totalroomcharge = $charged->sum('amtdr');
        }

        return response()->json([
            'company' => $company,
            'guest' => $guest,
            'paycharger' => $paycharger,
            'totalbalance' => $totalbalance,
            'totalroomcharge' => $totalroomcharge,
            'billprintingsummerised' => $billprintingsummerised,
            'charged' => $charged,
            'taxsummary' => $taxsummary,
            'invoiceno' => $invoiceno,
            'igncode' => $igncode,
        ]);
    }

    public function checkinreg(Request $request)
    {
        $permission = revokeopen(141211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;

        $data = DB::table('guestfolio')->where('propertyid', $this->propertyid)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.checkinreg', [
            'data' => $data,
            'fromdate' => $fromdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function fetchcheckinregdata(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        // $checkval = Companyreg::where('propertyid', $this->propertyid)->first();
        // if ($fromdate < $checkval->start_dt) {
        //    return json_encode('1');
        // } else if ($todate > $checkval->end_dt) {
        //    return json_encode('2');
        // }
        $guestfolioData = Guestfolio::select(
            'guestfolio.Docid AS FolionoDocid',
            'guestfolio.folio_no',
            DB::raw('CASE WHEN guestfolio.mFoliono = 0 THEN guestfolio.folio_no ELSE guestfolio.mFoliono END AS FolioNo'),
            'guestprof.Name',
            'guestfolio.add1',
            'guestfolio.add2',
            'city_live.cityname AS city',
            'guestprof.nationality',
            'guestprof.mobile_no',
            'roomocc.RoomNo',
            DB::raw('IFNULL(roomocc.adult + roomocc.children, 0) AS TotalGuest'),
            'roomocc.RoomRate',
            'roomocc.planamt',
            'roomocc.ChkinDate',
            'roomocc.ChkinTime',
            'roomocc.chkoutdate',
            'roomocc.chkouttime',
            'city_from.cityname AS arrfrom',
            'city_to.cityname AS destination',
            'guestfolio.PurVisit',
            DB::raw('(SELECT SUM(paycharge.amtcr) FROM paycharge WHERE paycharge.folionodocid = guestfolio.Docid AND paycharge.modeset != "S") AS advance'),
            'guestfolio.U_Name',
            'subgroup.name AS travelagent'
        )
            ->join('roomocc', 'roomocc.Docid', '=', 'guestfolio.Docid')
            ->join('guestprof', 'guestprof.guestcode', '=', 'guestfolio.guestprof')
            ->leftJoin('countries', 'guestprof.Nationality', '=', 'countries.country_code')
            ->leftJoin('cities AS city_live', 'city_live.city_code', '=', 'guestfolio.city')
            ->leftJoin('cities AS city_from', 'city_from.city_code', '=', 'guestfolio.arrfrom')
            ->leftJoin('cities AS city_to', 'city_to.city_code', '=', 'guestfolio.destination')
            ->leftjoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.travelagent')
            ->whereBetween('guestfolio.vdate', [$fromdate, $todate])
            // ->where('roomocc.Sno', 1)
            ->where('guestfolio.propertyid', $this->propertyid)
            ->groupBy('roomocc.docid', 'roomocc.sno1')
            ->orderBy('roomocc.foliono', 'DESC')
            ->get();

        return json_encode($guestfolioData);
    }

    public function printcheckinreg(Request $request)
    {
        $permission = revokeopen(141211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $fromdate);

        $guestfolioData = Guestfolio::select(
            'guestfolio.Docid AS FolionoDocid',
            'guestfolio.folio_no',
            DB::raw('CASE WHEN guestfolio.mFoliono = 0 THEN guestfolio.folio_no ELSE guestfolio.mFoliono END AS FolioNo'),
            'guestprof.Name',
            'guestfolio.add1',
            'guestfolio.add2',
            'city_live.cityname AS city',
            'guestprof.nationality',
            'guestprof.mobile_no',
            'roomocc.RoomNo',
            DB::raw('IFNULL(roomocc.adult + roomocc.children, 0) AS TotalGuest'),
            'roomocc.RoomRate',
            'roomocc.ChkinDate',
            'roomocc.ChkinTime',
            'roomocc.chkoutdate',
            'roomocc.chkouttime',
            'city_from.cityname AS arrfrom',
            'city_to.cityname AS destination',
            'guestfolio.PurVisit',
            DB::raw('(SELECT SUM(paycharge.amtcr) FROM paycharge WHERE paycharge.folionodocid = guestfolio.Docid AND paycharge.modeset != "S") AS advance'),
            'guestfolio.U_Name',
            'subgroup.name AS travelagent'
        )
            ->join('roomocc', 'roomocc.Docid', '=', 'guestfolio.Docid')
            ->join('guestprof', 'guestprof.guestcode', '=', 'guestfolio.guestprof')
            ->leftJoin('countries', 'guestprof.Nationality', '=', 'countries.country_code')
            ->leftJoin('cities AS city_live', 'city_live.city_code', '=', 'guestfolio.city')
            ->leftJoin('cities AS city_from', 'city_from.city_code', '=', 'guestfolio.arrfrom')
            ->leftJoin('cities AS city_to', 'city_to.city_code', '=', 'guestfolio.destination')
            ->leftjoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.travelagent')
            ->whereBetween('guestfolio.vdate', [$fromdate, $todate])
            ->where('guestfolio.propertyid', $this->propertyid)
            ->groupBy('roomocc.docid', 'roomocc.sno1')
            ->orderBy('roomocc.foliono', 'DESC')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $pdf = Pdf::loadView('property.print.checkinregprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $guestfolioData,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('checkin-register-'.$fromdate.'-'.$todate.'.pdf');
    }

    public function exportcheckinreg(Request $request)
    {
        $permission = revokeopen(141211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $fromdate);

            $guestfolioData = Guestfolio::select(
                'guestfolio.Docid AS FolionoDocid',
                'guestfolio.folio_no',
                DB::raw('CASE WHEN guestfolio.mFoliono = 0 THEN guestfolio.folio_no ELSE guestfolio.mFoliono END AS FolioNo'),
                'guestprof.Name',
                'guestfolio.add1',
                'guestfolio.add2',
                'city_live.cityname AS city',
                'guestprof.nationality',
                'guestprof.mobile_no',
                'roomocc.RoomNo',
                DB::raw('IFNULL(roomocc.adult + roomocc.children, 0) AS TotalGuest'),
                'roomocc.RoomRate',
                'roomocc.ChkinDate',
                'roomocc.ChkinTime',
                'roomocc.chkoutdate',
                'roomocc.chkouttime',
                'city_from.cityname AS arrfrom',
                'city_to.cityname AS destination',
                'guestfolio.PurVisit',
                DB::raw('(SELECT SUM(paycharge.amtcr) FROM paycharge WHERE paycharge.folionodocid = guestfolio.Docid AND paycharge.modeset != "S") AS advance'),
                'guestfolio.U_Name',
                'subgroup.name AS travelagent'
            )
                ->join('roomocc', 'roomocc.Docid', '=', 'guestfolio.Docid')
                ->join('guestprof', 'guestprof.guestcode', '=', 'guestfolio.guestprof')
                ->leftJoin('countries', 'guestprof.Nationality', '=', 'countries.country_code')
                ->leftJoin('cities AS city_live', 'city_live.city_code', '=', 'guestfolio.city')
                ->leftJoin('cities AS city_from', 'city_from.city_code', '=', 'guestfolio.arrfrom')
                ->leftJoin('cities AS city_to', 'city_to.city_code', '=', 'guestfolio.destination')
                ->leftjoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.travelagent')
                ->whereBetween('guestfolio.vdate', [$fromdate, $todate])
                ->where('guestfolio.propertyid', $this->propertyid)
                ->groupBy('roomocc.docid', 'roomocc.sno1')
                ->orderBy('roomocc.foliono', 'DESC')
                ->get();

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

            $headers = [
                'GRC No.',
                'Guest Name',
                'Address',
                'City',
                'Nationality',
                'Mobile No.',
                'Room',
                'Occ',
                'R Rate',
                'In Date',
                'Out Date',
                'Arr From/Dest.',
                'Purpose Of Visit',
                'Advance',
                'Travel',
                'User',
            ];
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Checkin Register');

            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? '');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', trim(($company->address1 ?? '').' '.($company->address2 ?? '')));
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A3:{$lastCol}3");
            $addressLine = ($statename ?? '').' - '.($company->city ?? '').' - '.($company->pin ?? '');
            $sheet->setCellValue('A3', $addressLine);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A4:{$lastCol}4");
            $sheet->setCellValue('A4', 'Check In Register');
            $sheet->getStyle('A4')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A5:{$lastCol}5");
            $sheet->setCellValue('A5', 'From Date: '.date('d/m/Y', strtotime($fromdate)).' To Date: '.date('d/m/Y', strtotime($todate)));
            $sheet->getStyle('A5')->applyFromArray([
                'font' => ['size' => 9],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_LEFT],
            ]);

            $headerRow = 6;
            foreach ($headers as $colIndex => $header) {
                $colLetter = Coordinate::stringFromColumnIndex($colIndex + 1);
                $sheet->setCellValue($colLetter.$headerRow, $header);
            }
            $sheet->getStyle("A{$headerRow}:{$lastCol}{$headerRow}")->applyFromArray([
                'font' => ['bold' => true, 'color' => ['rgb' => 'FFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => '5C2D91']],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            $rowNum = $headerRow + 1;
            $totalrooms = 0;
            $totalguests = 0;
            $totaladvance = 0;
            $totalroomrate = 0;

            foreach ($guestfolioData as $item) {
                $totalrooms++;
                $totalguests += (int) ($item->TotalGuest ?? 0);
                $totalroomrate += (float) ($item->RoomRate ?? 0);
                $totaladvance += (float) ($item->advance ?? 0);

                $address = trim(($item->add1 ?? '').' '.($item->add2 ?? ''));
                $indate = $item->ChkinDate ? date('d/m/Y', strtotime($item->ChkinDate)) : '';
                $outdate = $item->chkoutdate ? date('d/m/Y', strtotime($item->chkoutdate)) : '';
                $intime = $item->ChkinTime ? substr($item->ChkinTime, 0, 5) : '';
                $outtime = $item->chkouttime ? substr($item->chkouttime, 0, 5) : '';
                $arrfromdest = trim(($item->arrfrom ?? '').'/'.($item->destination ?? ''), '/');

                $sheet->setCellValue('A'.$rowNum, $item->folio_no ?? '');
                $sheet->setCellValue('B'.$rowNum, $item->Name ?? '');
                $sheet->setCellValue('C'.$rowNum, $address);
                $sheet->setCellValue('D'.$rowNum, $item->city ?? '');
                $sheet->setCellValue('E'.$rowNum, $item->nationality ?? '');
                $sheet->setCellValue('F'.$rowNum, $item->mobile_no ?? '');
                $sheet->setCellValue('G'.$rowNum, $item->RoomNo ?? '');
                $sheet->setCellValue('H'.$rowNum, $item->TotalGuest ?? 0);
                $sheet->setCellValue('I'.$rowNum, $item->RoomRate ?? 0);
                $sheet->setCellValue('J'.$rowNum, trim($indate.' '.$intime));
                $sheet->setCellValue('K'.$rowNum, trim($outdate.' '.$outtime));
                $sheet->setCellValue('L'.$rowNum, $arrfromdest);
                $sheet->setCellValue('M'.$rowNum, $item->PurVisit ?? '');
                $sheet->setCellValue('N'.$rowNum, $item->advance ?? 0);
                $sheet->setCellValue('O'.$rowNum, $item->travelagent ?? '');
                $sheet->setCellValue('P'.$rowNum, $item->U_Name ?? '');
                $rowNum++;
            }

            $totalRow = $rowNum;
            $sheet->mergeCells("A{$totalRow}:F{$totalRow}");
            $sheet->setCellValue("A{$totalRow}", 'Total');
            $sheet->setCellValue("G{$totalRow}", $totalrooms);
            $sheet->setCellValue("H{$totalRow}", $totalguests);
            $sheet->setCellValue("I{$totalRow}", number_format($totalroomrate, 2, '.', ''));
            $sheet->setCellValue("N{$totalRow}", number_format($totaladvance, 2, '.', ''));

            $sheet->getStyle("A{$totalRow}:{$lastCol}{$totalRow}")->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => 'D3D3D3']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            foreach (range('A', $lastCol) as $col) {
                $sheet->getColumnDimension($col)->setAutoSize(true);
            }

            $writer = new Xlsx($spreadsheet);
            $filename = 'Checkin_Register_'.date('YmdHis').'.xlsx';
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="'.$filename.'"');
            header('Cache-Control: max-age=0');
            $writer->save('php://output');
            exit;
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function cashierreport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $revheading = Revmast::where('propertyid', $this->propertyid)
            ->where('field_type', 'P')->get();
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);

        return view('property.cashierreport', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'distinctuname' => $distinctuname,
            'company' => $company,
            'revheading' => $revheading,
        ]);
    }

    private function cashierReportData($fromdate, $todate, $username = null)
    {
        $revheadingArray = [];
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        foreach ($revheading as $row) {
            $revheadingArray[] = $row->pay_type;
        }

        $firstQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->leftJoin('guestfolio as GF', 'PC.FOLIONODOCID', '=', 'GF.Docid')
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'PC.comp_code')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                DB::raw('MAX(RO.roomno) as RoomNo'),
                DB::raw('MAX(COALESCE(RO.name, GF.name)) as Name'),
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS U_NAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw('MAX(PC.comp_code) AS comp_code'),
                DB::raw('MAX(SG.name) AS paycompanyname'),
                DB::raw("'PAYMENT RECD.' AS DEPARTNAME"),
                DB::raw('1 AS AA'),
                DB::raw('MAX(CASE WHEN PC.VTYPE IN ("CHK","CHKTAX") THEN "CHEQUE" ELSE PC.VTYPE END) AS Regtype'),
                DB::raw('MAX(PY.name) AS modeset')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES']);
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray);

        if ($username && $username !== '') {
            $usernameList = array_filter(array_map('trim', explode(',', $username)));
            $firstQuery->whereIn('PC.U_NAME', $usernameList);
        }

        $firstQuery = $firstQuery->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) > 0');

        $secondQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->leftJoin('guestfolio as GF', 'PC.FOLIONODOCID', '=', 'GF.Docid')
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'PC.comp_code')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                DB::raw('MAX(RO.roomno) as RoomNo'),
                DB::raw('MAX(COALESCE(RO.name, GF.name)) as Name'),
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS U_NAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw('MAX(PC.comp_code) AS comp_code'),
                DB::raw('MAX(SG.name) AS paycompanyname'),
                DB::raw("'PAYMENT MADE' AS DEPARTNAME"),
                DB::raw('2 AS AA'),
                DB::raw('MAX(CASE WHEN PC.VTYPE IN ("CHK","CHKTAX") THEN "CHEQUE" ELSE PC.VTYPE END) AS Regtype'),
                DB::raw('MAX(PY.name) AS modeset')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES']);
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray);

        if ($username && $username !== '') {
            $usernameList = array_filter(array_map('trim', explode(',', $username)));
            $secondQuery->whereIn('PC.U_NAME', $usernameList);
        }

        $secondQuery = $secondQuery->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) < 0');

        $union = $firstQuery->union($secondQuery);

        $results = DB::table(DB::raw("({$union->toSql()}) as union_result"))
            ->mergeBindings($union)
            ->orderBy('VDATE', 'ASC')
            ->orderBy('AA', 'ASC')
            ->orderBy('VNO', 'ASC')
            ->get();

        // Build pivoted data
        $pivotData = [];
        foreach ($results as $row) {
            $key = $row->DOCID.'|'.$row->SNO.'|'.$row->SNO1.'|'.$row->AA;
            if (! isset($pivotData[$key])) {
                $pivotData[$key] = [
                    'billno' => $row->VNO ?? '',
                    'folio_no' => $row->FOLIONO ?? '',
                    'Name' => $row->Name ?? '',
                    'RoomNo' => $row->RoomNo ?? '',
                    'Regtype' => $row->Regtype ?? '',
                    'modeset' => $row->modeset ?? '',
                    'U_NAME' => $row->U_NAME ?? '',
                    'Total' => 0,
                ];
                foreach ($revheading as $rh) {
                    $pivotData[$key][strtolower($rh->name)] = 0;
                }
            }
            $amount = abs($row->NetSale ?? 0);
            $pivotData[$key]['Total'] += $amount;
            $modesetLower = strtolower($row->modeset ?? '');
            if (array_key_exists($modesetLower, $pivotData[$key])) {
                $pivotData[$key][$modesetLower] += $amount;
            } elseif (! empty($row->modeset)) {
                $descKey = strtolower($row->modeset);
                // try to match
                foreach ($revheading as $rh) {
                    if (strtolower($rh->name) == $descKey) {
                        $pivotData[$key][$descKey] += $amount;
                        break;
                    }
                }
            }
        }

        return collect(array_map(fn ($r) => (object) $r, $pivotData))->values();
    }

    public function printcashierreport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $fromdate);
        $username = $request->query('username', null);

        $data = $this->cashierReportData($fromdate, $todate, $username);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();

        $pdf = Pdf::loadView('property.print.cashierreportprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
            'username' => $username,
            'revheading' => $revheading,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('cashier-report-'.$fromdate.'-'.$todate.'.pdf');
    }

    public function exportcashierreport(Request $request)
    {
        $permission = revokeopen(141213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $fromdate);
            $username = $request->query('username', null);

            $data = $this->cashierReportData($fromdate, $todate, $username);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();

            $headers = ['Bill No', 'Folio No', 'Guest Name', 'Room No', 'Reg Type', 'Payment Mode'];
            foreach ($revheading as $rh) {
                $headers[] = strtoupper($rh->name);
            }
            $headers[] = 'Total';

            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Cashier Report');

            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? '');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Cashier Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From Date: '.date('d/m/Y', strtotime($fromdate)).' To Date: '.date('d/m/Y', strtotime($todate)));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 9],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            $headerRow = 4;
            foreach ($headers as $colIndex => $header) {
                $colLetter = Coordinate::stringFromColumnIndex($colIndex + 1);
                $sheet->setCellValue($colLetter.$headerRow, $header);
            }
            $sheet->getStyle("A{$headerRow}:{$lastCol}{$headerRow}")->applyFromArray([
                'font' => ['bold' => true, 'color' => ['rgb' => 'FFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => '5C2D91']],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            $rowNum = $headerRow + 1;
            $revTotals = array_fill_keys($revheading->pluck('name')->all(), 0);
            $totalAmount = 0;

            foreach ($data as $row) {
                $totalAmount += (float) ($row['Total'] ?? 0);
                $sheet->setCellValue('A'.$rowNum, $row['billno'] ?? '');
                $sheet->setCellValue('B'.$rowNum, $row['folio_no'] ?? '');
                $sheet->setCellValue('C'.$rowNum, $row['Name'] ?? '');
                $sheet->setCellValue('D'.$rowNum, $row['RoomNo'] ?? '');
                $sheet->setCellValue('E'.$rowNum, $row['Regtype'] ?? '');
                $sheet->setCellValue('F'.$rowNum, $row['modeset'] ?? '');
                $colIdx = 7;
                foreach ($revheading as $rh) {
                    $key = strtolower($rh->name);
                    $val = $row[$key] ?? 0;
                    if (isset($revTotals[$rh->name])) {
                        $revTotals[$rh->name] += (float) $val;
                    }
                    $colLetter = Coordinate::stringFromColumnIndex($colIdx);
                    $sheet->setCellValue($colLetter.$rowNum, $val);
                    $sheet->getStyle($colLetter.$rowNum)->getNumberFormat()->setFormatCode('#,##0.00');
                    $colIdx++;
                }
                $colLetter = Coordinate::stringFromColumnIndex($colIdx);
                $sheet->setCellValue($colLetter.$rowNum, $row['Total'] ?? 0);
                $sheet->getStyle($colLetter.$rowNum)->getNumberFormat()->setFormatCode('#,##0.00');
                $rowNum++;
            }

            $totalRow = $rowNum;
            $sheet->mergeCells("A{$totalRow}:F{$totalRow}");
            $sheet->setCellValue("A{$totalRow}", 'Total');
            $colIdx = 7;
            foreach ($revheading as $rh) {
                $colLetter = Coordinate::stringFromColumnIndex($colIdx);
                $sheet->setCellValue($colLetter.$totalRow, $revTotals[$rh->name] ?? 0);
                $sheet->getStyle($colLetter.$totalRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $colIdx++;
            }
            $colLetter = Coordinate::stringFromColumnIndex($colIdx);
            $sheet->setCellValue($colLetter.$totalRow, $totalAmount);
            $sheet->getStyle($colLetter.$totalRow)->getNumberFormat()->setFormatCode('#,##0.00');

            $sheet->getStyle("A{$totalRow}:{$lastCol}{$totalRow}")->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => 'D3D3D3']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            foreach (range('A', $lastCol) as $col) {
                $sheet->getColumnDimension($col)->setAutoSize(true);
            }

            $writer = new Xlsx($spreadsheet);
            $filename = 'Cashier_Report_'.date('YmdHis').'.xlsx';
            if (ob_get_length()) {
                ob_end_clean();
            }
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="'.$filename.'"');
            header('Cache-Control: max-age=0');
            $writer->save('php://output');
            exit;
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function fetchusersname(Request $request)
    {
        $distinctuname = Paycharge::where('propertyid', $this->propertyid)->where('modeset', 'S')->distinct('u_name')->get(['u_name']);

        return json_encode($distinctuname);
    }

    public function fetchcashierreportdata(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $revheadingArray = [];
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        foreach ($revheading as $row) {
            $revheadingArray[] = $row->pay_type;
        }

        $firstQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'PC.comp_code')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                'RO.roomno',
                'RO.name as GUESTNAME',
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS UNAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw('MAX(PC.comp_code) AS comp_code'),
                DB::raw('MAX(SG.name) AS paycompanyname'),
                DB::raw("'PAYMENT RECD.' AS DEPARTNAME"),
                DB::raw('1 AS AA')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES']);
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray)
            ->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) > 0');

        $secondQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'PC.comp_code')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                'RO.roomno',
                'RO.name as GUESTNAME',
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS UNAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw('MAX(PC.comp_code) AS comp_code'),
                DB::raw('MAX(SG.name) AS paycompanyname'),
                DB::raw("'PAYMENT MADE' AS DEPARTNAME"),
                DB::raw('2 AS AA')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES']);
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray)
            ->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) < 0');

        $thirdQuery = DB::table('expsheet as E')
            ->select(
                'E.docid',
                DB::raw('1 AS SNO'),
                DB::raw('2 AS SNO1'),
                DB::raw('"" AS FOLIONO'),
                DB::raw('"" AS FOLIONODOCID'),
                DB::raw('"" AS roomno'),
                DB::raw('"" AS GUESTNAME'),
                'E.vdate',
                'E.vtype',
                'E.vno',
                DB::raw('E.cramt AS NetSale'),
                DB::raw('0 AS TipAmt1'),
                DB::raw('"" AS PAYCODE'),
                DB::raw("'Cash' AS PType"),
                'E.u_name AS UNAME',
                'E.remark AS COMMENT',
                DB::raw('"" AS comp_code'),
                DB::raw('"" AS paycompanyname'),
                DB::raw("'MISC.PAYMENT' AS DEPARTNAME"),
                DB::raw('3 AS AA')
            )
            ->whereBetween('E.vdate', [$fromdate, $todate])
            ->where('E.vtype', 'HTEXP')
            ->where('E.propertyid', $this->propertyid)
            ->where('E.cramt', '>', 0);

        $fourthQuery = DB::table('expsheet as E')
            ->select(
                'E.docid',
                DB::raw('1 AS SNO'),
                DB::raw('2 AS SNO1'),
                DB::raw('"" AS FOLIONO'),
                DB::raw('"" AS FOLIONODOCID'),
                DB::raw('"" AS roomno'),
                DB::raw('"" AS GUESTNAME'),
                'E.vdate',
                'E.vtype',
                'E.vno',
                'E.cramt AS NetSale',
                DB::raw('0 AS TipAmt1'),
                DB::raw('"" AS PAYCODE'),
                DB::raw("'Cash' AS PType"),
                'E.u_name AS UNAME',
                'E.remark AS COMMENT',
                DB::raw('"" AS comp_code'),
                DB::raw('"" AS paycompanyname'),
                DB::raw("'MISC.RECEIPT' AS DEPARTNAME"),
                DB::raw('4 AS AA')
            )
            ->whereBetween('E.VDate', [$fromdate, $todate])
            ->where('E.vtype', 'HTSAL')
            ->where('E.propertyid', $this->propertyid)
            ->where('E.cramt', '>', 0);

        $results = $firstQuery->unionAll($secondQuery)
            ->unionAll($thirdQuery)
            ->unionAll($fourthQuery)
            ->orderBy('AA')
            ->orderBy('foliono')
            ->orderBy('VDATE')
            ->orderBy('DOCID')
            ->orderBy('SNO')
            ->get();

        $billnos = Paycharge::where('propertyid', $this->propertyid)
            ->where('billno', '!=', 0)
            ->whereNull('paytype')
            ->get()
            ->keyBy(function ($item) {
                return $item->folionodocid.'_'.$item->sno1;
            });

        $roomnos = RoomOcc::where('propertyid', $this->propertyid)
            ->whereNotNull('type')
            ->get()
            ->keyBy(function ($item) {
                return $item->docid.'_'.$item->sno1;
            });

        foreach ($results as $row) {
            $key = $row->FOLIONODOCID.'_'.$row->SNO1;
            if (isset($roomnos[$key])) {
                $row->roomno = $roomnos[$key]->roomno;
            }
        }

        foreach ($results as $row) {
            $key = $row->FOLIONODOCID.'_'.$row->SNO1;
            if (isset($billnos[$key])) {
                $row->billno = $billnos[$key]->billno;
            } else {
                $row->billno = 'Not Found';
            }
        }

        $paytype = [];
        $distinctpaytypes = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        foreach ($distinctpaytypes as $row) {
            $paytype[] = $row->pay_type;
        }

        $data = [
            'cashierdata' => $results,
            'paytype' => $paytype,
        ];

        return json_encode($data);
    }

    public function fetchcashierreportdata2(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $usernames = json_decode($request->input('unames'));
        // Making array of revheading names
        $revheadingArray = [];
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        foreach ($revheading as $row) {
            $revheadingArray[] = $row->pay_type;
        }

        $propertyId = $this->propertyid;

        $firstQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                'RO.roomno',
                'RO.name as GUESTNAME',
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS UNAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw("'PAYMENT RECD.' AS DEPARTNAME"),
                DB::raw('1 AS AA')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES'])
                        ->where('PC.DbtChkIn', '<>', 'Yes');
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereIn('PC.u_name', $usernames)
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray)
            ->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) > 0');

        $secondQuery = DB::table('paycharge as PC')
            ->leftJoin('revmast as PY', 'PC.PayCode', '=', 'PY.rev_code')
            ->leftJoin('roomocc as RO', 'PC.FOLIONODOCID', '=', 'RO.DOCID')
            ->select(
                'PC.DOCID',
                'PC.SNO',
                'PC.SNO1',
                DB::raw('MAX(PC.FOLIONO) AS FOLIONO'),
                'PC.FOLIONODOCID',
                'RO.roomno',
                'RO.name as GUESTNAME',
                DB::raw('MAX(PC.VDATE) AS VDATE'),
                DB::raw('MAX(PC.VTYPE) AS VTYPE'),
                DB::raw('MAX(PC.VNO) AS VNO'),
                DB::raw('PC.AmtCr - PC.AmtDr AS NetSale'),
                DB::raw('SUM(PC.TipAmt) AS TipAmt1'),
                DB::raw('MAX(PC.PAYCODE) AS PAYCODE'),
                DB::raw('MAX(PC.PayType) AS PType'),
                DB::raw('MAX(PC.U_NAME) AS UNAME'),
                DB::raw('MAX(PC.Comments) AS COMMENT'),
                DB::raw("'PAYMENT MADE' AS DEPARTNAME"),
                DB::raw('2 AS AA')
            )
            ->where(function ($query) {
                $query->where(function ($query) {
                    $query->whereIn('PC.VTYPE', ['ARRES', 'ADRES'])
                        ->where('PC.DbtChkIn', '<>', 'Yes');
                })
                    ->orWhere(function ($query) {
                        $query->whereNotIn('PC.VTYPE', ['ARRES', 'ADRES'])
                            ->where(function ($query) {
                                $query->whereNull('PC.refdocid')
                                    ->orWhere('PC.refdocid', '=', '');
                            });
                    });
            })
            ->where('PC.RESTCODE', 'FOM'.$this->propertyid)
            ->whereIn('PY.field_type', ['P'])
            ->whereIn('PC.u_name', $usernames)
            ->whereNotIn('PC.VTYPE', ['CHK'])
            ->whereBetween('PC.VDate', [$fromdate, $todate])
            ->where('PC.propertyid', $this->propertyid)
            ->whereIn('PC.PAYTYPE', $revheadingArray)
            ->groupBy('PC.DOCID', 'PC.SNO', 'PC.SNO1')
            ->havingRaw('SUM(PC.AmtCr) - SUM(PC.AmtDr) < 0');

        $thirdQuery = DB::table('expsheet as E')
            ->select(
                'E.DOCID',
                DB::raw('1 AS SNO'),
                DB::raw('2 AS SNO1'),
                DB::raw('"" AS FOLIONO'),
                DB::raw('"" AS FOLIONODOCID'),
                DB::raw('"" AS roomno'),
                DB::raw('"" AS GUESTNAME'),
                'E.VDATE',
                'E.VTYPE',
                'E.VNO',
                DB::raw('-E.Amount AS NetSale'),
                DB::raw('0 AS TipAmt1'),
                DB::raw('"" AS PAYCODE'),
                DB::raw("'Cash' AS PType"),
                'E.U_NAME AS UNAME',
                'E.Remarks AS COMMENT',
                DB::raw("'MISC.PAYMENT' AS DEPARTNAME"),
                DB::raw('3 AS AA')
            )
            ->whereBetween('E.VDate', [$fromdate, $todate])
            ->where('E.VTYPE', 'HTEXP')
            ->where('E.Amount', '>', 0);

        $fourthQuery = DB::table('expsheet as E')
            ->select(
                'E.DOCID',
                DB::raw('1 AS SNO'),
                DB::raw('2 AS SNO1'),
                DB::raw('"" AS FOLIONO'),
                DB::raw('"" AS FOLIONODOCID'),
                DB::raw('"" AS roomno'),
                DB::raw('"" AS GUESTNAME'),
                'E.VDATE',
                'E.VTYPE',
                'E.VNO',
                'E.Amount AS NetSale',
                DB::raw('0 AS TipAmt1'),
                DB::raw('"" AS PAYCODE'),
                DB::raw("'Cash' AS PType"),
                'E.U_NAME AS UNAME',
                'E.Remarks AS COMMENT',
                DB::raw("'MISC.RECEIPT' AS DEPARTNAME"),
                DB::raw('4 AS AA')
            )
            ->whereBetween('E.VDate', [$fromdate, $todate])
            ->where('E.VTYPE', 'HTSAL')
            ->where('E.Amount', '>', 0);

        $results = $firstQuery->unionAll($secondQuery)
            ->unionAll($thirdQuery)
            ->unionAll($fourthQuery)
            ->orderBy('AA')
            ->orderBy('DEPARTNAME')
            ->orderBy('VDATE')
            ->orderBy('DOCID')
            ->orderBy('SNO')
            ->get();

        $billnos = Paycharge::where('propertyid', $this->propertyid)
            ->where('billno', '!=', 0)
            ->whereNull('paytype')
            ->get()
            ->keyBy(function ($item) {
                return $item->folionodocid.'_'.$item->sno1;
            });

        foreach ($results as $row) {
            $key = $row->FOLIONODOCID.'_'.$row->SNO1;
            if (isset($billnos[$key])) {
                $row->billno = $billnos[$key]->billno;
            } else {
                $row->billno = 'Not Found';
            }
        }

        $paytype = [];
        $distinctpaytypes = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();
        foreach ($distinctpaytypes as $row) {
            $paytype[] = $row->pay_type;
        }
        $data = [
            'cashierdata' => $results,
            'paytype' => $paytype,
        ];

        return json_encode($data);
    }

    public function cancelbills(Request $request)
    {
        $permission = revokeopen(141214);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.cancelbills', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'company' => $company,
        ]);
    }

    public function fetchcancelbilldata(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $data = FomBillDetail::where('propertyid', $this->propertyid)->Where('status', 'Cancel')->whereBetween('billdate', [$fromdate, $todate])->orderBy('billdate')->orderBy('billno')->orderBy('u_name')->get();

        return json_encode($data);
    }

    // ─── Cancel Bills — Shared data helper ───────────────────────────────────────

    protected function cancelBillsData($fromdate, $todate)
    {
        return FomBillDetail::where('propertyid', $this->propertyid)
            ->where('status', 'Cancel')
            ->whereBetween('billdate', [$fromdate, $todate])
            ->orderBy('billdate')
            ->orderBy('billno')
            ->orderBy('u_name')
            ->get();
    }

    // ─── Cancel Bills — Print (Barryvdh DomPDF, contributionreport format) ───────

    public function printcancelbills(Request $request)
    {
        $permission = revokeopen(141214);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $data = $this->cancelBillsData($fromdate, $todate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $total = $data->sum(fn ($row) => (float) $row->billamt);

        return Pdf::loadView('property.print.cancelbillsprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
            'total' => $total,
        ])->setPaper('a4', 'portrait')
            ->stream('cancel-bill-detail-'.$fromdate.'-to-'.$todate.'.pdf');
    }

    // ─── Cancel Bills — Excel Export (PhpSpreadsheet, contributionreport format) ─

    public function exportcancelbills(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            [$spreadsheet, $filename] = $this->cancelBillsSpreadsheet($fromdate, $todate);

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Cancel Bills Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── Cancel Bills — Excel builder (contributionreport format) ────────────────

    protected function cancelBillsSpreadsheet($fromdate, $todate)
    {
        $data = $this->cancelBillsData($fromdate, $todate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $headers = ['#', 'Bill No.', 'Date', 'Folio No.', 'Name', 'Amount', 'Reason', 'User'];
        $lastCol = Coordinate::stringFromColumnIndex(count($headers)); // H

        $spreadsheet = new Spreadsheet;
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Cancel Bills');

        // Row 1: Company Name
        $sheet->mergeCells("A1:{$lastCol}1");
        $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
        $sheet->getStyle('A1')->applyFromArray([
            'font' => ['bold' => true, 'size' => 14],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 2: Report Title
        $sheet->mergeCells("A2:{$lastCol}2");
        $sheet->setCellValue('A2', 'Cancel Bills');
        $sheet->getStyle('A2')->applyFromArray([
            'font' => ['bold' => true, 'size' => 11],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 3: Date range
        $sheet->mergeCells("A3:{$lastCol}3");
        $sheet->setCellValue('A3', 'From: '.Carbon::parse($fromdate)->format('d/m/Y')
            .'  To: '.Carbon::parse($todate)->format('d/m/Y'));
        $sheet->getStyle('A3')->applyFromArray([
            'font' => ['size' => 10],
            'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        ]);

        // Row 5: Column Headers
        $headerRow = 5;
        foreach ($headers as $i => $h) {
            $col = Coordinate::stringFromColumnIndex($i + 1);
            $sheet->setCellValue($col.$headerRow, $h);
        }
        $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
            'alignment' => [
                'horizontal' => Alignment::HORIZONTAL_CENTER,
                'vertical' => Alignment::VERTICAL_CENTER,
                'wrapText' => false,
            ],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);

        // Data Rows
        $currentRow = $headerRow + 1;
        $total = 0.0;
        foreach ($data as $i => $row) {
            $amount = (float) $row->billamt;
            $total += $amount;

            $sheet->setCellValue('A'.$currentRow, $i + 1);
            $sheet->setCellValue('B'.$currentRow, $row->billno);
            $sheet->setCellValue('C'.$currentRow, Carbon::parse($row->billdate)->format('d/m/Y'));
            $sheet->setCellValue('D'.$currentRow, $row->foliono);
            $sheet->setCellValue('E'.$currentRow, $row->guestname);
            $sheet->setCellValue('F'.$currentRow, $amount);
            $sheet->setCellValue('G'.$currentRow, $row->cancelremark);
            $sheet->setCellValue('H'.$currentRow, $row->u_name);

            // Row styling
            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'borders' => ['allBorders' => [
                    'borderStyle' => Border::BORDER_THIN,
                    'color' => ['argb' => 'FFDDDDDD'],
                ]],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);
            // Alternating row fill
            if ($i % 2 === 1) {
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                    ->getFill()->setFillType(Fill::FILL_SOLID)
                    ->getStartColor()->setARGB('FFF2F2F2');
            }
            // Name / Reason / User left-aligned
            foreach (['E', 'G', 'H'] as $lCol) {
                $sheet->getStyle($lCol.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
            }
            // Amount right-aligned + number format
            $sheet->getStyle('F'.$currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                ->setWrapText(false);
            $sheet->getStyle('F'.$currentRow)->getNumberFormat()
                ->setFormatCode('#,##0.00');

            $currentRow++;
        }

        // Total Row
        if ($data->count() > 0) {
            $sheet->mergeCells('A'.$currentRow.':E'.$currentRow);
            $sheet->setCellValue('A'.$currentRow, 'Total');
            $sheet->setCellValue('F'.$currentRow, $total);

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('F'.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('F'.$currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                ->setWrapText(false);
        }

        // Column widths
        $sheet->getColumnDimension('A')->setWidth(5);
        $sheet->getColumnDimension('B')->setWidth(12);
        $sheet->getColumnDimension('C')->setWidth(12);
        $sheet->getColumnDimension('D')->setWidth(12);
        $sheet->getColumnDimension('E')->setWidth(26);
        $sheet->getColumnDimension('F')->setWidth(14);
        $sheet->getColumnDimension('G')->setWidth(32);
        $sheet->getColumnDimension('H')->setWidth(16);

        $filename = 'Cancel_Bills_'
            .Carbon::parse($fromdate)->format('Ymd').'_to_'
            .Carbon::parse($todate)->format('Ymd').'_'
            .date('YmdHis').'.xlsx';

        return [$spreadsheet, $filename];
    }

    public function fetchbussource(Request $request)
    {
        $bussdata = BussSource::where('propertyid', $this->propertyid)->get();

        return json_encode($bussdata);
    }

    public function fetchroomresettle(Request $request)
    {
        $billno = $request->input('billno');
        $vprefix = $request->vprefix;

        $chkbilltrue = Paycharge::where('propertyid', $this->propertyid)
            ->where('billno', $billno)
            ->where('vprefix', $vprefix)
            ->first();

        if (! $chkbilltrue) {
            return json_encode('Invalid');
        }

        // dd($chkbilltrue);

        $resDocid = $chkbilltrue->restcode;

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
            ->where('depart_pay.rest_code', $resDocid)
            ->where('depart_pay.propertyid', $this->propertyid)
            ->get();

        $paychargedata = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('vprefix', $vprefix)
            ->where('billno', $billno)
            ->get();

        foreach ($paychargedata as $data) {
            $docid = $data->folionodocid;
            $sno1 = $data->sno1;
            $sno = $data->sno;
            $msno1 = $data->msno1;
        }

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();

        $paymodeQuery = Paycharge::select('paycharge.paycode', 'paycharge.vdate', 'paycharge.comp_code', 'revmast.pay_type')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('paycharge.folionodocid', $docid)
            ->where('paycharge.vprefix', $vprefix)
            ->where('paycharge.modeset', 'S')
            ->whereNot('paycharge.vtype', 'REV');

        if ($rocc) {
            $paymodeQuery->where('msno1', $rocc->sno1);
        } else {
            $paymodeQuery->where('sno1', $sno1);
        }

        $paymode = $paymodeQuery->get();

        $paymodedata = [];
        foreach ($paymode as $row) {
            $pay_type = $row->pay_type;
            $paydate = $row->vdate;
            $paydata = null;
            if ($pay_type == 'Company') {
                $paydata = SubGroup::where('propertyid', $this->propertyid)
                    ->where('sub_code', $row->comp_code)
                    ->first();
            }

            $paymodedata[] = [
                'pay_type' => $pay_type,
                'paydate' => $paydate,
                'paycompname' => ($paydata) ? $paydata->name : null,
            ];
        }

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $roomoccdata = RoomOcc::select(
            'roomocc.*',
            'cities.cityname',
            'states.name as statename',
            'room_cat.name as roomcategory',
            'company.name as companyname',
            'company.gstin as companygst',
            'travelagent.name as travelname',
            'travelagent.gstin as travelgst'
        )
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('cities', 'cities.city_code', '=', 'guestprof.city')
            ->leftJoin('states', 'states.state_code', '=', 'guestprof.state_code')
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
            ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('subgroup as company', 'company.sub_code', '=', 'guestfolio.company')
            ->leftJoin('subgroup as travelagent', 'travelagent.sub_code', '=', 'guestfolio.travelagent')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $docid)
            ->where('roomocc.sno1', $sno1)
            ->first();

        $qry1s = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid);
        $qry2s = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid)
            ->whereNull('modeset');
        $qry3s = Paycharge::select('paycharge.*', 'revmast.name as revname')->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)->where('paycharge.folionodocid', $docid)
            ->whereNotNull('paycharge.modeset')->whereNot('paycharge.amtcr', 0)->orderBy('paycharge.sno', 'ASC');
        if ($rocc) {
            $qry1s->where('msno1', $rocc->sno1);
            $qry2s->where('msno1', $rocc->sno1);
            $qry3s->where('paycharge.msno1', $rocc->sno1);
            $payd = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('msno1', $rocc->sno1)
                ->where('modeset', 'S')->first();
        } else {
            $qry1s->where('sno1', $sno1);
            $qry2s->where('sno1', $sno1);
            $qry3s->where('paycharge.sno1', $sno1);
            $payd = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)
                ->where('modeset', 'S')->first();
        }
        $qry1 = $qry1s->sum('amtdr');
        $qry2 = $qry2s->sum('amtcr');
        $qry3 = $qry3s->get();
        $totalamt = str_replace(',', '', number_format($qry1 - $qry2, 2));
        $data = [
            'roomoccdata' => $roomoccdata,
            'paymodedata' => $paymodedata,
            'billno' => $billno,
            'companydata' => $companydata,
            'totalamt' => $totalamt,
            'qry3' => $qry3,
            'sno1' => $sno1,
            'payd' => $payd,
            'paytype' => $records,
            'resDocid' => $resDocid,

        ];

        return json_encode($data);
    }

    public function fomtaxdetail(Request $request)
    {
        $permission = revokeopen(141511);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $taxnames = Paycharge::select('revmast.name', 'paycharge.paycode', 'paycharge.taxper')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'T')
            ->whereNotNull('paycharge.taxper')
            // ->whereBetween('paycharge.vdate', [$this->ncurdate, $this->ncurdate])
            ->groupBy('paycharge.paycode')
            ->get();
        $data = DB::table('guestfolio')->where('propertyid', $this->propertyid)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.fomtaxdetail', [
            'data' => $data,
            'fromdate' => $fromdate,
            'company' => $company,
            'statename' => $statename,
            'taxnames' => $taxnames,
        ]);
    }

    /**
     * Shared base query for the FOM Tax report (grid / print / excel).
     * Every output is generated from this single builder so the printed and the
     * exported report always matches exactly what is shown on the screen.
     */
    private function fomTaxBaseQuery($fromdate, $todate, $taxes = [])
    {
        $propertyid = $this->propertyid;
        $cgstCode = 'CGSS'.$propertyid;
        $sgstCode = 'SGSS'.$propertyid;

        $fromdate = $fromdate ?: $this->ncurdate;
        $todate = $todate ?: $this->ncurdate;

        if (is_string($taxes)) {
            $decoded = json_decode($taxes, true);
            $taxes = is_array($decoded) ? $decoded : ($taxes === '' ? [] : [$taxes]);
        }
        $taxes = array_values(array_filter((array) $taxes, fn ($v) => $v !== 'All' && $v !== '' && $v !== null));

        $taxDefs = [
            1 => [6,   $cgstCode],
            2 => [9,   $cgstCode],
            3 => [6,   $sgstCode],
            4 => [9,   $sgstCode],
            5 => [2.5, $cgstCode],
            6 => [2.5, $sgstCode],
        ];

        $paychargeAgg = DB::table('paycharge')
            ->select('folionodocid')
            ->selectRaw('MAX(foliono) AS foliono')
            ->selectRaw('MAX(billno) AS billno')
            ->selectRaw('MAX(settledate) AS settledate')
            ->selectRaw('SUM(amtdr - amtcr) AS AmtDr')
            ->selectRaw('SUM(amtdr) AS billamount')
            ->where('roomtype', 'RO')
            ->whereRaw('amtdr - amtcr <> 0')
            ->whereNotIn('vtype', ['ARRES', 'ADRES'])
            ->where('foliono', '<>', 0)
            ->where(function ($q) {
                $q->where('billno', '<>', 0)->orWhereNull('modeset');
            })
            ->whereBetween('settledate', [$fromdate, $todate])
            ->where('propertyid', $propertyid)
            ->when(! empty($taxes), fn ($q) => $q->whereIn('paycode', $taxes))
            ->groupBy('folionodocid', 'billno');

        foreach ($taxDefs as $i => [$taxper, $code]) {
            $paychargeAgg->selectRaw(
                "SUM(CASE WHEN taxper = ? AND paycode = ? THEN onamt ELSE 0 END) AS BASE{$i}",
                [$taxper, $code]
            );
            $paychargeAgg->selectRaw(
                "SUM(CASE WHEN taxper = ? AND paycode = ? THEN amtdr - amtcr ELSE 0 END) AS TAX{$i}",
                [$taxper, $code]
            );
        }

        $guestRoom = DB::table('roomocc AS ro')
            ->select('ro.docid AS folionodocid')
            ->selectRaw('MAX(ro.name) AS GuestName')
            ->selectRaw('MAX(s.name) AS company')
            ->selectRaw('MAX(s.gstin) AS gstin')
            ->selectRaw('GROUP_CONCAT(DISTINCT COALESCE(ro_leader.roomno, ro.roomno)) AS RoomNo')
            ->leftJoin('roomocc AS ro_leader', function ($join) {
                $join->on('ro_leader.docid', '=', 'ro.docid')
                    ->whereRaw("ro_leader.type = 'O'")
                    ->whereRaw("ro_leader.leaderyn = 'Y'");
            })
            ->leftJoin('guestfolio AS gf', 'gf.docid', '=', 'ro.docid')
            ->leftJoin('subgroup AS s', 'gf.company', '=', 's.sub_code')
            ->whereRaw("ro.type = 'O'")
            ->groupBy('ro.docid');

        // fromSub / joinSub let Laravel track bindings itself — no toSql()/mergeBindings surgery
        return DB::table(DB::raw('1 as dummy')) // placeholder, replaced by fromSub below
            ->fromSub($paychargeAgg, 'P')
            ->joinSub($guestRoom, 'G', 'P.folionodocid', '=', 'G.folionodocid')
            ->select(
                'P.foliono',
                'P.folionodocid',
                'P.settledate',
                'P.billno AS BILL_NO',
                'G.GuestName',
                'G.company AS companyname',
                'G.gstin AS companygstin',
                'G.RoomNo',
                'P.AmtDr',
                'P.BASE1',
                'P.TAX1',
                'P.BASE2',
                'P.TAX2',
                'P.BASE3',
                'P.TAX3',
                'P.BASE4',
                'P.TAX4',
                'P.BASE5',
                'P.TAX5',
                'P.BASE6',
                'P.TAX6',
                DB::raw('(P.BASE1+P.BASE2+P.BASE3+P.BASE4+P.BASE5+P.BASE6) AS EBASEVALUE'),
                DB::raw('(P.TAX1+P.TAX2+P.TAX3+P.TAX4+P.TAX5+P.TAX6) AS ETAXAMT'),
                'P.billamount'
            );
    }

    /**
     * Apply the grid sorting (column index + direction) on a FOM Tax query.
     */
    private function fomTaxApplyOrder($query, $orderCol, $orderDir, $defaultDir = 'desc')
    {
        $columnsMap = [
            0 => 'settledate',
            1 => 'GuestName',
            2 => 'foliono',
            3 => 'BILL_NO',
            4 => 'RoomNo',
            5 => 'billamount',
            6 => 'BASE5',
            7 => 'BASE1',
            8 => 'BASE2',
            9 => 'TAX5',
            10 => 'TAX6',
            11 => 'TAX1',
            12 => 'TAX3',
            13 => 'TAX2',
            14 => 'TAX4',
            15 => 'ETAXAMT',
            16 => 'companyname',
            17 => 'companygstin',
        ];

        $orderCol = intval($orderCol);

        $dir = strtolower((string) $orderDir);
        if (! in_array($dir, ['asc', 'desc'], true)) {
            $dir = $defaultDir;
        }

        $orderColumn = $columnsMap[$orderCol] ?? 'BILL_NO';

        if ($orderColumn === 'BILL_NO') {
            $query->orderByRaw('CAST(sub.BILL_NO AS DECIMAL) '.$dir);
        } else {
            $query->orderBy('sub.'.$orderColumn, $dir);
        }

        return $query;
    }

    public function fetchfomtaxdata(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $taxes = $request->input('taxes', []);

        $results = $this->fomTaxBaseQuery($fromdate, $todate, $taxes);

        // Wrap again as a sub-builder for filtering/count/paginate — bindings still auto-tracked
        $draw = intval($request->input('draw', 0));
        $start = intval($request->input('start', 0));
        $length = intval($request->input('length', 10));
        $searchValue = trim((string) $request->input('search.value', ''));

        $wrapped = DB::query()->fromSub($results, 'sub');

        $recordsTotal = (clone $wrapped)->count();

        if ($searchValue !== '') {
            $wrapped->where(function ($q) use ($searchValue) {
                $like = "%{$searchValue}%";
                $q->where('sub.GuestName', 'like', $like)
                    ->orWhere('sub.BILL_NO', 'like', $like)
                    ->orWhere('sub.companyname', 'like', $like)
                    ->orWhere('sub.companygstin', 'like', $like)
                    ->orWhere('sub.RoomNo', 'like', $like);
            });
        }

        $recordsFiltered = (clone $wrapped)->count();

        // whitelist order column + direction — never trust raw request input in ORDER BY
        $this->fomTaxApplyOrder(
            $wrapped,
            $request->input('order.0.column', 0),
            $request->input('order.0.dir', 'asc'),
            'asc'
        );

        $limit = $length > 0 ? $length : 10;
        $data = $wrapped->skip($start)->take($limit)->get();

        $dataArr = $data->map(fn ($row) => (array) $row)->all();
        $formatted = $this->formattedrow($dataArr);

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data' => $formatted,
            'fromdate_display' => $fromdate,
            'todate_display' => $todate,
        ]);
    }

    private function formattedrow($dataArr)
    {
        $formatted = array_map(function ($r) {
            $fmt = fn ($v) => number_format((float) ($v ?? 0), 2, '.', '');
            $taxPositive = fn ($v) => ((float) ($v ?? 0)) != 0.0;

            return [
                'foliono' => $r['foliono'] ?? null,
                'folionodocid' => $r['folionodocid'] ?? null,
                'settledate' => $r['settledate'] ?? null,
                'BILL_NO' => $r['BILL_NO'] ?? null,
                'GuestName' => $r['GuestName'] ?? '',
                'RevenueName' => $r['RevenueName'] ?? '',
                'RoomNo' => $r['RoomNo'] ?? '',
                'AmtDr' => $fmt($r['AmtDr'] ?? 0),

                'BASEVALUE1' => $fmt($r['BASE1'] ?? 0),
                'TAXAMT1' => $fmt($r['TAX1'] ?? 0),
                'TAXPER1' => $taxPositive($r['TAX1'] ?? 0) ? number_format(6, 2, '.', '') : number_format(0, 2, '.', ''),

                'BASEVALUE2' => $fmt($r['BASE2'] ?? 0),
                'TAXAMT2' => $fmt($r['TAX2'] ?? 0),
                'TAXPER2' => $taxPositive($r['TAX2'] ?? 0) ? number_format(9, 2, '.', '') : number_format(0, 2, '.', ''),

                'BASEVALUE3' => $fmt($r['BASE3'] ?? 0),
                'TAXAMT3' => $fmt($r['TAX3'] ?? 0),
                'TAXPER3' => $taxPositive($r['TAX3'] ?? 0) ? number_format(6, 2, '.', '') : number_format(0, 2, '.', ''),

                'BASEVALUE4' => $fmt($r['BASE4'] ?? 0),
                'TAXAMT4' => $fmt($r['TAX4'] ?? 0),
                'TAXPER4' => $taxPositive($r['TAX4'] ?? 0) ? number_format(9, 2, '.', '') : number_format(0, 2, '.', ''),

                'BASEVALUE5' => $fmt($r['BASE5'] ?? 0),
                'TAXAMT5' => $fmt($r['TAX5'] ?? 0),
                'TAXPER5' => $taxPositive($r['TAX5'] ?? 0) ? number_format(2.5, 2, '.', '') : number_format(0, 2, '.', ''),

                'BASEVALUE6' => $fmt($r['BASE6'] ?? 0),
                'TAXAMT6' => $fmt($r['TAX6'] ?? 0),
                'TAXPER6' => $taxPositive($r['TAX6'] ?? 0) ? number_format(2.5, 2, '.', '') : number_format(0, 2, '.', ''),

                'EBASEVALUE' => $fmt($r['EBASEVALUE'] ?? 0),
                'ETAXAMT' => $fmt($r['ETAXAMT'] ?? 0),
                'billamount' => $fmt($r['billamount'] ?? 0),

                'companyname' => $r['companyname'] ?? '',
                'companygstin' => $r['companygstin'] ?? '',
            ];
        }, $dataArr);

        return $formatted;
    }

    public function exportExcel(Request $request)
    {
        $fromdate = $request->query('fromdate');
        $todate = $request->query('todate');
        $taxes = $request->query('taxes', []);

        $filename = 'Fom_Tax_Report_'.date('Ymd_His').'.xlsx';

        $spreadsheet = new Spreadsheet;
        $sheet = $spreadsheet->getActiveSheet();
    }

    public function exportFomTaxExcel(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate');
            $todate = $request->query('todate');
            $taxes = $request->query('taxes', []);

            $base = $this->fomTaxBaseQuery($fromdate, $todate, $taxes);
            $wrapped = DB::query()->fromSub($base, 'sub');

            // Apply sort order from frontend
            $this->fomTaxApplyOrder(
                $wrapped,
                $request->query('orderCol', 3),
                $request->query('orderDir', 'desc'),
                'desc'
            );

            $rows = $wrapped->get();

            if ($rows->isEmpty()) {
                return response()->json(['error' => 'No data found for the selected date range and filters.'], 404);
            }

            $data = $this->formattedrow($rows->map(fn ($row) => (array) $row)->all());

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $fromdate = $fromdate ?: $this->ncurdate;
            $todate = $todate ?: $this->ncurdate;

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('FOM Tax Details');

            $lastCol = 'R';
            $headerRow = 5;

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'FOM Tax Details');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Date: '.Carbon::parse($fromdate)->format('d/m/Y').' to '.Carbon::parse($todate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = [
                'Date',
                'Guest Name',
                'Folio No.',
                'Bill No.',
                'Room No.',
                'Bill Amount',
                'Goods 2.5%',
                'Goods 6%',
                'Goods 9%',
                'CGST 2.5%',
                'SGST 2.5%',
                'CGST 6%',
                'SGST 6%',
                'CGST 9%',
                'SGST 9%',
                'Till Tax Amt',
                'Company',
                'GSTIN',
            ];

            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $num = fn ($v) => round((float) ($v ?? 0), 2);
            $numType = DataType::TYPE_NUMERIC;
            $currentRow = $headerRow + 1;

            foreach ($data as $i => $r) {
                $sheet->setCellValue('A'.$currentRow, $r['settledate'] ? Carbon::parse($r['settledate'])->format('d/m/Y') : '');
                $sheet->setCellValue('B'.$currentRow, $r['GuestName']);
                $sheet->setCellValue('C'.$currentRow, $r['foliono']);
                $sheet->setCellValue('D'.$currentRow, $r['BILL_NO']);
                $sheet->setCellValue('E'.$currentRow, $r['RoomNo']);

                // Numeric columns F-P
                $sheet->setCellValueExplicit('F'.$currentRow, $num($r['billamount']), $numType);   // Bill Amount
                $sheet->setCellValueExplicit('G'.$currentRow, $num($r['BASEVALUE5']), $numType);  // Goods 2.5%
                $sheet->setCellValueExplicit('H'.$currentRow, $num($r['BASEVALUE1']), $numType);  // Goods 6%
                $sheet->setCellValueExplicit('I'.$currentRow, $num($r['BASEVALUE2']), $numType);  // Goods 9%
                $sheet->setCellValueExplicit('J'.$currentRow, $num($r['TAXAMT5']), $numType);     // CGST 2.5%
                $sheet->setCellValueExplicit('K'.$currentRow, $num($r['TAXAMT6']), $numType);     // SGST 2.5%
                $sheet->setCellValueExplicit('L'.$currentRow, $num($r['TAXAMT1']), $numType);     // CGST 6%
                $sheet->setCellValueExplicit('M'.$currentRow, $num($r['TAXAMT3']), $numType);     // SGST 6%
                $sheet->setCellValueExplicit('N'.$currentRow, $num($r['TAXAMT2']), $numType);     // CGST 9%
                $sheet->setCellValueExplicit('O'.$currentRow, $num($r['TAXAMT4']), $numType);     // SGST 9%
                $sheet->setCellValueExplicit('P'.$currentRow, $num($r['ETAXAMT']), $numType);    // Till Tax Amt

                $sheet->setCellValue('Q'.$currentRow, $r['companyname']);
                $sheet->setCellValue('R'.$currentRow, $r['companygstin']);

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                ]);

                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }

                // Numeric alignment + format
                $sheet->getStyle('F'.$currentRow.':P'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_RIGHT);
                $sheet->getStyle('F'.$currentRow.':P'.$currentRow)->getNumberFormat()
                    ->setFormatCode('#,##0.00');

                $currentRow++;
            }

            // Grand Total Row
            $totalRow = $currentRow;
            $sheet->mergeCells('A'.$totalRow.':E'.$totalRow);
            $sheet->setCellValue('A'.$totalRow, 'Grand Total');

            $sumCols = ['F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'];
            foreach ($sumCols as $col) {
                $sheet->setCellValue($col.$totalRow, '=SUM('.$col.($headerRow + 1).':'.$col.($totalRow - 1).')');
            }

            $sheet->getStyle('A'.$totalRow.':'.$lastCol.$totalRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('F'.$totalRow.':P'.$totalRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('F'.$totalRow.':P'.$totalRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_RIGHT);

            // Column widths
            $widths = [
                'A' => 11, 'B' => 24, 'C' => 10, 'D' => 10, 'E' => 12,
                'F' => 13, 'G' => 12, 'H' => 12, 'I' => 12, 'J' => 12, 'K' => 12,
                'L' => 12, 'M' => 12, 'N' => 12, 'O' => 12, 'P' => 13,
                'Q' => 24, 'R' => 20,
            ];
            foreach ($widths as $col => $w) {
                $sheet->getColumnDimension($col)->setWidth($w);
            }

            // ── Download ─────────────────────────────────────────────────────
            $filename = 'FOM_Tax_Details_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── FOM Tax Details — Print (Barryvdh DomPDF) ──────────────────────────

    public function printfomtaxdetail(Request $request)
    {
        $permission = revokeopen(141511);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $request->query('fromdate') ?: $this->ncurdate;
        $todate = $request->query('todate') ?: $this->ncurdate;
        $taxes = $request->query('taxes', []);

        $base = $this->fomTaxBaseQuery($fromdate, $todate, $taxes);
        $wrapped = DB::query()->fromSub($base, 'sub');

        // Apply sort order coming from the grid
        $this->fomTaxApplyOrder(
            $wrapped,
            $request->query('orderCol', 3),
            $request->query('orderDir', 'desc'),
            'desc'
        );

        $rows = $wrapped->get();
        $data = $this->formattedrow($rows->map(fn ($row) => (array) $row)->all());

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.fomtaxdetailprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
            'reportTitle' => 'FOM Tax Details',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('fom-tax-details-'.date('Ymd', strtotime($fromdate)).'.pdf');
    }

    public function fetchtaxesnames(Request $request)
    {
        $fromdate = $request->input('fromdate') ?? $this->ncurdate;
        $todate = $request->input('todate') ?? $this->ncurdate;

        $taxnames = Paycharge::select('revmast.name', 'paycharge.paycode', 'paycharge.taxper')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'T')
            ->whereBetween('paycharge.vdate', [$fromdate, $todate])
            ->groupBy('paycharge.paycode')
            ->get();

        return json_encode($taxnames);
    }

    // public function fetchfomtaxdata(Request $request)
    // {
    //    $propertyid = $this->propertyid;
    //    $cgstCode = 'CGSS' . $propertyid;
    //    $sgstCode = 'SGSS' . $propertyid;
    //    $fromdate = $request->input('fromdate');
    //    $todate = $request->input('todate');

    //    $guestData = DB::table('paycharge as p')
    //       ->select(
    //          'p.foliono',
    //          'p.folionodocid',
    //          'p.settledate',
    //          'p.billno as BILL_NO',
    //          'ro.name as GuestName',
    //          's.name as companyname',
    //          's.gstin as companygstin',
    //          DB::raw('COALESCE(leader_ro.roomno, ro.roomno) as RoomNo'),
    //          DB::raw("'' as RevenueName")
    //       )
    //       ->join('roomocc as ro', function ($join) {
    //          $join->on('p.folionodocid', '=', 'ro.docid')
    //             ->where('ro.type', '=', 'O');
    //       })
    //       ->join('guestfolio as gf', 'p.folionodocid', '=', 'gf.docid')
    //       ->leftJoin('subgroup as s', 'gf.company', '=', 's.sub_code')
    //       ->leftJoin('roomocc as leader_ro', function ($join) {
    //          $join->on('p.folionodocid', '=', 'leader_ro.docid')
    //             ->where('leader_ro.type', '=', 'O')
    //             ->where('leader_ro.leaderyn', '=', 'Y');
    //       })
    //       ->where('p.propertyid', $propertyid)
    //       ->whereBetween('p.settledate', [$fromdate, $todate])
    //       ->where('p.roomtype', 'RO')
    //       ->where('p.foliono', '>', 0)
    //       ->whereRaw('p.amtdr != p.amtcr')
    //       ->whereNotIn('p.vtype', ['ARRES', 'ADRES'])
    //       ->where(function ($query) {
    //          $query->where('p.billno', '>', 0)
    //             ->orWhere('p.paycode', 'ROFF101');
    //       })
    //       ->groupBy(['p.folionodocid', 'p.billno', 'p.foliono', 'p.settledate', 'ro.name', 's.name', 's.gstin', 'leader_ro.roomno', 'ro.roomno'])
    //       ->get();

    //    $result = [];

    //    foreach ($guestData as $guest) {
    //       $taxData = DB::table('paycharge')
    //          ->select(
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 6 AND paycode = '{$cgstCode}' THEN onamt END), 0) as BASEVALUE1"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 6 AND paycode = '{$cgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT1"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 6 AND paycode = '{$cgstCode}' THEN 6 END), 0) as TAXPER1"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 9 AND paycode = '{$cgstCode}' THEN onamt END), 0) as BASEVALUE2"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 9 AND paycode = '{$cgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT2"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 9 AND paycode = '{$cgstCode}' THEN 9 END), 0) as TAXPER2"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 6 AND paycode = '{$sgstCode}' THEN onamt END), 0) as BASEVALUE3"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 6 AND paycode = '{$sgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT3"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 6 AND paycode = '{$sgstCode}' THEN 6 END), 0) as TAXPER3"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 9 AND paycode = '{$sgstCode}' THEN onamt END), 0) as BASEVALUE4"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 9 AND paycode = '{$sgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT4"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 9 AND paycode = '{$sgstCode}' THEN 9 END), 0) as TAXPER4"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 2.5 AND paycode = '{$cgstCode}' THEN onamt END), 0) as BASEVALUE5"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 2.5 AND paycode = '{$cgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT5"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 2.5 AND paycode = '{$cgstCode}' THEN 2.5 END), 0) as TAXPER5"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 2.5 AND paycode = '{$sgstCode}' THEN onamt END), 0) as BASEVALUE6"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper = 2.5 AND paycode = '{$sgstCode}' THEN amtdr - amtcr END), 0) as TAXAMT6"),
    //             DB::raw("COALESCE(MAX(CASE WHEN taxper = 2.5 AND paycode = '{$sgstCode}' THEN 2.5 END), 0) as TAXPER6"),

    //             DB::raw("COALESCE(SUM(CASE WHEN taxper IN (6, 9, 2.5) AND paycode IN ('{$cgstCode}', '{$sgstCode}') THEN onamt END), 0) as EBASEVALUE"),
    //             DB::raw("COALESCE(SUM(CASE WHEN taxper IN (6, 9, 2.5) AND paycode IN ('{$cgstCode}', '{$sgstCode}') THEN amtdr - amtcr END), 0) as ETAXAMT")
    //          )
    //          ->where('folionodocid', $guest->folionodocid)
    //          ->where('billno', $guest->BILL_NO)
    //          ->where('propertyid', $propertyid)
    //          ->first();

    //       $billAmount = DB::table('paycharge')
    //          ->where('folionodocid', $guest->folionodocid)
    //          ->where('billno', $guest->BILL_NO)
    //          ->where('propertyid', $propertyid)
    //          ->sum('amtdr');

    //       $combinedData = (object) array_merge((array) $guest, (array) $taxData);
    //       $combinedData->AmtDr = $billAmount;
    //       $combinedData->billamount = $billAmount;

    //       $result[] = $combinedData;
    //    }

    //    if (empty($result)) {
    //       return response()->json(['taxdetail' => []]);
    //    }

    //    return response()->json([
    //       'taxdetail' => $result,
    //       'fromdate' => $fromdate,
    //       'todate' => $todate
    //    ]);
    // }

    public function occupancyreport(Request $request)
    {
        $permission = revokeopen(141215);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');

        return view('property.occupancyreport', [
            'ncurdate' => $this->ncurdate,
            'comp' => $comp,
            'statename' => $statename,
        ]);
    }

    private function occupancyreportData($fordate, $todate, $sortedby)
    {
        $occdata = DB::table('roomocc')
            ->select([
                'guestprof.mobile_no as mobileno',
                'guestfolio.docid as folionodocid',
                'roomocc.foliono',
                'guestfolio.guestprof',
                'room_mast.room_cat',
                'room_mast.rcode as roomno',
                'guestprof.con_prefix',
                'guestprof.nationality',
                'roomocc.name as guestname',
                'roomocc.propertyid',
                'guestprof.gender',
                'roomocc.adult',
                'roomocc.children',
                DB::raw('(roomocc.adult + roomocc.children) as pax'),
                'countries.name as CName',
                'gueststats.name as GuestStatus',
                'guestprof.age',
                'guestprof.id_proof',
                'guestprof.idproof_no as IdProofNo',
                'guestfolio.arrfrom',
                'guestfolio.destination',
                'guestfolio.travelmode',
                'guestfolio.purvisit',
                'busssource.name as BusiSrc',
                'guestfolio.remark as Remark',
                'subgroup.name as companyname',
                'sg.name as travelname',
                'roomocc.roomrate',
                'guestfolio.rodisc as roomdisc',
                'plan_mast.name as package',
                'plan_mast.tarrif',
                'roomocc.plancode',
                'roomocc.ratecode',
                'roomocc.chngdate',
                'roomocc.type',
                DB::raw('CONCAT(DATE_FORMAT(guestfolio.vdate, "%d-%m-%Y"), " ", DATE_FORMAT(roomocc.chkintime, "%h:%i")) as chkindate'),
                DB::raw('DATE_FORMAT(roomocc.depdate, "%d-%m-%Y") as expdepdate'),
                DB::raw('COALESCE(DATE_FORMAT(roomocc.chkoutdate, "%d-%m-%Y"), "") as depdate'),
                'roomocc.RRTaxInc',
                'guestfolio.add1',
                'guestfolio.add2 as address',
            ])
            ->join('room_mast', function ($query) {
                $query->on('room_mast.rcode', '=', 'roomocc.roomno')
                    ->where('room_mast.propertyid', $this->propertyid)
                    ->where('room_mast.type', 'RO');
            })
            ->leftJoin('guestfolio', function ($query) {
                $query->on('roomocc.docid', '=', 'guestfolio.docid')
                    ->where('guestfolio.propertyid', $this->propertyid);
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestfolio.guestprof', '=', 'guestprof.guestcode')
                    ->where('guestprof.propertyid', $this->propertyid);
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('roomocc.plancode', '=', 'plan_mast.pcode')
                    ->where('plan_mast.propertyid', $this->propertyid);
            })
            ->leftJoin('countries', function ($query) {
                $query->on('guestprof.nationality', '=', 'countries.country_code')
                    ->where('countries.propertyid', $this->propertyid);
            })
            ->leftJoin('gueststats', function ($query) {
                $query->on('guestprof.guest_status', '=', 'gueststats.gcode')
                    ->where('gueststats.propertyid', $this->propertyid);
            })
            ->leftJoin('subgroup', function ($query) {
                $query->on('guestfolio.company', '=', 'subgroup.sub_code')
                    ->where('subgroup.propertyid', $this->propertyid);
            })
            ->leftJoin('subgroup as sg', function ($query) {
                $query->on('guestfolio.travelagent', '=', 'sg.sub_code')
                    ->where('sg.propertyid', $this->propertyid);
            })
            ->leftJoin('busssource', function ($query) {
                $query->on('busssource.bcode', '=', 'guestfolio.busssource')
                    ->where('busssource.propertyid', $this->propertyid);
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.chkindate', '<=', $todate)
            ->where(function ($query) use ($fordate) {
                $query->where('roomocc.chkoutdate', '>=', $fordate)
                    ->orWhereNull('roomocc.chkoutdate');
            })
            ->groupBy('roomocc.docid')
            ->groupBy('roomocc.sno1')
            ->orderBy('roomocc.chkindate')
            ->orderBy('roomocc.folioNo')
            ->get();

        $dayuse = RoomOcc::where('propertyid', $this->propertyid)->where('chkindate', $fordate)->where('chkoutdate', $fordate)
            ->whereIn('type', ['O'])
            ->count();

        return [$occdata, $dayuse];
    }

    public function fetchoocxhr(Request $request)
    {
        [$occdata, $dayuse] = $this->occupancyreportData(
            $request->input('fordate'),
            $request->input('todate'),
            $request->input('sortedby')
        );

        $data = [
            'occdata' => $occdata,
            'dayuse' => $dayuse,
        ];

        return response()->json($data);
    }

    // ─── Occupancy Report — summary builder (Print / Excel) ─────────────────────

    private function occupancyreportSummary($occdata, $fordate, $todate, $printcondition, $plainbifurcation)
    {
        $totaladult = 0;
        $totalchild = 0;
        $planscount = [];
        $planspax = []; // plan → total pax for that plan only

        foreach ($occdata as $data) {
            $totaladult += (int) $data->adult;
            $totalchild += (int) $data->children;

            if ($data->tarrif !== null) {
                $planName = trim((string) $data->tarrif);
                if ($planName !== '') {
                    $planscount[$planName] = ($planscount[$planName] ?? 0) + 1;
                    $planspax[$planName] = ($planspax[$planName] ?? 0) + (int) $data->adult + (int) $data->children;
                }
            }
        }

        $totalpax = $totaladult + $totalchild;

        $planSummary = collect($planscount)
            ->map(fn ($count, $plan) => "{$plan} : {$count}/".($planspax[$plan] ?? 0))
            ->implode(', ');

        $conditions = [
            1 => 'Room Rate With Discount',
            2 => 'With Room Rate',
            3 => 'Without Room Rate',
        ];

        return [
            'fromdate' => $fordate ? Carbon::parse($fordate)->format('d/m/Y') : '',
            'todate' => $todate ? Carbon::parse($todate)->format('d/m/Y') : '',
            'condition' => $conditions[$printcondition] ?? '',
            'bifurcation' => $plainbifurcation == 'Y' ? 'Yes' : 'No',
            'rooms' => $occdata->count(),
            'dayuse' => 0,
            'totalperson' => "{$totaladult} / {$totalchild}",
            'plansummary' => $planSummary ?: 'N/A',
        ];
    }

    // ─── Occupancy Report — Print (DomPDF, contributionreport format) ───────────

    public function printoccupancyreport(Request $request)
    {
        $fordate = $request->query('fordate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);
        $sortedby = $request->query('sortedby', 'room_mast.rcode');
        $printcondition = $request->query('printcondition', 3);
        $plainbifurcation = $request->query('plainbifurcation', 'N');

        [$occdata, $dayuse] = $this->occupancyreportData($fordate, $todate, $sortedby);

        $summary = $this->occupancyreportSummary($occdata, $fordate, $todate, $printcondition, $plainbifurcation);
        $summary['dayuse'] = $dayuse;

        $comp = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.occupancyreportprint', [
            'comp' => $comp,
            'occdata' => $occdata,
            'summary' => $summary,
            'printcondition' => $printcondition,
            'fordate' => $fordate,
            'todate' => $todate,
        ])->setPaper('a4', 'portrait')
            ->stream('occupancy-report-'.$fordate.'-to-'.$todate.'.pdf');
    }

    // ─── Occupancy Report — Excel Export (contributionreport format) ────────────

    public function exportoccupancyreport(Request $request)
    {
        try {
            $fordate = $request->query('fordate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);
            $sortedby = $request->query('sortedby', 'room_mast.rcode');
            $printcondition = $request->query('printcondition', 3);
            $plainbifurcation = $request->query('plainbifurcation', 'N');

            [$occdata, $dayuse] = $this->occupancyreportData($fordate, $todate, $sortedby);

            $summary = $this->occupancyreportSummary($occdata, $fordate, $todate, $printcondition, $plainbifurcation);
            $summary['dayuse'] = $dayuse;

            $comp = Companyreg::where('propertyid', $this->propertyid)->first();

            // Columns depend on print condition
            $headers = ['GRC No.', 'Room No.'];
            if ($printcondition == 1) {
                array_push($headers, 'Room Rate', 'Room Disc', 'Room Tax');
            } elseif ($printcondition == 2) {
                array_push($headers, 'Room Rate', 'Room Tax');
            }
            array_push($headers, 'Name', 'Pax', 'Nationality', 'Comp/T.A.', 'Plan', 'In Dt', 'Exp. Dep Dt', 'Dep Dt');
            if ($printcondition != 3) {
                $headers[] = 'Mobile';
            }
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Occupancy Report');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $comp->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Occupancy Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range + condition
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.$summary['fromdate']
                .'  To: '.$summary['todate']
                .'  |  '.$summary['condition']);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($occdata as $i => $data) {
                $vals = [($data->foliono ?? ''), ($data->roomno ?? '')];
                if ($printcondition == 1) {
                    array_push($vals, (float) ($data->roomrate ?? 0), (float) ($data->roomdisc ?? 0), $data->RRTaxInc == 'N' ? 'No' : 'Yes');
                } elseif ($printcondition == 2) {
                    array_push($vals, (float) ($data->roomrate ?? 0), $data->RRTaxInc == 'N' ? 'No' : 'Yes');
                }
                array_push(
                    $vals,
                    ($data->guestname ?? ''),
                    (($data->adult ?? 0).' / '.($data->children ?? 0)),
                    ($data->CName ?? ''),
                    trim((($data->companyname ?? '').(($data->companyname && $data->travelname) ? ' / ' : '').($data->travelname ?? ''))),
                    ($data->tarrif ?? ''),
                    ($data->chkindate ?? ''),
                    ($data->expdepdate ?? ''),
                    ($data->depdate ?? '')
                );
                if ($printcondition != 3) {
                    $vals[] = ($data->mobileno ?? '');
                }

                foreach ($vals as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex($j + 1);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Name column left-aligned
                $nameColIdx = $printcondition == 1 ? 5 : ($printcondition == 2 ? 4 : 3);
                $sheet->getStyle(Coordinate::stringFromColumnIndex($nameColIdx).$currentRow)
                    ->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Summary block below table
            if ($occdata->count() > 0) {
                $currentRow++;
                $summaryRows = [
                    ['No. Of Rooms', $summary['rooms']],
                    ['Dayuse', $summary['dayuse']],
                    ['Total Person', $summary['totalperson']],
                    ['Plan Summary', $summary['plansummary']],
                ];
                foreach ($summaryRows as $srow) {
                    $sheet->setCellValue('A'.$currentRow, $srow[0]);
                    $sheet->mergeCells("B{$currentRow}:{$lastCol}{$currentRow}");
                    $sheet->setCellValue('B'.$currentRow, $srow[1]);
                    $sheet->getStyle('A'.$currentRow)->getFont()->setBold(true);
                    $currentRow++;
                }
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(12);
            $sheet->getColumnDimension('B')->setWidth(10);
            for ($i = 3; $i <= $colCount; $i++) {
                $sheet->getColumnDimension(
                    Coordinate::stringFromColumnIndex($i)
                )->setWidth(16);
            }

            // Download
            $filename = 'Occupancy_Report_'
                .Carbon::parse($fordate)->format('Ymd').'_to_'
                .Carbon::parse($todate)->format('Ymd').'_'
                .date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Occupancy Report Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    public function enviroform(Request $request)
    {
        $data = EnviroFom::where('propertyid', $this->propertyid)->first();

        return json_encode($data);
    }

    public function itemwisesale(Request $request)
    {
        $permission = revokeopen(171713);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $taxnames = Paycharge::select('revmast.name', 'paycharge.paycode', 'paycharge.taxper')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'T')
            ->whereNotNull('paycharge.taxper')
            ->groupBy('paycharge.paycode')
            ->get();
        $data = DB::table('guestfolio')->where('propertyid', $this->propertyid)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();
        $items = ItemMast::where('Property_ID', $this->propertyid)->groupBy('Code')->orderBy('Name', 'ASC')->get();

        return view('property.pos_itemwisesale', [
            'data' => $data,
            'fromdate' => $fromdate,
            'company' => $company,
            'statename' => $statename,
            'taxnames' => $taxnames,
            'departs' => $departs,
            'items' => $items,
        ]);
    }

    public function itemwiserepfetch(Request $request)
    {
        try {
            $fromDate = $request->input('fromdate');
            $toDate = $request->input('todate');
            $allOutlets = explode(',', $request->input('alloutlets'));
            $allitemgroups = explode(',', $request->input('allitemgroups'));
            $allitems = explode(',', $request->input('allitems'));
            $propertyId = $this->propertyid;
            $nckot = $request->nckot;

            $depart = Depart::where('propertyid', $propertyId)
                ->whereIn('dcode', $allOutlets)
                ->get();

            $shortname1 = [];
            $shortname2 = [];
            foreach ($depart as $row) {
                $shortname1[] = 'B'.$row->short_name;
                if ($nckot != 'N') {
                    $shortname2[] = 'N'.$row->short_name;
                }
            }

            if ($nckot == 'N') {
                $saleQuery = DB::table('sale1 as S')
                    ->select([
                        DB::raw('MAX(sk.docid) as DOC'),
                        'I.DispCode',
                        DB::raw('MAX(I.HSNCode) as HSNCODE'),
                        'I.Name as ITEMNAME',
                        DB::raw('MAX(U.name) as UNIT'),
                        DB::raw('0 as NCQTY'),
                        DB::raw('SUM(sk.qtyiss) as QTY'),
                        DB::raw('SUM(sk.amount) as VALUE1'),
                        DB::raw('SUM(sk.discamt) as DISC'),
                        DB::raw('SUM(sk.amount - sk.discapp) as VALUE2'),
                        DB::raw('MAX(IG.name) as ITEMGROUP'),
                        DB::raw('MAX(sk.restcode) as RestCode'),
                        DB::raw('MAX(D.name) as DepartCode'),
                    ])
                    ->join('stock as sk', 'S.docid', '=', 'sk.docid')
                    ->join('itemmast as I', function ($join) {
                        $join->on('sk.item', '=', 'I.Code')
                            ->on('sk.itemrestcode', '=', 'I.RestCode');
                    })
                    ->join('unitmast as U', function ($join) use ($propertyId) {
                        $join->on('U.ucode', '=', 'I.Unit')
                            ->where('U.propertyid', $propertyId);
                    })
                    ->join('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')
                    ->join('depart as D', 'S.restcode', '=', 'D.dcode')
                    ->whereIn('sk.vtype', $shortname1)
                    ->where('S.delflag', 'N')
                    ->whereIn('I.ItemGroup', $allitemgroups)
                    ->whereIn('I.Code', $allitems)
                    ->whereBetween('S.vdate', [$fromDate, $toDate])
                    ->whereIn('S.restcode', $allOutlets)
                    ->groupBy('ITEMNAME', 'sk.restcode')
                    ->orderBy('ITEMNAME')
                    ->get();
            } else {
                $saleQuery = DB::table('stock as sk')
                    ->select([
                        DB::raw('MAX(sk.docid) as DOC'),
                        'I.DispCode',
                        DB::raw('MAX(I.HSNCode) as HSNCODE'),
                        'I.Name as ITEMNAME',
                        DB::raw('MAX(U.name) as UNIT'),
                        DB::raw('SUM(CASE WHEN sk.vtype IN ('.implode(',', array_map(fn ($val) => "'$val'", $shortname1)).') THEN sk.qtyiss ELSE 0 END) as QTY'),
                        DB::raw('SUM(CASE WHEN sk.vtype IN ('.implode(',', array_map(fn ($val) => "'$val'", $shortname2)).') THEN sk.qtyiss ELSE 0 END) as NCQTY'),
                        DB::raw('SUM(sk.amount) as VALUE1'),
                        DB::raw('SUM(sk.discamt) as DISC'),
                        DB::raw('SUM(sk.amount - sk.discapp) as VALUE2'),
                        DB::raw('MAX(IG.name) as ITEMGROUP'),
                        'sk.restcode',
                        DB::raw('MAX(D.name) as DepartCode'),
                    ])
                    ->join('itemmast as I', function ($join) {
                        $join->on('sk.item', '=', 'I.Code')
                            ->on('sk.itemrestcode', '=', 'I.RestCode');
                    })
                    ->join('unitmast as U', function ($join) use ($propertyId) {
                        $join->on('U.ucode', '=', 'I.Unit')
                            ->where('U.propertyid', $propertyId);
                    })
                    ->join('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')
                    ->join('depart as D', 'sk.restcode', '=', 'D.dcode')
                    ->whereIn('sk.vtype', array_merge($shortname1, $shortname2))
                    ->where('sk.delflag', 'N')
                    ->whereIn('I.ItemGroup', $allitemgroups)
                    ->whereIn('I.Code', $allitems)
                    ->whereBetween('sk.vdate', [$fromDate, $toDate])
                    ->whereIn('sk.restcode', $allOutlets)
                    ->groupBy('ITEMNAME', 'sk.restcode')
                    ->orderBy('ITEMNAME')
                    ->get();
            }

            return response()->json([
                'items' => $saleQuery,
                'shortname1' => $shortname1,
                'shortname2' => $shortname2,
                'status' => 'success',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'An error occurred while fetching the report: '.$e->getMessage(),
            ], 500);
        }
    }

    public function printItemWiseSale(Request $request)
    {
        try {
            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $fromDate = $request->input('fromdate');
            $toDate = $request->input('todate');
            $allOutlets = explode(',', $request->input('alloutlets'));
            $allitemgroups = explode(',', $request->input('allitemgroups'));
            $allitems = explode(',', $request->input('allitems'));
            $nckot = $request->input('nckot', 'N');
            $groupby = $request->input('groupby', 'ITEMGROUP');
            $propertyId = $this->propertyid;

            $depart = Depart::where('propertyid', $propertyId)
                ->whereIn('dcode', $allOutlets)
                ->get();

            $shortname1 = [];
            $shortname2 = [];
            foreach ($depart as $row) {
                $shortname1[] = 'B'.$row->short_name;
                if ($nckot != 'N') {
                    $shortname2[] = 'N'.$row->short_name;
                }
            }

            if ($nckot == 'N') {
                $saleQuery = DB::table('sale1 as S')
                    ->select([
                        DB::raw('MAX(sk.docid) as DOC'),
                        'I.DispCode',
                        DB::raw('MAX(I.HSNCode) as HSNCODE'),
                        'I.Name as ITEMNAME',
                        DB::raw('MAX(U.name) as UNIT'),
                        DB::raw('0 as NCQTY'),
                        DB::raw('SUM(sk.qtyiss) as QTY'),
                        DB::raw('SUM(sk.amount) as VALUE1'),
                        DB::raw('SUM(sk.discamt) as DISC'),
                        DB::raw('SUM(sk.amount - sk.discapp) as VALUE2'),
                        DB::raw('MAX(IG.name) as ITEMGROUP'),
                        DB::raw('MAX(sk.restcode) as RestCode'),
                        DB::raw('MAX(D.name) as DepartCode'),
                    ])
                    ->join('stock as sk', 'S.docid', '=', 'sk.docid')
                    ->join('itemmast as I', function ($join) {
                        $join->on('sk.item', '=', 'I.Code')
                            ->on('sk.itemrestcode', '=', 'I.RestCode');
                    })
                    ->join('unitmast as U', function ($join) use ($propertyId) {
                        $join->on('U.ucode', '=', 'I.Unit')
                            ->where('U.propertyid', $propertyId);
                    })
                    ->join('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')
                    ->join('depart as D', 'S.restcode', '=', 'D.dcode')
                    ->whereIn('sk.vtype', $shortname1)
                    ->where('S.delflag', 'N')
                    ->whereIn('I.ItemGroup', $allitemgroups)
                    ->whereIn('I.Code', $allitems)
                    ->whereBetween('S.vdate', [$fromDate, $toDate])
                    ->whereIn('S.restcode', $allOutlets)
                    ->groupBy('ITEMNAME', 'sk.restcode')
                    ->orderBy('ITEMNAME')
                    ->get();
            } else {
                $saleQuery = DB::table('stock as sk')
                    ->select([
                        DB::raw('MAX(sk.docid) as DOC'),
                        'I.DispCode',
                        DB::raw('MAX(I.HSNCode) as HSNCODE'),
                        'I.Name as ITEMNAME',
                        DB::raw('MAX(U.name) as UNIT'),
                        DB::raw('SUM(CASE WHEN sk.vtype IN ('.implode(',', array_map(fn ($val) => "'$val'", $shortname1)).') THEN sk.qtyiss ELSE 0 END) as QTY'),
                        DB::raw('SUM(CASE WHEN sk.vtype IN ('.implode(',', array_map(fn ($val) => "'$val'", $shortname2)).') THEN sk.qtyiss ELSE 0 END) as NCQTY'),
                        DB::raw('SUM(sk.amount) as VALUE1'),
                        DB::raw('SUM(sk.discamt) as DISC'),
                        DB::raw('SUM(sk.amount - sk.discapp) as VALUE2'),
                        DB::raw('MAX(IG.name) as ITEMGROUP'),
                        'sk.restcode',
                        DB::raw('MAX(D.name) as DepartCode'),
                    ])
                    ->join('itemmast as I', function ($join) {
                        $join->on('sk.item', '=', 'I.Code')
                            ->on('sk.itemrestcode', '=', 'I.RestCode');
                    })
                    ->join('unitmast as U', function ($join) use ($propertyId) {
                        $join->on('U.ucode', '=', 'I.Unit')
                            ->where('U.propertyid', $propertyId);
                    })
                    ->join('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')
                    ->join('depart as D', 'sk.restcode', '=', 'D.dcode')
                    ->whereIn('sk.vtype', array_merge($shortname1, $shortname2))
                    ->where('sk.delflag', 'N')
                    ->whereIn('I.ItemGroup', $allitemgroups)
                    ->whereIn('I.Code', $allitems)
                    ->whereBetween('sk.vdate', [$fromDate, $toDate])
                    ->whereIn('sk.restcode', $allOutlets)
                    ->groupBy('ITEMNAME', 'sk.restcode')
                    ->orderBy('ITEMNAME')
                    ->get();
            }

            // Group the data
            $grouped = [];
            foreach ($saleQuery as $row) {
                $key = $row->{$groupby} ?? 'Others';
                if (! isset($grouped[$key])) {
                    $grouped[$key] = [];
                }
                $grouped[$key][] = $row;
            }

            $pdf = Pdf::loadView(
                'property.print.pos_itemwisesale_print',
                [
                    'company' => $company,
                    'fromDate' => $fromDate,
                    'toDate' => $toDate,
                    'grouped' => $grouped,
                    'nckot' => $nckot,
                    'groupby' => $groupby,
                ]
            )->setPaper('a4', 'landscape');

            return $pdf->stream('itemwise-sale-report.pdf');
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Print error: '.$e->getMessage(),
            ], 500);
        }
    }

    public function deletedunsettledbill(Request $request)
    {
        $permission = revokeopen(171714);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $taxnames = Paycharge::select('revmast.name', 'paycharge.paycode', 'paycharge.taxper')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'T')
            ->whereNotNull('paycharge.taxper')
            ->groupBy('paycharge.paycode')
            ->get();
        $data = DB::table('guestfolio')->where('propertyid', $this->propertyid)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();
        $items = ItemMast::where('Property_ID', $this->propertyid)->groupBy('Code')->orderBy('Name', 'ASC')->get();

        return view('property.pos_saledeletereport', [
            'data' => $data,
            'fromdate' => $fromdate,
            'company' => $company,
            'statename' => $statename,
            'taxnames' => $taxnames,
            'departs' => $departs,
            'items' => $items,
        ]);
    }

    public function saledelxhr(Request $request)
    {

        $alloutlets = $request->input('alloutlets');
        $delorunsettle = $request->input('delorunsettle');
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        if ($delorunsettle == 'delete') {
            $query = DB::table('sale1 as S')
                ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
                ->leftJoin('server_mast as W', 'S.waiter', '=', 'W.scode')
                ->select(
                    'S.vno',
                    'S.vdate',
                    'S.roomno',
                    'S.netamt',
                    'S.guaratt',
                    'W.name as Steward',
                    'D.name as OutletName',
                    'D.dcode as OutletCode',
                    'S.delremark',
                    'S.u_name',
                    'S.delflag'
                )
                ->where('S.propertyid', '=', $this->propertyid)
                ->whereBetween('S.vdate', [$fromdate, $todate])
                ->whereIn('S.restcode', explode(',', $alloutlets))
                ->where('S.delflag', '=', 'Y')
                ->get();
        } elseif ($delorunsettle == 'unsettle') {
            $query = Sale1::select(
                'sale1.vno',
                'sale1.vdate',
                'sale1.roomno',
                'sale1.netamt',
                'sale1.guaratt',
                'server_mast.name AS Steward',
                'depart.name AS OutletName',
                'depart.dcode AS OutletCode',
                'sale1.delremark',
                'sale1.u_name',
                'sale1.delflag'
            )
                ->leftJoin('depart', 'sale1.restcode', '=', 'depart.dcode')
                ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
                ->where('sale1.propertyid', '=', $this->propertyid)
                ->whereBetween('sale1.vdate', [$fromdate, $todate])
                ->whereIn('sale1.restcode', explode(',', $alloutlets))
                ->where('sale1.delflag', 'N')
                ->whereNotIn('sale1.docid', function ($query) {
                    $query->select('docid')->distinct()->from('paycharge');
                })
                ->get();
        } elseif ($delorunsettle == 'combine') {
            $query = DB::table('sale1 as S')
                ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
                ->leftJoin('server_mast as W', 'S.waiter', '=', 'W.scode')
                ->select(
                    'S.vno',
                    'S.vdate',
                    'S.roomno',
                    'S.netamt',
                    'S.guaratt',
                    'W.name as Steward',
                    'D.name as OutletName',
                    'D.dcode as OutletCode',
                    'S.delremark',
                    'S.u_name',
                    'S.delflag'
                )
                ->where('S.propertyid', '=', $this->propertyid)
                ->whereBetween('S.vdate', [$fromdate, $todate])
                ->whereIn('S.restcode', explode(',', $alloutlets))
                ->where(function ($query) {
                    $query->where('S.delflag', 'Y') // Delete condition
                        ->orWhere(function ($query) { // Unsettle condition
                            $query->where('S.delflag', 'N')
                                ->whereNotIn('S.docid', function ($subquery) {
                                    $subquery->select('docid')
                                        ->distinct()
                                        ->from('paycharge');
                                });
                        });
                })
                ->get();
        }

        $data = [
            'items' => $query,
        ];

        return json_encode($data);
    }

    public function getindex(Request $request)
    {
        if ($this->revokeopen(141114)->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $startdate = $request->input('startdate');
        $enddate = $request->input('enddate');

        $gueststayduration = RoomOcc::select('chkindate', DB::raw('COUNT(DISTINCT docid) as guest_count'))
            ->where('propertyid', $this->propertyid)
            ->whereBetween('chkindate', [$startdate, $enddate])
            ->groupBy('chkindate')
            ->orderBy('chkindate')
            ->get();

        $depart = Depart::where('propertyid', $this->propertyid)
            ->where('nature', 'Outlet')
            ->where('kot_yn', 'Y')
            ->get();

        $totalamount = 0.00;

        foreach ($depart as $row) {
            $vouchers = VoucherType::where('propertyid', $this->propertyid)
                ->where('restcode', $row->dcode)
                ->where('description', $row->short_name.' Memo Entry')
                ->get();

            foreach ($vouchers as $item) {
                $totalamount += Paycharge::where('propertyid', $this->propertyid)
                    ->where('vtype', $item->v_type)
                    ->where('vdate', $this->ncurdate)
                    ->sum('amtcr');
            }
        }

        $totalamount1 = Paycharge::where('propertyid', $this->propertyid)
            ->where('vtype', 'REC')
            ->where('vdate', $this->ncurdate)
            ->sum('amtcr');

        $combinedTotal = $totalamount + $totalamount1;

        $yesterday = date('Y-m-d', strtotime($this->ncurdate.' -2 day'));
        $yesterdaytime = date('Y-m-d H:i:s', strtotime($this->ncurdate.' -2 day'));
        $last7days = date('Y-m-d', strtotime($this->ncurdate.' -7 day'));
        $yesterdayroomchargamount = Paycharge::where('propertyid', $this->propertyid)
            ->where('vdate', $yesterday)
            ->sum('amtcr');

        $totalkotlast24 = Kot::where('propertyid', $this->propertyid)
            ->where('created_at', '>=', $yesterdaytime)
            ->distinct('docid')
            ->count('docid');

        $totalreservation7days = Bookings::where('Property_ID', $this->propertyid)
            ->where('vdate', '>=', $last7days)
            ->distinct('DocId')
            ->count('DocId');

        $totalamountoutletyesterday = 0.00;

        foreach ($depart as $row) {
            $vouchers = VoucherType::where('propertyid', $this->propertyid)
                ->where('restcode', $row->dcode)
                ->where('description', $row->short_name.' Memo Entry')
                ->get();

            foreach ($vouchers as $item) {
                $totalamountoutletyesterday += Paycharge::where('propertyid', $this->propertyid)
                    ->where('vtype', $item->v_type)
                    ->where('vdate', $yesterday)
                    ->sum('amtcr');
            }
        }

        $yesterdaycombinedTotal = $yesterdayroomchargamount + $totalamountoutletyesterday;

        $percentageChange = $yesterdaycombinedTotal > 0
            ? (($combinedTotal - $yesterdaycombinedTotal) / $yesterdaycombinedTotal) * 100
            : 0;

        $totalRooms = RoomMast::where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->count();

        $occupiedRoomsCount = DB::table('roomocc')
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.roomno', '=', 'roomocc.roomno')
                    ->on('paycharge.sno1', '=', 'roomocc.sno1');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereNull('roomocc.type')
            ->where(function ($query) {
                $query->where('paycharge.vtype', 'BRS')
                    ->orWhereNull('paycharge.vtype');
            })
            ->groupBy('roomocc.roomno', 'roomocc.sno1')
            ->get()
            ->count();

        $occupancyPercentage = 100;
        if ($totalRooms > 0) {
            $occupancyPercentage = ($occupiedRoomsCount / $totalRooms) * 100;
        }

        $data = [
            'occupancyPercentage' => $occupancyPercentage,
            'totalreservation7days' => $totalreservation7days,
            'totalkotlast24' => $totalkotlast24,
            'yesterdaycombinedTotal' => number_format($yesterdaycombinedTotal, 2),
            'yesterday' => $yesterday,
            'combinedTotal' => number_format($combinedTotal, 2),
            'gueststayduration' => $gueststayduration,
            'enddate' => $enddate,
            'percentageChange' => str_replace(',', '', number_format($percentageChange, 2)),
        ];

        return response()->json(['success' => 'Data Found', 'data' => $data]);
    }

    public function salesummary(Request $request)
    {
        $permission = revokeopen(171811);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $fromdate = $this->ncurdate;
        $taxnames = Paycharge::select('revmast.name', 'paycharge.paycode', 'paycharge.taxper')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'T')
            ->whereNotNull('paycharge.taxper')
            ->groupBy('paycharge.paycode')
            ->get();
        $data = DB::table('guestfolio')->where('propertyid', $this->propertyid)->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();
        $items = ItemMast::where('Property_ID', $this->propertyid)->groupBy('Code')->orderBy('Name', 'ASC')->get();

        return view('property.pos_salesummary', [
            'data' => $data,
            'fromdate' => $fromdate,
            'company' => $company,
            'statename' => $statename,
            'taxnames' => $taxnames,
            'departs' => $departs,
            'items' => $items,
        ]);
    }

    public function salesummaryrpt(Request $request)
    {
        $alloutlets = $request->input('alloutlets');
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $cgst = 'CGSS'.$this->propertyid;
        $sgst = 'SGSS'.$this->propertyid;
        $igst = 'IGSS'.$this->propertyid;

        $taxRates = DB::table('sale2')
            ->select('taxper')
            ->distinct()
            ->where('delflag', '<>', 'Y')
            ->whereBetween('vdate', [$fromdate, $todate])
            ->whereIn('restcode', explode(',', $alloutlets))
            ->where('propertyid', $this->propertyid)
            ->pluck('taxper')
            ->toArray();

        $dynamicColumns = [];
        foreach ($taxRates as $rate) {
            $r = str_replace('.', '_', $rate);

            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$cgst' AND T.taxper = $rate THEN T.basevalue END), 0.00) AS CGST_BASE_$r";
            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$cgst' AND T.taxper = $rate THEN T.taxamt END), 0.00) AS CGST_TAXAMT_$r";
            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$sgst' AND T.taxper = $rate THEN T.basevalue END), 0.00) AS SGST_BASE_$r";
            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$sgst' AND T.taxper = $rate THEN T.taxamt END), 0.00) AS SGST_TAXAMT_$r";
            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$igst' AND T.taxper = $rate THEN T.basevalue END), 0.00) AS IGST_BASE_$r";
            $dynamicColumns[] = "COALESCE(SUM(CASE WHEN T.taxcode = '$igst' AND T.taxper = $rate THEN T.taxamt END), 0.00) AS IGST_TAXAMT_$r";
        }

        $dynamicColumnsSql = implode(",\n            ", $dynamicColumns);

        $outletsArray = explode(',', $alloutlets);
        $placeholders = implode(',', array_fill(0, count($outletsArray), '?'));

        $sql = "
        WITH S1 AS (
            SELECT
                restcode,
                vdate,
                MIN(vno) AS MinBillNo,
                MAX(vno) AS MaxBillNo,
                SUM(netamt) AS NetAmt,
                SUM(taxable) AS Taxable,
                SUM(nontaxable) AS NonTaxable,
                SUM(roundoff) AS RoundOff,
                SUM(dedamt) AS DedAmt,
                SUM(addamt) AS AddAmt,
                SUM(servicecharge) AS ServiceCharge,
                SUM(discamt) AS DiscAmt,
                SUM(total) AS GoodsAmt
            FROM sale1
            WHERE delflag <> 'Y'
              AND vdate BETWEEN ? AND ?
              AND restcode IN ($placeholders)
            GROUP BY restcode, vdate
        ),
        T AS (
            SELECT
                docid,
                vdate,
                SUM(basevalue) AS basevalue,
                SUM(taxamt) AS taxamt,
                taxcode,
                taxper
            FROM sale2
            WHERE delflag <> 'Y'
              AND vdate BETWEEN ? AND ?
              AND restcode IN ($placeholders)
            GROUP BY docid, vdate, taxcode, taxper
        )
        SELECT
            d.name AS DepartName,
            S1.vdate,
            S1.MinBillNo,
            S1.MaxBillNo,
            S1.NetAmt,
            S1.Taxable,
            S1.NonTaxable,
            S1.RoundOff,
            S1.DedAmt,
            S1.AddAmt,
            S1.ServiceCharge,
            S1.DiscAmt,
            S1.GoodsAmt,
            $dynamicColumnsSql
        FROM S1
        LEFT JOIN sale1 S ON S1.restcode = S.restcode AND S1.vdate = S.vdate
        LEFT JOIN T ON T.docid = S.docid AND T.vdate = S.vdate
        LEFT JOIN depart d ON S1.restcode = d.dcode
        GROUP BY
            d.name,
            S1.vdate,
            S1.MinBillNo,
            S1.MaxBillNo,
            S1.NetAmt,
            S1.Taxable,
            S1.NonTaxable,
            S1.RoundOff,
            S1.DedAmt,
            S1.AddAmt,
            S1.ServiceCharge,
            S1.DiscAmt,
            S1.GoodsAmt
        ORDER BY d.name, S1.vdate
    ";

        $bindings = [
            $fromdate,
            $todate,
            ...$outletsArray,
            $fromdate,
            $todate,
            ...$outletsArray,
        ];

        $results = DB::select($sql, $bindings);

        return response()->json(['items' => $results]);
    }

    public function arrivallist(Request $request)
    {
        $permission = revokeopen(131211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $comp = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');
        $busssource = DB::table('booking')
            ->select('busssource.name', 'booking.BussSource')
            ->leftJoin('busssource', function ($join) {
                $join->on('busssource.bcode', '=', 'booking.BussSource')
                    ->on('busssource.propertyid', '=', 'booking.Property_ID');
            })
            ->where('booking.Property_ID', $this->propertyid)
            ->where('booking.BussSource', '!=', '')
            ->whereNotNull('booking.BussSource')
            ->groupBy('booking.BussSource')
            ->get();

        $bookingsource = Bookings::select('MarketSeg')
            ->where('booking.Property_ID', $this->propertyid)
            ->where(function ($query) {
                $query->where('booking.MarketSeg', '!=', '')
                    ->orWhereNotNull('booking.MarketSeg');
            })
            ->groupBy('booking.MarketSeg')
            ->get();

        return view('property.arrivallist', [
            'comp' => $comp,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
            'busssource' => $busssource,
            'bookingsource' => $bookingsource,
        ]);
    }

    public function arrivallistfetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $pendingyn = $request->input('pendingyn');
        $busssource = $request->input('busssource');
        $bookingsource = $request->input('bookingsource');

        $report = GrpBookinDetail::leftJoin('booking', 'booking.DocId', '=', 'grpbookingdetails.BookingDocid')
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'grpbookingdetails.BookingDocid')
            ->leftJoin('plan_mast', 'grpbookingdetails.Plan_Code', '=', 'plan_mast.pcode')
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
            ->leftJoin('subgroup AS S', 'booking.Company', '=', 'S.sub_code')
            ->leftJoin('subgroup AS T', 'booking.TravelAgency', '=', 'T.sub_code')
            ->leftJoin('bookingplandetails', function ($join) {
                $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->where('paycharge.sno', '1');
            })
            ->select([
                DB::raw('(SUM(paycharge.amtcr) - SUM(paycharge.amtdr)) / booking.NoofRooms AS advance'),
                DB::raw("CASE WHEN bookingplandetails.docid != '' THEN bookingplandetails.netplanamt ELSE grpbookingdetails.Tarrif END AS tarrifamount"),
                'T.name as travelname',
                'booking.Vtype',
                'booking.DocId',
                'grpbookingdetails.Sno',
                'grpbookingdetails.NoDays',
                'booking.BookNo AS ResNo',
                'grpbookingdetails.ContraDocId',
                'grpbookingdetails.GuestName AS GuestName',
                'booking.MobNo',
                'S.name AS Company',
                'grpbookingdetails.RoomDet AS RoomDet',
                'grpbookingdetails.ArrDate',
                'grpbookingdetails.ArrTime',
                'grpbookingdetails.Adults AS Pax',
                'grpbookingdetails.Childs AS Child',
                'grpbookingdetails.DepDate',
                'grpbookingdetails.DepTime',
                'plan_mast.name AS PlanName',
                'grpbookingdetails.RoomNo',
                'room_cat.name AS RoomType',
                'booking.ArrFrom AS ArrDetail',
                'booking.BookedBy',
                'booking.ResStatus',
                'booking.Remarks',
                'booking.U_Name',
            ])
            ->where('grpbookingdetails.Cancel', 'N')
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->whereBetween('grpbookingdetails.ArrDate', [$fromdate, $todate])
            ->groupBy('grpbookingdetails.BookingDocid', 'grpbookingdetails.Sno');

        if ($pendingyn == 'pending') {
            $report->where('grpbookingdetails.ContraDocId', '');
        }

        if ($busssource != 'all') {
            $report->where('booking.BussSource', $busssource);
        }
        if ($bookingsource != 'all') {
            $report->where('booking.MarketSeg', $bookingsource);
        }

        $report->orderByDesc('booking.BookNo')
            ->orderBy('grpbookingdetails.Sno');

        $main = $report->get();

        $docids = $main->pluck('DocId')->toArray();

        $roomInclusive = DB::table('room_inclusive')
            ->whereIn('docid', $docids)
            ->orderBy('sno')
            ->get()
            ->groupBy('docid');

        foreach ($main as $item) {
            $item->room_inclusive = $roomInclusive[$item->DocId] ?? [];
        }

        return response()->json(['data' => $main]);
    }

    public function dailyreport(Request $request)
    {
        $permission = revokeopen(191212);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = $this->ncurdate;
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $company = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name')->groupBy('sub_code')->get();
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();
        $items = ItemMast::where('Property_ID', $this->propertyid)->groupBy('Code')->orderBy('Name', 'ASC')->get();
        $taxes = [
            1 => 'CGSS'.$this->propertyid.'-CGST (SALES)',
            2 => 'SGSS'.$this->propertyid.'-SGST (SALES)',
            3 => 'NT'.$this->propertyid.'-NO TAX',
        ];

        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');

        return view('property.dailyreport', [
            'fordate' => $ncurdate,
            'comp' => $comp,
            'company' => $company,
            'departs' => $departs,
            'items' => $items,
            'taxes' => $taxes,
            'todate',
            'statename' => $statename,
        ]);
    }

    public function lookuprromtype(Request $request)
    {
        $permission = revokeopen(131212);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $resstatus = Bookings::where('Property_ID', $this->propertyid)->groupBy('ResStatus')->get();
        $comp = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');

        return view('property.lookuprromtype', [
            'comp' => $comp,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
            'resstatus' => $resstatus,
        ]);
    }

    public function lookuproomtypefetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $resstatus = $request->input('resstatus');
        $todate = date('Y-m-d', strtotime($fromdate.' +21 days'));

        $roomcategories = RoomCat::select('cat_code', 'name', 'norooms')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'y')
            ->orderBy('name')
            ->get();

        $totalrooms = RoomCat::where('propertyid', $this->propertyid)
            ->where('inclcount', 'y')
            ->sum('norooms');

        $results = [];

        foreach ($roomcategories as $category) {
            $dailyBusyCounts = [];
            $currentDate = $fromdate;

            while (strtotime($currentDate) <= strtotime($todate)) {
                $norooms = $category->norooms;

                $busyrooms_grp = GrpBookinDetail::where('Property_ID', $this->propertyid)
                    ->whereDate('ArrDate', '<=', $currentDate)
                    ->whereDate('DepDate', '>', $currentDate)
                    ->where('RoomCat', $category->cat_code)
                    ->where('ContraDocId', '')
                    ->where('Cancel', 'N')
                    ->sum('RoomDet');

                $busyrooms_occ = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('roomcat', $category->cat_code)
                    ->where('roomtype', 'ro')
                    ->whereDate('chkindate', '<=', $currentDate)
                    ->whereDate('depdate', '>', $currentDate)
                    ->whereNull('type')
                    ->count();

                $dailyBusyCounts[$currentDate] = $norooms - ($busyrooms_grp + $busyrooms_occ);
                $currentDate = date('Y-m-d', strtotime($currentDate.' +1 day'));
            }

            $results[] = [
                'category' => $category->name,
                'cat_code' => $category->cat_code,
                'daily_busy_counts' => $dailyBusyCounts,
                'busyrooms_grp' => $busyrooms_grp,
                'busyrooms_occ' => $busyrooms_occ,
            ];
        }

        $data = [
            'roomcategories' => $results,
            'totalrooms' => $totalrooms,
        ];

        return response()->json($data);
    }

    public function nckotreport(Request $request)
    {
        $permission = revokeopen(171715);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // Fetching the valid outlets for the given property ID
        $Outlets = DB::table('depart')
            ->select('dcode', 'Name')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Rest_Type', ['Outlet', 'Room Service'])
            ->where('pos', 'Y')
            ->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.nckotreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'outlets' => $Outlets,
            'statename' => $statename,
        ]);
    }

    public function nckotreportfetch(Request $request)
    {
        $fromdate = $request->fromdate;

        $todate = $request->todate;
        $outlet = $request->input('outlet'); // $request->outlet;

        $kotdata = DB::table('kot AS K')
            ->leftJoin('sale1 AS S', 'K.contradocid', '=', 'S.docid')
            ->leftJoin('depart AS D', 'K.restcode', '=', 'D.dcode')
            ->leftJoin('itemmast AS I', function ($join) {
                $join->on('K.item', '=', 'I.Code')
                    ->on('K.itemrestcode', '=', 'I.RestCode');
            })
            ->leftJoin('nctype_mast AS nc', 'K.nctype', '=', 'nc.ncode')
            ->select([
                'K.vno AS KOTNO',
                'K.vdate',
                'K.vtime',
                'nc.ncode',
                'K.restcode',
                'K.roomno',
                'K.qty',
                'K.rate',
                'K.amount',
                'D.name as DEPARTNAME',
                'I.Name as ITEMNAME',
                'K.ncreason AS Reason',
                'K.voidyn AS VoidYN',
                'K.u_name AS UserName',
            ])
            ->where('K.propertyid', $this->propertyid)
            ->where('K.voidyn', 'N')
            ->where('K.nckot', 'Y')
            ->whereBetween('K.VDate', [$fromdate, $todate])
            ->whereIn('K.restcode', $outlet)
            ->orderBy('K.restcode')
            ->orderBy('K.vdate')
            ->orderBy('K.vno')
            ->orderBy('nc.ncode')
            ->get();

        return json_encode($kotdata);
    }

    public function advresreport(Request $request)
    {
        $permission = revokeopen(131213);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.advresreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function advresreportfetch(Request $request)
    {
        // Validate inputs
        $request->validate([
            'fromdate' => 'required|date',
            'todate' => 'required|date',
        ]);

        $fromdate = $request->fromdate;
        $todate = $request->todate;

        $bookingData = DB::table('booking AS B')
            ->leftJoin('guestprof AS GF', 'B.guestprof', '=', 'GF.guestcode')
            ->leftJoin('grpbookingdetails AS G', 'B.DocId', '=', 'G.BookingDocid')
            ->leftJoin('paycharge AS PC', function ($join) {
                $join->on('B.DocId', '=', 'PC.refdocid')
                    ->whereIn('PC.vtype', ['ARRES', 'ADRES'])
                    ->where('PC.propertyid', $this->propertyid);
            })
            ->leftJoin('revmast AS RM', 'PC.paycode', '=', 'RM.rev_code')
            ->leftJoin('subgroup AS SU', 'B.Company', '=', 'SU.sub_code')
            ->leftJoin('subgroup AS ST', 'B.TravelAgency', '=', 'ST.sub_code')
            ->select([
                'B.DocId',
                'B.BookNo AS ResNo',
                'PC.vno AS Reciptno',
                'B.ResStatus AS Status',
                DB::raw("CASE 
                        WHEN PC.vtype = 'ADRES' THEN 'Advance' 
                        WHEN PC.vtype = 'ARRES' THEN 'Refund' 
                        ELSE 'Other' 
                    END AS PaymentType"),
                'B.vdate as ResDate',
                'GF.name as GuestName',
                'G.arrDate as ArrivalDate',
                'G.DepDate as Depdate',
                'PC.amtcr as Amount',
                'RM.name as PMode',
                'SU.name as Company',
                'ST.Name as TravelAgent',
                'PC.u_name',
            ])
            ->whereExists(function ($query) use ($fromdate, $todate) {
                $query->select(DB::raw(1))
                    ->from('paycharge AS PC')
                    ->whereColumn('PC.refdocid', 'B.DocId')
                    ->whereBetween('PC.vdate', [$fromdate, $todate])
                    ->where('PC.propertyid', $this->propertyid)
                    ->whereIn('PC.vtype', ['ARRES', 'ADRES']);
            })
            ->groupBy('PC.vno')
            ->orderBy('PC.vdate', 'ASC')
            ->orderBy('PC.vno', 'ASC')
            ->get();

        return response()->json($bookingData);
    }

    public function expectedcheckout(Request $request)
    {
        $permission = revokeopen(141216);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.expectedcheckout', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function expectedcheckoutfetch(Request $request)
    {
        $fromdate = $request->fromdate;

        $todate = $request->todate;
        $checkoutData = DB::table('guestfolio')
            ->select([
                'guestfolio.docid',
                'guestfolio.folio_no as FolioNo',
                'roomocc.roomno',
                'guestfolio.name',
                'roomocc.adult as PAX',
                'roomocc.deptime as ExpTime',
                'guestfolio.vdate as ChechINDate',
                DB::raw("CONCAT(roomocc.depdate, ' ', roomocc.deptime) AS Depdate"),
                'subgroup.name as CompanyName',
            ])
            ->join('roomocc', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'guestfolio.Company')
            ->where('guestfolio.propertyid', $this->propertyid)
            ->whereNull('roomocc.chkoutdate')
            ->whereBetween('roomocc.depdate', [$fromdate, $todate])
            ->orderBy('roomocc.roomno')
            ->get();

        return json_encode($checkoutData);
    }

    public function focc_report(Request $request)
    {
        $permission = revokeopen(191211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.focc_report', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function foccamount(Request $request)
    {
        $date = $request->date;
        $focc = Focc::where('propertyid', $this->propertyid)->where('vdate', $date)->first();

        return response()->json([$focc]);
    }

    public function foccreportprint(Request $request)
    {
        $permission = revokeopen(191211);
        if (is_null($permission) || $permission->print == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');

        return view('property.foccreportprint', [
            'comp' => $comp,
            'statename' => $statename,
        ]);
    }

    public function focc_reportfetch(Request $request)
    {
        $fordate = $request->input('fordate');
        $interestamount = $request->input('interestamount');

        $invenv = EnviroGeneral::where('propertyid', $this->propertyid)->first();
        if (! $invenv) {
            return response()->json([
                'status' => 'error',
                'message' => 'Please Define Enviro Inventory First',
            ]);
        }

        if ($interestamount != '0') {
            $chkfocc = Focc::where('propertyid', $this->propertyid)->where('vdate', $fordate)->first();

            if ($chkfocc) {
                $data = [
                    'interestamount' => $interestamount,
                    'updated_at' => $this->currenttime,
                ];

                Focc::where('propertyid', $this->propertyid)->where('vdate', $fordate)->update($data);
            } else {
                $data = [
                    'vdate' => $fordate,
                    'propertyid' => $this->propertyid,
                    'interestamount' => $interestamount,
                    'created_at' => $this->currenttime,
                ];

                Focc::insert($data);
            }
        }

        $frontofcsum = 0.00;
        $outletsum = 0.00;
        $banquetsum = 0.00;
        $miscolsum = 0.00;
        $misexpsum = 0.00;
        $compsum = 0.00;
        $othersum = 0.00;

        $fomoffice = DB::table('paycharge AS P')
            ->select([
                'P.docid',
                'G.name AS GuestName',
                'P.vtype',
                'P.vno AS RectNo',
                'FO.billno AS Billno',
                'P.foliono AS FolioNo',
                'P.folionodocid',
                'P.roomno AS Roomno',
                'P.paytype',
                DB::raw('CASE WHEN P.amtcr = 0.00 THEN -P.amtdr ELSE P.amtcr END AS Amount'),
            ])
            ->leftJoin('revmast AS PY', function ($join) {
                $join->on('P.paycode', '=', 'PY.rev_code')
                    ->where('PY.field_type', '=', 'P')
                    ->where('PY.propertyid', $this->propertyid);
            })
            ->leftJoin('guestprof AS G', function ($join) {
                $join->on('P.guestprof', '=', 'G.guestcode')
                    ->where('G.propertyid', $this->propertyid);
            })
            ->leftJoin('fombilldetails AS FO', function ($join) {
                $join->on('P.folionodocid', '=', 'FO.folionodocid')
                    ->where('FO.propertyid', $this->propertyid);
            })
            ->whereDate('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('P.restcode', 'FOM'.$this->propertyid)
            ->whereIn('P.paytype', ['Cash', 'Cash In Hand'])
            ->whereIn('P.vtype', ['ADRES', 'REC', 'REV'])
            ->groupBy([
                'P.vno',
                'P.vtype',
            ])
            ->orderBy('P.folionodocid')
            ->orderBy('P.foliono')
            ->orderBy('P.vtype')
            ->orderBy('P.vno')
            ->get();

        $reportdata = [];

        foreach ($fomoffice as $row) {
            $frontofcsum += $row->Amount;
            $reportdata[] = [
                'frontoffice' => 'Y',
                'guestname' => $row->GuestName,
                'rectno' => $row->RectNo,
                'foliono' => $row->FolioNo,
                'billno' => $row->Billno,
                'roomno' => $row->Roomno,
                'amount' => $row->Amount,
            ];
        }

        $depart = Depart::where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Room Service', 'Outlet'])
            ->orderBy('name', 'ASC')
            ->get();

        $departCodes = $depart->pluck('dcode')->toArray();

        $pos = DB::table('sale1 as S')
            ->selectRaw('
        MAX(S.docid) AS saledocid,
        SUM(S.netamt) AS TotalNetAmount,
        MAX(PC.paycode) AS MaxPayCode,
        MAX(PC.paytype) AS MaxPayType,
        MAX(D.name) AS DepartName,
        SUM(PC.amtcr) - SUM(PC.amtdr) AS Amount
    ')
            ->leftJoin('paycharge as PC', function ($join) use ($fordate, $departCodes) {
                $join->on('S.docid', '=', 'PC.docid')
                    ->where('PC.paytype', '=', 'Cash')
                    ->whereNotIn('PC.paycode', ['TOUT'.$this->propertyid])
                    ->whereIn('PC.restcode', $departCodes)
                    ->where('PC.vdate', '=', $fordate);
            })
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->where('S.propertyid', '=', $this->propertyid)
            ->groupBy('S.restcode')
            ->get();

        foreach ($pos as $row) {
            $outletsum += $row->Amount;
            $reportdata[] = [
                'pos' => 'Y',
                'outlet' => $row->DepartName,
                'amount' => $row->Amount,
                'docid' => $row->saledocid,
            ];
        }

        $banquet = DB::table('hallsale1 as S')
            ->selectRaw('
         MAX(S.docid) AS banqdocid,
         S.vno as billno,
         S.party,
         SUM(S.netamt) AS TotalNetAmount,
         MAX(PC.paycode) AS MaxPayCode,
         MAX(PC.paytype) AS MaxPayType,
         MAX(D.name) AS DepartName,
         SUM(PC.amtcr) - SUM(PC.amtdr) AS Amount
      ')
            ->leftJoin('paychargeh as PC', function ($join) use ($fordate) {
                $join->on('S.docid', '=', 'PC.docid')
                    ->where('PC.paytype', '=', 'Cash')
                    ->whereNotIn('PC.paycode', ['TOUT'.$this->propertyid])
                    ->where('PC.restcode', "BANQ$this->propertyid")
                    ->where('PC.vdate', '=', $fordate);
            })
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->where('S.propertyid', '=', $this->propertyid)
            ->groupBy('S.docid')
            ->get();

        foreach ($banquet as $row) {
            $banquetsum += $row->Amount;
            $reportdata[] = [
                'banquet' => 'Y',
                'outlet' => $row->party.' (Settlement)',
                'amount' => $row->Amount,
                'docid' => $row->banqdocid,
                'billno' => $row->billno,
            ];
        }

        $banquet2 = DB::table('hallbook as S')
            ->selectRaw('
         MAX(S.docid) AS banqdocid,
         S.vno as billno,
         S.partyname,
         MAX(PC.paycode) AS MaxPayCode,
         MAX(PC.paytype) AS MaxPayType,
         SUM(PC.amtcr) - SUM(PC.amtdr) AS Amount
      ')
            ->leftJoin('paychargeh as PC', function ($join) use ($fordate) {
                $join->on('S.docid', '=', 'PC.contradocid')
                    ->where('PC.paytype', '=', 'Cash')
                    ->where('PC.vtype', 'AD')
                    ->whereNotIn('PC.paycode', ['TOUT'.$this->propertyid])
                    ->where('PC.restcode', "BANQ$this->propertyid")
                    ->where('PC.vdate', '=', $fordate);
            })
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->where('S.propertyid', '=', $this->propertyid)
            ->groupBy('PC.paycode')
            ->groupBy('PC.amtcr')
            ->get();

        foreach ($banquet2 as $row) {
            $banquetsum += $row->Amount;
            $reportdata[] = [
                'banquet' => 'Y',
                'advance' => 'Y',
                'outlet' => $row->partyname.' (Advance)',
                'amount' => $row->Amount,
                'docid' => $row->banqdocid,
                'billno' => $row->billno,
            ];
        }

        $misccol = DB::table('expsheet')
            ->select([
                'expsheet.vno as Vouncherno',
                's2.name as ACName',
                'expsheet.cramt as Amount',
                'expsheet.remark',
            ])
            ->leftJoin('subgroup', 'expsheet.drac', '=', 'subgroup.sub_code')
            ->leftJoin('subgroup as s2', 'expsheet.crac', '=', 's2.sub_code')
            ->where('expsheet.vtype', 'HTSAL')
            ->where('expsheet.VDate', $fordate)
            ->where('subgroup.nature', 'Cash')
            ->whereNot('expsheet.delflag', 'Y')
            ->where('expsheet.propertyid', $this->propertyid)
            ->orderBy('ACName')
            ->get();

        foreach ($misccol as $row) {
            $miscolsum += $row->Amount;
            $reportdata[] = [
                'miscy' => 'Y',
                'acname' => $row->ACName,
                'voucherno' => $row->Vouncherno,
                'amount' => $row->Amount,
            ];
        }

        if ($invenv->cashpurcheffect == 'Y') {
            $expsheetData = DB::table('expsheet as e')
                ->leftJoin('subgroup as s', 'e.crac', '=', 's.sub_code')
                ->leftJoin('subgroup as s2', 'e.drac', '=', 's2.sub_code')
                ->selectRaw('
               e.vno as Vouncherno,
               s2.name as ACName,
               e.dramt as Amount,
               e.remark
            ')
                ->where('e.Vtype', 'HTEXP')
                ->where('s.nature', 'Cash')
                ->where('e.delflag', '!=', 'Y')
                ->where('e.vdate', $fordate)
                ->where('e.propertyid', $this->propertyid);

            $purchData = DB::table('purch1 as p')
                ->selectRaw("
               NULL as Vouncherno,
               'Cash Purchase' as ACName,
               SUM(p.NetAmt) as Amount,
               NULL as remark
            ")
                ->where('p.vdate', $fordate)
                ->where('p.propertyid', $this->propertyid)
                ->where('p.vtype', 'PBPC');

            $miscexpense = DB::query()
                ->fromSub($expsheetData->unionAll($purchData), 't')
                ->orderBy('ACName')
                ->get();

            // Log::info('miscexpense data: ' . json_encode($miscexpense));
        } else {
            $miscexpense = DB::table('expsheet as e')
                ->leftJoin('subgroup as s', 'e.crac', '=', 's.sub_code')
                ->leftJoin('subgroup as s2', 'e.drac', '=', 's2.sub_code')
                ->select(
                    'e.vno as Vouncherno',
                    'e.dramt as Amount',
                    'e.remark',
                    's2.name as ACName'
                )
                ->where('e.Vtype', 'HTEXP')
                ->where('e.VDate', $fordate)
                ->where('s.nature', 'Cash')
                ->whereNot('e.delflag', 'Y')
                ->where('e.propertyid', $this->propertyid)
                ->orderBy('s.name')
                ->get();
        }

        foreach ($miscexpense as $row) {
            $misexpsum += (float) $row->Amount;
            $reportdata[] = [
                'miscx' => 'Y',
                'acname' => $row->ACName,
                'voucherno' => $row->Vouncherno,
                'amount' => $row->Amount,
                'remark' => $row->remark,
            ];
        }

        $companyrec = DB::table('paycharge as P')
            ->leftJoin('revmast as PY', 'P.PayCode', '=', 'PY.rev_code')
            ->leftJoin('subgroup as S', 'P.comp_code', '=', 'S.Sub_Code')
            ->leftJoin('fombilldetails as FO', function ($join) {
                $join->on('P.folionodocid', '=', 'FO.folionodocid')
                    ->where('FO.status', 'settle');
            })
            ->select([
                'P.vno as vno',
                'P.foliono as foliono',
                'FO.billno as billno',
                'S.name as compname',
                'P.amtcr as amount',
            ])
            ->where(function ($query) {
                $query->where(function ($q) {
                    $q->whereIn('P.VTYPE', ['ARRES', 'ADRES', 'AWRES'])
                        ->where('P.propertyid', $this->propertyid);
                })
                    ->orWhere(function ($q) {
                        $q->whereNotIn('P.VTYPE', ['ARRES', 'ADRES', 'AWRES'])
                            ->where(function ($sub) {
                                $sub->whereNull('P.contraid')
                                    ->orWhere('P.contraid', '');
                            });
                    });
            })
            ->where('P.Vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('P.modeset', 'S')
            ->where('P.RESTCODE', 'FOM'.$this->propertyid)
            ->where('PY.Field_Type', 'P')
            ->where('P.PayType', 'Company')
            ->where('P.Vtype', '<>', 'CHK')
            ->groupBy('FO.billno')
            ->orderBy('S.Name')
            ->orderBy('P.FOLIONODOCID')
            ->orderBy('P.FOLIONO')
            ->orderBy('P.VTYPE')
            ->orderBy('P.VNO')
            ->get();

        foreach ($companyrec as $row) {
            $compsum += $row->amount;
            $reportdata[] = [
                'comp' => 'Y',
                'compname' => $row->compname,
                'vno' => $row->vno,
                'billno' => $row->billno,
                'foliono' => $row->foliono,
                'amount' => $row->amount,
            ];
        }

        $companyrecpos = DB::table('paycharge as P')
            ->leftJoin('revmast as PY', function ($join) {
                $join->on('P.PayCode', '=', 'PY.rev_code')
                    ->where('PY.Field_Type', 'P');
            })
            ->leftJoin('subgroup as S', 'P.comp_code', '=', 'S.Sub_Code')
            ->join('sale1 as S1', 'P.docid', '=', 'S1.docid')
            ->select([
                'P.vno as vno',
                'P.foliono as foliono',
                'S1.vno as billno',
                'S.name as compname',
                'P.amtcr as amount',
            ])
            ->where('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('P.guestprof', '')
            ->where('P.RESTCODE', '!=', 'FOM'.$this->propertyid)
            ->where('P.PayType', 'Company')
            ->where('P.Vtype', '<>', 'CHK')
            ->orderBy('P.vno')
            ->get();

        foreach ($companyrecpos as $row) {
            $compsum += $row->amount;
            $reportdata[] = [
                'comp' => 'Y',
                'compname' => $row->compname,
                'vno' => $row->vno,
                'billno' => $row->billno,
                'foliono' => $row->foliono,
                'amount' => $row->amount,
            ];
        }

        $companyrecbanq = DB::table('paychargeh as P')
            ->leftJoin('revmast as PY', function ($join) {
                $join->on('P.PayCode', '=', 'PY.rev_code')
                    ->where('PY.Field_Type', 'P');
            })
            ->leftJoin('subgroup as S', 'P.comp_code', '=', 'S.Sub_Code')
            ->join('hallsale1 as S1', 'P.docid', '=', 'S1.docId')
            ->select([
                'P.vno as vno',
                DB::raw("'' as foliono"),
                'S1.vno as billno',
                'S.name as compname',
                'P.amtcr as amount',
            ])
            ->where('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('P.RESTCODE', '=', 'BANQ'.$this->propertyid)
            ->where('P.PayType', 'Company')
            ->where('P.Vtype', '<>', 'CHK')
            ->orderBy('P.vno')
            ->get();

        foreach ($companyrecbanq as $row) {
            $compsum += $row->amount;
            $reportdata[] = [
                'comp' => 'Y',
                'compname' => $row->compname,
                'vno' => $row->vno,
                'billno' => $row->billno,
                'foliono' => $row->foliono,
                'amount' => $row->amount,
            ];
        }

        $otherpay = DB::table('paycharge as P')
            ->select(
                'P.vno as vno',
                DB::raw('MAX(P.foliono) as foliono'),
                'booking.BookNo as resno',
                'FO.billno as billno',
                'G.name as guestname',
                'P.paytype as paymode',
                'P.restcode',
                'P.vtype',
                'P.vno',
                DB::raw('SUM(P.amtcr) as amount')
            )
            ->leftJoin('revmast as PY', 'P.PayCode', '=', 'PY.rev_code')
            ->leftJoin('booking', 'booking.DocId', '=', 'P.refdocid')
            ->leftJoin('guestprof AS G', function ($join) {
                $join->on('P.guestprof', '=', 'G.guestcode');
            })
            // ->leftJoin('fombilldetails as FO', function ($join) {
            //    $join->on('P.folionodocid', '=', 'FO.folionodocid')
            //       ->on('P.sno1', '=', 'FO.sno1');
            // })
            ->leftJoin('fombilldetails as FO', function ($join) {
                $join->on('P.folionodocid', '=', 'FO.folionodocid')
                    ->whereRaw('FO.sno1 = CASE WHEN P.msno1 = 0 THEN P.sno1 ELSE P.msno1 END')
                    ->where('FO.status', 'settle');
            })
            ->where(function ($query) {
                $query->where(function ($q) {
                    $q->whereIn('P.VTYPE', ['ARRES', 'ADRES', 'AWRES'])
                        ->where('P.propertyid', $this->propertyid);
                })
                    ->orWhere(function ($q) {
                        $q->whereNotIn('P.VTYPE', ['ARRES', 'ADRES', 'AWRES'])
                            ->where(function ($sub) {
                                $sub->whereNull('P.contraid')
                                    ->orWhere('P.contraid', '');
                            });
                    });
            })
            ->whereDate('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('PY.Field_Type', 'P')
            ->whereIn('P.PayType', [
                'UPI',
                'Credit Card',
                'Cheque',
                'Hold',
                'Complementary',
                'Staff',
                'Other',
            ])
            ->where('P.Vtype', '<>', 'CHK')
            // ->groupBy('P.folionodocid')
            ->groupBy('P.docid')
            ->groupBy('P.sno')
            // ->groupBy('FO.sno1')
            // ->orderBy('P.paytype')
            ->orderBy('FO.billno')
            ->get();

        foreach ($otherpay as $row) {

            if ($row->restcode != 'FOM'.$this->propertyid) {
                $row->billno = $row->vtype.' / '.$row->vno;
                $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $row->restcode)->value('name');
                $row->guestname = $depart ? $depart : $row->restcode;
            }

            $othersum += $row->amount;
            $reportdata[] = [
                'otherpay' => 'Y',
                'guestname' => $row->guestname,
                'vno' => $row->vno,
                'billno' => $row->billno,
                'foliono' => $row->foliono.' / '.$row->resno,
                'amount' => $row->amount,
                'paymode' => $row->paymode,
            ];
        }

        $misccolotherpay = DB::table('expsheet')
            ->select([
                'expsheet.vno as Vouncherno',
                'subgroup.nature as paymode',
                'subgroup.name as ACName',
                'expsheet.cramt as Amount',
                'expsheet.remark',
            ])
            ->leftJoin('subgroup', 'expsheet.drac', '=', 'subgroup.sub_code')
            ->where('expsheet.vtype', 'HTSAL')
            ->where('expsheet.VDate', $fordate)
            ->whereNot('subgroup.nature', 'Cash')
            ->where('expsheet.propertyid', $this->propertyid)
            ->orderBy('ACName')
            ->get();

        foreach ($misccolotherpay as $row) {
            $othersum += $row->Amount;
            $reportdata[] = [
                'otherpay' => 'Y',
                'paymode' => $row->paymode,
                'vno' => $row->Vouncherno,
                'amount' => $row->Amount,
                'guestname' => $row->ACName,
                'billno' => '',
                'foliono' => '',
            ];
        }

        $otherpaybanq = DB::table('paychargeh as P')
            ->select(
                'P.vno as vno',
                'hallbook.partyname as partyname',
                'hallbook.vno as billno',
                'P.paytype as paymode',
                'P.restcode',
                'P.vtype',
                'P.vno',
                DB::raw('SUM(P.amtcr) as amount')
            )
            ->leftJoin('revmast as PY', 'P.PayCode', '=', 'PY.rev_code')
            ->Join('hallbook', 'hallbook.docid', '=', 'P.contradocid')
            ->whereDate('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('PY.Field_Type', 'P')
            ->whereIn('P.PayType', [
                'UPI',
                'Credit Card',
                'Cheque',
                'Hold',
                'Complementary',
                'Staff',
                'Other',
            ])
            ->where('P.vtype', 'AD')
            ->groupBy('P.paytype')
            ->groupBy('P.amtcr')
            ->get();

        foreach ($otherpaybanq as $row) {

            $othersum += $row->amount;
            $reportdata[] = [
                'otherpay' => 'Y',
                'banq' => 'Y',
                'guestname' => $row->partyname.' (Advance)',
                'vno' => $row->vno,
                'billno' => '',
                'foliono' => '',
                'amount' => $row->amount,
                'paymode' => $row->paymode,
            ];
        }

        $otherpaybanqsale = DB::table('paychargeh as P')
            ->select(
                'P.vno as vno',
                'hallsale1.party as partyname',
                'hallsale1.vno as billno',
                'P.paytype as paymode',
                'P.restcode',
                'P.vtype',
                'P.vno',
                DB::raw('SUM(P.amtcr) as amount')
            )
            ->leftJoin('revmast as PY', 'P.PayCode', '=', 'PY.rev_code')
            ->Join('hallsale1', 'hallsale1.docid', '=', 'P.docid')
            ->whereDate('P.vdate', $fordate)
            ->where('P.propertyid', $this->propertyid)
            ->where('PY.Field_Type', 'P')
            ->whereIn('P.PayType', [
                'UPI',
                'Credit Card',
                'Cheque',
                'Hold',
                'Complementary',
                'Staff',
                'Other',
            ])
            ->groupBy('P.paytype')
            ->groupBy('P.amtcr')
            ->get();

        foreach ($otherpaybanqsale as $row) {

            $othersum += $row->amount;
            $reportdata[] = [
                'otherpay' => 'Y',
                'banq' => 'Y',
                'guestname' => $row->partyname.' (Settlement)',
                'vno' => $row->vno,
                'billno' => $row->billno,
                'foliono' => '',
                'amount' => $row->amount,
                'paymode' => $row->paymode,
            ];
        }

        $totalamount = 0.00;

        foreach ($reportdata as $row) {
            $totalamount += (float) $row['amount'];
        }

        $data = [
            'reportdata' => $reportdata,
            'departCodes' => $departCodes,
            'totalamount' => $totalamount,
            'frontofcsum' => $frontofcsum,
            'outletsum' => $outletsum,
            'banquetsum' => $banquetsum,
            'miscolsum' => $miscolsum,
            'misexpsum' => $misexpsum,
            'compsum' => $compsum,
            'othersum' => $othersum,
        ];

        return json_encode($data);
    }

    public function pendingkotreport(Request $request)
    {
        $permission = revokeopen(171717);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $propertyId = $request->input('propertyid', $this->propertyid);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.pendingkotreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,

            'propertyid' => $propertyId,

        ]);
    }

    public function pendingkotreportfetch(Request $request)
    {
        $fromdate = $request->fromdate;

        $todate = $request->todate;

        $propertyId = $request->input('propertyid', $this->propertyid);

        $validOutlets = DB::table('depart')
            ->select('dcode')
            ->where('propertyid', $propertyId)
            ->whereIn('Rest_Type', ['Outlet', 'Room Service'])
            ->where('pos', 'Y')
            ->pluck('dcode');

        // Fetching the merged report based on the valid outlets
        $mergedReport = DB::table('kot AS K')
            ->join('server_mast AS W', 'K.waiter', '=', 'W.scode')
            ->join('itemmast AS I', function ($join) {
                $join->on('K.item', '=', 'I.Code')
                    ->on('K.restcode', '=', 'I.RestCode');
            })
            ->join('depart AS D', function ($join) use ($propertyId) {
                $join->on('K.restcode', '=', 'D.dcode')
                    ->where('D.propertyid', $propertyId)
                    ->whereIn('D.Rest_Type', ['Outlet', 'Room Service'])
                    ->where('D.pos', 'Y');
            })
            ->join('voucher_type AS V', 'K.vtype', '=', 'V.v_type')
            ->select(
                'D.name AS Outlet',
                'D.dcode',
                'K.vdate AS Date',
                'K.vtime AS Time',
                'K.vno AS KOTno',
                'W.name AS WAITER',
                'K.roomno AS RoomTableNo',
                'K.u_name AS UserName',
                'I.Name AS ItemName',
                'K.qty AS Qty'
            )
            ->where('K.nckot', '<>', 'Y')
            ->whereBetween('K.vdate', [$fromdate, $todate])
            ->whereIn('V.ncat', ['RSKOT'])
            ->where('K.pending', 'Y')
            ->whereRaw("IFNULL(K.delflag, '') <> 'Y'")
            ->where('K.voidyn', '<>', 'Y')
            ->whereIn('K.restcode', $validOutlets)
            ->where('K.propertyid', $propertyId)
            ->groupBy('K.vno')
            ->groupBy('K.item')
            ->orderBy('K.docid')
            ->orderBy('K.restcode')
            ->orderBy('I.Name')
            ->get();

        return response()->json($mergedReport);
    }

    public function kotwisedetail(Request $request)
    {
        $permission = revokeopen(171716);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // Fetching the valid outlets for the given property ID
        $Outlets = DB::table('depart')
            ->select('dcode', 'Name')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Rest_Type', ['Outlet', 'Room Service'])
            ->where('pos', 'Y')
            ->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.kotwisedetail', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'outlets' => $Outlets,
            'propertyid' => $this->propertyid,
        ]);
    }

    public function kotwisedetailfetch(Request $request)
    {

        //   echo "<pre>";
        //     print_r( $request->all());
        //     die();

        $fromdate = $request->fromdate;

        $todate = $request->todate;

        $outlet = $request->input('outlet'); // $request->outlet;

        $propertyId = $request->input('propertyid', $this->propertyid);

        // Fetching the valid outlets for the given property ID
        $Outlets = DB::table('depart')
            ->select('dcode')
            ->where('propertyid', $propertyId)
            ->whereIn('Rest_Type', ['Outlet', 'Room Service'])
            ->where('pos', 'Y')
            ->pluck('dcode');

        // Fetching the details based on the selected outlets and date range
        $details = DB::table('kot AS K')
            ->select(
                'D.name AS OutLet',
                'K.vdate AS Date',
                'K.roomno AS TableRoomNo',
                'K.vno AS KOTNO',
                'K.vtime AS KotTime',
                'S.vno AS BILLNO',
                'K.qty AS QTY',
                'K.rate AS Rate',
                'K.amount as kotamount',
                'I.Name AS ITEMNAME',
                DB::raw("CASE K.voidyn WHEN 'N' THEN 'No' WHEN 'Y' THEN 'Yes' ELSE '' END AS VoidYN"),
                'KL.VTime AS EditTime',
                'W.Name AS WAITER',
                'K.u_name AS UserName',
                'K.remarks AS Remarks',
                'K.reasons AS Reason'
            )
            ->leftJoin('sale1 AS S', 'K.contradocid', '=', 'S.DocId')
            ->leftJoin('itemmast AS I', function ($join) {
                $join->on('K.item', '=', 'I.Code')
                    ->on('K.itemrestcode', '=', 'I.RestCode');
            })
            ->leftJoin('depart AS D', function ($join) use ($propertyId) {
                $join->on('K.restcode', '=', 'D.dcode')
                    ->where('D.propertyid', $propertyId)
                    ->whereIn('D.Rest_Type', ['Outlet', 'Room Service'])
                    ->where('D.pos', 'Y');
            })
            ->leftJoin(DB::raw('(SELECT DocId, MAX(VTime) AS VTime FROM kotlog GROUP BY DocId) AS KL'), 'KL.DocId', '=', 'K.DocId')
            ->leftJoin('server_mast AS W', 'K.waiter', '=', 'W.scode')
            ->where('K.propertyid', $propertyId)
            ->whereNotIn(DB::raw('IFNULL(S.DELFLAG, "")'), ['D', 'Y'])
            ->where('K.nckot', 'N')
            ->whereBetween('K.vdate', [$fromdate, $todate])
            ->whereIn('K.restcode', $outlet)
            ->orderBy('K.restcode')
            ->orderBy('K.vdate')
            ->orderBy('K.vno')
            ->get();

        return response()->json($details);
    }

    public function roominventory(Request $request)
    {

        $permission = revokeopen(141311);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.roominventory', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,

        ]);
    }

    public function roominventoryfetch(Request $request)
    {
        $status = $request->status;

        $allrooms = DB::table('room_mast as RM')
            ->join('room_cat as RC', function ($join) {
                $join->on('RM.room_cat', '=', 'RC.cat_code')
                    ->on('RM.type', '=', 'RC.type');
            })
            ->select('RM.rcode as ROOMNO', 'RC.Name as RoomCatName')
            ->where([
                ['RM.Type', 'RO'],
                ['RM.InclCount', 'Y'],
                ['RM.propertyid', $this->propertyid],
            ])
            ->orderBy('RM.rcode')
            ->get();

        $occupiedRooms = DB::table('room_mast as RM')
            ->select([
                'RM.rcode as ROOMNO',
                'RC.name as RoomCatName',
                'RO.foliono',
                'RO.sno1',
                'RO.docid',
                'RO.chkindate',
                'RO.type',
                'RO.depdate',
                'RO.adult',
                'RO.children as Child',
                'PL.name as PlanName',
                'RO.roomrate',
                'RO.planamt',
                'GF.name AS GuestName',
                'B.bookedby',
                'BS.name AS MarketSeg',
                'S.name AS CompanyName',
                DB::raw('MAX(RL.rate2) as RackRate'),
            ])
            ->join('room_cat as RC', function ($join) {
                $join->on('RM.room_cat', '=', 'RC.cat_code')
                    ->on('RM.type', '=', 'RC.type')
                    ->where('RC.propertyid', $this->propertyid);
            })
            ->join('roomocc as RO', function ($join) {
                $join->on('RM.rcode', '=', 'RO.roomno')
                    ->where('RO.propertyid', $this->propertyid)
                    ->whereNull('RO.chkoutdate');
            })
            ->leftJoin('guestfolio as GF', function ($join) {
                $join->on('RO.foliono', '=', 'GF.folio_no')
                    ->where('GF.propertyid', $this->propertyid);
            })
            ->leftJoin('booking as B', 'B.DocId', '=', 'GF.bookingdocid')
            ->leftJoin('busssource as BS', function ($join) {
                $join->on('GF.busssource', '=', 'BS.bcode')
                    ->where('BS.propertyid', $this->propertyid);
            })
            ->leftJoin('subgroup as S', function ($join) {
                $join->on('GF.company', '=', 'S.sub_code')
                    ->where('S.propertyid', $this->propertyid);
            })
            ->leftJoin('plan_mast as PL', function ($join) {
                $join->on('RO.plancode', '=', 'PL.pcode')
                    ->where('PL.propertyid', $this->propertyid);
            })
            ->leftJoin('rate_list as RL', function ($join) {
                $join->on('RM.rcode', '=', 'RL.roomno')
                    ->where('RL.propertyid', $this->propertyid)
                    ->orOn('RM.room_cat', '=', 'RL.room_cat');
            })
            ->where([
                ['RM.type', 'RO'],
                ['RM.inclcount', 'Y'],
                ['RM.propertyid', $this->propertyid],
            ])
            ->groupBy([
                'RM.rcode',
                'RC.name',
                'RO.foliono',
                'RO.chkindate',
                'RO.type',
                'RO.depdate',
                'RO.adult',
                'RO.children',
                'PL.name',
                'RO.roomrate',
                'RO.planamt',
                'GF.name',
                'B.bookedby',
                'BS.name',
                'S.name',
            ])
            ->orderBy('RO.roomno')
            ->orderBy('RM.rcode')
            ->get();

        foreach ($occupiedRooms as $key => $row) {
            $balance = Paycharge::select('sno1', 'folionodocid', DB::raw('SUM(amtdr) - SUM(amtcr) as balanceamt'))
                ->where([
                    ['folionodocid', '=', $row->docid],
                    ['sno1', '=', $row->sno1],
                ])
                ->value('balanceamt');

            $advanceamt = Paycharge::select(DB::raw('SUM(amtcr) as Advance'))
                ->where([
                    ['folionodocid', '=', $row->docid],
                    ['sno1', '=', $row->sno1],
                ])
                ->value('Advance');

            // if ($balance !== null || $advanceamt !== null) {
            $row->Advance = $advanceamt ?? 0;
            $row->balanceamt = $balance ?? 0;
            // }
            // else {
            //     unset($occupiedRooms[$key]);
            // }
        }

        return response()->json([
            'allrooms' => $allrooms,
            'roomdetails' => $occupiedRooms,
            'status' => $status,
        ]);
    }

    public function voidbills(Request $request)
    {
        $permission = revokeopen(171812);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.voidbills', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function voidbillsfetch(Request $request)
    {
        $fromdate = $request->fromdate;
        $todate = $request->todate;

        $Outlets = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('nature', ['Outlet', 'Room Service'])
            ->where('pos', 'Y')
            ->pluck('dcode')
            ->toArray();

        $sales = DB::table('sale1 as S')
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->leftJoin('server_mast as W', 'S.waiter', '=', 'W.scode')
            ->leftJoin('room_mast as RM', function ($join) {
                $join->on('S.restcode', '=', 'RM.rest_code');
            })
            ->select([
                'D.name as DEPARTNAME',
                DB::raw("CONCAT_WS('/', S.vtype, S.VNO) AS BillNo"),
                'S.vdate as Date',
                'S.vtime as Time',
                'W.name as WAITER',
                'S.roomno as TableRoomno',
                'S.netamt as NetSale',
                'S.delremark as Remark',
                'S.u_name as UserName',
            ])
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->where('S.delflag', 'Y')
            ->whereIn('S.restcode', $Outlets)
            // ->whereRaw("COALESCE(RM.type, '') IN ('TB')")
            ->groupBy('S.docid')
            ->orderBy('D.name')
            ->orderBy('S.vno')
            ->get();

        return response()->json($sales);
    }

    public function fomsalesummary(Request $request)
    {
        $permission = revokeopen(141312);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $fromdate = $this->ncurdate;
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $outlets = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name')->get();

        $roundoff = 'ROFF'.$this->propertyid;
        $disc = 'DISC'.$this->propertyid;
        $cgst = 'CGSS'.$this->propertyid;
        $sgst = 'SGSS'.$this->propertyid;
        $tout = 'TOUT'.$this->propertyid;

        $revmast = Revmast::where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM'.$this->propertyid)
            ->whereNotIn('revmast.rev_code', [$roundoff, $disc, $cgst, $sgst, $tout])
            ->whereNot('seq_no', '0')
            ->distinct()
            ->orderBy('seq_no', 'ASC')
            ->get();

        return view('property.fomsalesummary', [
            'fromdate' => $fromdate,
            'statename' => $statename,
            'company' => $company,
            'outlets' => $outlets,
            'revmast' => $revmast,
        ]);
    }

    private function fomsalesummaryData($fromdate, $todate)
    {
        $propertyId = $this->propertyid;
        $from = $fromdate;
        $to = $todate;

        $totalRooms = DB::table('room_mast')
            ->where('propertyid', $propertyId)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->count();

        $roundoff = 'ROFF'.$propertyId;
        $disc = 'DISC'.$propertyId;
        $cgst = 'CGSS'.$propertyId;
        $sgst = 'SGSS'.$propertyId;
        $tout = 'TOUT'.$propertyId;
        $rmch = 'RMCH'.$propertyId;

        $revmast = Revmast::where('revmast.propertyid', $propertyId)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM'.$propertyId)
            ->whereNotIn('revmast.rev_code', [$roundoff, $disc, $cgst, $sgst, $tout])
            ->whereNot('seq_no', '0')
            ->distinct()
            ->orderBy('seq_no', 'ASC')
            ->get();

        $selectFields = [
            'vdate',
            DB::raw("SUM(CASE WHEN paycode = '{$rmch}' THEN 1 ELSE 0 END) as chargableroom"),
            DB::raw("SUM(CASE WHEN paycode = '{$cgst}' THEN amtdr ELSE 0 END) as cgst"),
            DB::raw("SUM(CASE WHEN paycode = '{$sgst}' THEN amtdr ELSE 0 END) as sgst"),
        ];

        foreach ($revmast as $row) {
            $code = $row->rev_code;
            $alias = 'sum_'.strtolower($code);
            $selectFields[] = DB::raw("SUM(CASE WHEN paycode = '{$code}' THEN amtdr ELSE 0 END) as {$alias}");
        }

        $paySummary = DB::table('paycharge')
            ->select($selectFields)
            ->where('propertyid', $propertyId)
            ->whereBetween('vdate', [$from, $to])
            ->groupBy('vdate');

        $data = DB::table('paycharge as p')
            ->joinSub($paySummary, 'summary', function ($join) {
                $join->on('p.vdate', '=', 'summary.vdate');
            })
            ->leftJoin('roomocc', 'roomocc.chkindate', '=', 'p.vdate')
            ->select(array_merge([
                'p.vdate',
                'p.folionodocid',
                DB::raw("CONCAT(MIN(p.billno), ' to ', MAX(p.billno)) AS billno_range"),
                DB::raw("$totalRooms as totalrooms"),
                DB::raw('summary.chargableroom'),
                DB::raw("($totalRooms - summary.chargableroom) as balance_room"),
                DB::raw("ROUND((summary.chargableroom / NULLIF($totalRooms, 0)) * 100, 2) as roomoccupancy"),
                DB::raw('summary.cgst'),
                DB::raw('summary.sgst'),
            ], $revmast->map(function ($rev) {
                $alias = 'sum_'.strtolower($rev->rev_code);

                return DB::raw("summary.{$alias} as {$alias}");
            })->all()))
            ->where('p.propertyid', $propertyId)
            ->whereBetween('p.vdate', [$from, $to])
            ->groupBy('p.vdate')
            ->orderBy('p.vdate')
            ->get();

        // return $data;

        foreach ($data as $row) {
            foreach ($revmast as $rev) {
                $alias = 'sum_'.strtolower($rev->rev_code);
                $row->$alias = $row->$alias ?? 0;
            }
        }

        $outlets = Depart::where('propertyid', $propertyId)
            ->whereIn('nature', ['Room Service', 'Outlet'])
            ->orderBy('name')
            ->get();
        foreach ($data as $row) {
            $vdate = $row->vdate;

            foreach ($outlets as $outlet) {
                $shortName = strtolower($outlet->short_name);
                $restcode = $outlet->dcode;

                $result = DB::table('sale1')
                    ->selectRaw('SUM(total) AS total_sum, SUM(discamt) AS discamt_sum')
                    ->where('propertyid', $this->propertyid)
                    ->where('restcode', $restcode)
                    ->where('vdate', $vdate)
                    ->where('delflag', 'N')
                    ->first();

                $totalSum = $result->total_sum;
                $discamtSum = $result->discamt_sum;
                $row->$shortName = $totalSum - $discamtSum;
            }

            $paycode = 'RMCH'.$this->propertyid;

            // $groupColumn = Paycharge::where('propertyid', $this->propertyid)
            //    ->where('vdate', $vdate)
            //    ->where('paycode', $paycode)
            //    ->groupBy('relatedfolionodocid')
            //    ->exists() ? 'relatedfolionodocid' : 'folionodocid';

            $groupColumn = 'folionodocid';

            $folioDocIds = DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('vdate', $vdate)
                ->where('paycode', $paycode)
                ->groupBy($groupColumn)
                ->pluck($groupColumn)
                ->toArray();

            $roomOccQuery = DB::table('roomocc')
                ->whereIn('docid', $folioDocIds)
                ->where(function ($query) {
                    $query->where('type', '!=', 'C');
                });

            $row->adult = $roomOccQuery->sum('adult') ?? 0;
            $row->children = $roomOccQuery->sum('children') ?? 0;
        }

        return [$data, $revmast];
    }

    public function fetchfomsalesummary(Request $request)
    {
        [$data, $revmast] = $this->fomsalesummaryData($request->fromdate, $request->todate);

        return response()->json([
            'report' => $data,
            'revmast' => $revmast,
        ]);
    }

    // FOM Sale Summary — prepared rows for Print / Excel

    private function fomsalesummaryPreparedRows($fromdate, $todate)
    {
        [$data, $revmast] = $this->fomsalesummaryData($fromdate, $todate);

        $outlets = Depart::where('propertyid', $this->propertyid)
            ->whereIn('nature', ['Room Service', 'Outlet'])
            ->orderBy('name')
            ->get();

        $rmchKey = 'sum_'.strtolower('RMCH'.$this->propertyid);
        $revNames = $revmast->pluck('name')->all();
        $outNames = $outlets->pluck('name')->all();

        $rows = [];
        foreach ($data as $row) {
            $revVals = [];
            $revTotal = 0.0;
            $hasAmount = false;

            foreach ($revmast as $r) {
                $key = 'sum_'.strtolower($r->rev_code ?? '');
                $v = (float) ($row->$key ?? 0);
                $revVals[] = $v;
                $revTotal += $v;
                if ($v > 0) {
                    $hasAmount = true;
                }
            }

            $outVals = [];
            foreach ($outlets as $o) {
                $v = (float) ($row->{strtolower($o->short_name)} ?? 0);
                $outVals[] = $v;
                if ($v > 0) {
                    $hasAmount = true;
                }
            }

            if (! $hasAmount) {
                continue;
            }

            $roomCharge = (float) ($row->$rmchKey ?? 0);
            $arr = $row->chargableroom > 0 ? $roomCharge / $row->chargableroom : 0.0;
            $total = $revTotal + array_sum($outVals);

            $rows[] = [
                'date' => Carbon::parse($row->vdate)->format('d/m/Y'),
                'totalrooms' => (int) $row->totalrooms,
                'chargable' => (int) $row->chargableroom,
                'occupancy' => (float) $row->roomoccupancy,
                'arr' => $arr,
                'balance' => (int) $row->balance_room,
                'adult' => (int) $row->adult,
                'child' => (int) $row->children,
                'revs' => $revVals,
                'outs' => $outVals,
                'total' => $total,
                'cgst' => (float) $row->cgst,
                'sgst' => (float) $row->sgst,
                'grand' => $total + (float) $row->cgst + (float) $row->sgst,
            ];
        }

        // Column totals (footer)
        $tot = [
            'rooms' => 0,
            'chargable' => 0,
            'balance' => 0,
            'adult' => 0,
            'child' => 0,
            'revs' => array_fill(0, count($revNames), 0.0),
            'outs' => array_fill(0, count($outNames), 0.0),
            'total' => 0.0,
            'cgst' => 0.0,
            'sgst' => 0.0,
            'grand' => 0.0,
        ];
        foreach ($rows as $r) {
            $tot['rooms'] += $r['totalrooms'];
            $tot['chargable'] += $r['chargable'];
            $tot['balance'] += $r['balance'];
            $tot['adult'] += $r['adult'];
            $tot['child'] += $r['child'];
            foreach ($r['revs'] as $k => $v) {
                $tot['revs'][$k] += $v;
            }
            foreach ($r['outs'] as $k => $v) {
                $tot['outs'][$k] += $v;
            }
            $tot['total'] += $r['total'];
            $tot['cgst'] += $r['cgst'];
            $tot['sgst'] += $r['sgst'];
            $tot['grand'] += $r['grand'];
        }

        $occupancy = $tot['rooms'] > 0 ? ($tot['chargable'] / $tot['rooms']) * 100 : 0.0;

        $rmchTotal = 0.0;
        foreach ($rows as $r) {
            $rmchTotal += $r['arr'] * $r['chargable'];
        }
        $arrTotal = $tot['chargable'] > 0 ? $rmchTotal / $tot['chargable'] : 0.0;

        $totals = array_merge($tot, [
            'occupancy' => $occupancy,
            'arr' => $arrTotal,
        ]);

        return [$rows, $revNames, $outNames, $totals];
    }

    // FOM Sale Summary — Print (DomPDF, contributionreport format)

    public function printfomsalesummary(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        [$rows, $revNames, $outNames, $totals] = $this->fomsalesummaryPreparedRows($fromdate, $todate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.fomsalesummaryprint', [
            'company' => $company,
            'rows' => $rows,
            'revNames' => $revNames,
            'outNames' => $outNames,
            'totals' => $totals,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape')
            ->stream('fom-sale-summary-'.$fromdate.'-to-'.$todate.'.pdf');
    }

    //  FOM Sale Summary — Excel Export (contributionreport format) git

    public function exportfomsalesummary(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            [$rows, $revNames, $outNames, $totals] = $this->fomsalesummaryPreparedRows($fromdate, $todate);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $headers = array_merge(
                ['Date', 'No Of Rooms', 'Chargeable Rooms', 'Occupancy %', 'ARR', 'Balance Room', 'Adult', 'Child'],
                $revNames,
                $outNames,
                ['TOTAL', 'CGST', 'SGST', 'Grand Total']
            );
            $colCount = count($headers);                       // 8 + rev + outlets + 4
            $lastIdx = $colCount;
            $lastCol = Coordinate::stringFromColumnIndex($lastIdx);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('FOM Sale Summary');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'FOM Sale Summary');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.Carbon::parse($fromdate)->format('d/m/Y')
                .'  To: '.Carbon::parse($todate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Money columns (ARR se aage sab money): E..end except occupancy D
            $moneyCols = [];
            for ($i = 5; $i <= $colCount; $i++) {
                $moneyCols[] = Coordinate::stringFromColumnIndex($i);
            }

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($rows as $i => $r) {
                $sheet->setCellValue('A'.$currentRow, $r['date']);
                $sheet->setCellValue('B'.$currentRow, $r['totalrooms']);
                $sheet->setCellValue('C'.$currentRow, $r['chargable']);
                $sheet->setCellValue('D'.$currentRow, $r['occupancy']);

                $vals = array_merge(
                    [$r['arr'], $r['balance'], $r['adult'], $r['child']],
                    array_values($r['revs']),
                    array_values($r['outs']),
                    [$r['total'], $r['cgst'], $r['sgst'], $r['grand']]
                );
                foreach ($vals as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex(5 + $j);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Money columns right-aligned + number format
                foreach ($moneyCols as $mCol) {
                    $sheet->getStyle($mCol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                    $sheet->getStyle($mCol.$currentRow)->getNumberFormat()
                        ->setFormatCode('#,##0.00');
                }

                $currentRow++;
            }

            // Grand Total Row
            $sheet->setCellValue('A'.$currentRow, 'Total');
            $sheet->setCellValue('B'.$currentRow, $totals['rooms']);
            $sheet->setCellValue('C'.$currentRow, $totals['chargable']);
            $sheet->setCellValue('D'.$currentRow, round($totals['occupancy'], 2));

            $totVals = array_merge(
                [$totals['arr'], $totals['balance'], $totals['adult'], $totals['child']],
                array_values($totals['revs']),
                array_values($totals['outs']),
                [$totals['total'], $totals['cgst'], $totals['sgst'], $totals['grand']]
            );
            foreach ($totVals as $j => $v) {
                $col = Coordinate::stringFromColumnIndex(5 + $j);
                $sheet->setCellValue($col.$currentRow, $v);
            }

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            foreach ($moneyCols as $mCol) {
                $sheet->getStyle($mCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle($mCol.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                    ->setWrapText(false);
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(12);
            $sheet->getColumnDimension('B')->setWidth(9);
            $sheet->getColumnDimension('C')->setWidth(10);
            $sheet->getColumnDimension('D')->setWidth(10);
            for ($i = 5; $i <= $colCount; $i++) {
                $sheet->getColumnDimension(
                    Coordinate::stringFromColumnIndex($i)
                )->setWidth(13);
            }

            // Download
            $filename = 'FOM_Sale_Summary_'
                .Carbon::parse($fromdate)->format('Ymd').'_to_'
                .Carbon::parse($todate)->format('Ymd').'_'
                .date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('FOM Sale Summary Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    public function contributionreport(Request $request)
    {
        $permission = revokeopen(141313);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $ncurdate = $this->ncurdate;
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');
        $years = DateHelper::Uniqueyears($this->propertyid);

        return view('property.contributionreport', [
            'ncurdate' => $ncurdate,
            'statename' => $statename,
            'comp' => $comp,
            'years' => $years,
        ]);
    }

    public function fetchcontribuition(Request $request)
    {
        $year = $request->vprefix;
        $month = $request->formonth;
        $type = $request->type;

        $month = str_pad($month, 2, '0', STR_PAD_LEFT);
        $startdate = "$year-$month-01";
        $enddate = date('Y-m-t', strtotime($startdate));

        if ($type == 'Corporate') {
            $col = 'GF.company';
        } else {
            $col = 'GF.travelagent';
        }

        $data = DB::table('subgroup as sg')
            ->join('guestfolio as GF', function ($join) use ($col) {
                $join->on($col, '=', 'sg.sub_code')
                    ->where('GF.propertyid', $this->propertyid);
            })
            ->join('paycharge as p', function ($join) use ($startdate, $enddate) {
                $join->on('p.folionodocid', '=', 'GF.docid')
                    ->whereBetween('p.vdate', [$startdate, $enddate])
                    ->where('p.propertyid', $this->propertyid)
                    ->where('p.paycode', 'RMCH'.$this->propertyid)
                    ->where('p.vtype', 'RC')
                    ->where('p.sno', 1);
            })
            ->where('sg.propertyid', $this->propertyid)
            ->where('sg.comp_type', $type)
            ->select(
                'sg.sub_code as compcode',
                'sg.name as company_name',
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 1 THEN 1 ELSE 0 END) AS `01`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 2 THEN 1 ELSE 0 END) AS `02`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 3 THEN 1 ELSE 0 END) AS `03`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 4 THEN 1 ELSE 0 END) AS `04`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 5 THEN 1 ELSE 0 END) AS `05`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 6 THEN 1 ELSE 0 END) AS `06`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 7 THEN 1 ELSE 0 END) AS `07`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 8 THEN 1 ELSE 0 END) AS `08`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 9 THEN 1 ELSE 0 END) AS `09`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 10 THEN 1 ELSE 0 END) AS `10`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 11 THEN 1 ELSE 0 END) AS `11`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 12 THEN 1 ELSE 0 END) AS `12`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 13 THEN 1 ELSE 0 END) AS `13`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 14 THEN 1 ELSE 0 END) AS `14`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 15 THEN 1 ELSE 0 END) AS `15`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 16 THEN 1 ELSE 0 END) AS `16`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 17 THEN 1 ELSE 0 END) AS `17`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 18 THEN 1 ELSE 0 END) AS `18`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 19 THEN 1 ELSE 0 END) AS `19`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 20 THEN 1 ELSE 0 END) AS `20`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 21 THEN 1 ELSE 0 END) AS `21`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 22 THEN 1 ELSE 0 END) AS `22`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 23 THEN 1 ELSE 0 END) AS `23`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 24 THEN 1 ELSE 0 END) AS `24`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 25 THEN 1 ELSE 0 END) AS `25`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 26 THEN 1 ELSE 0 END) AS `26`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 27 THEN 1 ELSE 0 END) AS `27`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 28 THEN 1 ELSE 0 END) AS `28`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 29 THEN 1 ELSE 0 END) AS `29`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 30 THEN 1 ELSE 0 END) AS `30`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 31 THEN 1 ELSE 0 END) AS `31`'),
                DB::raw('COUNT(p.id) AS total_nights'),
                DB::raw('COALESCE(SUM(p.amtdr), 0) AS revenue')
            )
            ->groupBy('sg.sub_code', 'sg.name')
            ->orderBy('sg.name', 'asc')
            ->get();

        foreach ($data as $row) {

            $amountsum = Paycharge::where('paycharge.propertyid', $this->propertyid)
                ->leftJoin('guestfolio as GF', function ($join) {
                    $join->on('paycharge.folionodocid', '=', 'GF.docid')
                        ->where('GF.propertyid', $this->propertyid);
                })
                ->where($col, $row->compcode)
                ->where('paycharge.paycode', 'RMCH'.$this->propertyid)
                ->whereBetween('paycharge.vdate', [$startdate, $enddate])
                ->sum('paycharge.amtdr');

            $row->revenue = $amountsum;
        }

        return json_encode($data);
    }

    public function exportContributionExcel(Request $request)
    {
        try {
            $year = $request->query('vprefix');
            $month = $request->query('formonth');
            $type = $request->query('type');

            $month = str_pad($month, 2, '0', STR_PAD_LEFT);
            $startdate = "$year-$month-01";
            $enddate = date('Y-m-t', strtotime($startdate));

            if ($type == 'Corporate') {
                $col = 'GF.company';
            } else {
                $col = 'GF.travelagent';
            }

            $data = DB::table('subgroup as sg')
                ->join('guestfolio as GF', function ($join) use ($col) {
                    $join->on($col, '=', 'sg.sub_code')
                        ->where('GF.propertyid', $this->propertyid);
                })
                ->join('paycharge as p', function ($join) use ($startdate, $enddate) {
                    $join->on('p.folionodocid', '=', 'GF.docid')
                        ->whereBetween('p.vdate', [$startdate, $enddate])
                        ->where('p.propertyid', $this->propertyid)
                        ->where('p.paycode', 'RMCH'.$this->propertyid)
                        ->where('p.vtype', 'RC')
                        ->where('p.sno', 1);
                })
                ->where('sg.propertyid', $this->propertyid)
                ->where('sg.comp_type', $type)
                ->select(
                    'sg.sub_code as compcode',
                    'sg.name as company_name',
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 1  THEN 1 ELSE 0 END) AS `01`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 2  THEN 1 ELSE 0 END) AS `02`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 3  THEN 1 ELSE 0 END) AS `03`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 4  THEN 1 ELSE 0 END) AS `04`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 5  THEN 1 ELSE 0 END) AS `05`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 6  THEN 1 ELSE 0 END) AS `06`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 7  THEN 1 ELSE 0 END) AS `07`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 8  THEN 1 ELSE 0 END) AS `08`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 9  THEN 1 ELSE 0 END) AS `09`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 10 THEN 1 ELSE 0 END) AS `10`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 11 THEN 1 ELSE 0 END) AS `11`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 12 THEN 1 ELSE 0 END) AS `12`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 13 THEN 1 ELSE 0 END) AS `13`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 14 THEN 1 ELSE 0 END) AS `14`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 15 THEN 1 ELSE 0 END) AS `15`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 16 THEN 1 ELSE 0 END) AS `16`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 17 THEN 1 ELSE 0 END) AS `17`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 18 THEN 1 ELSE 0 END) AS `18`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 19 THEN 1 ELSE 0 END) AS `19`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 20 THEN 1 ELSE 0 END) AS `20`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 21 THEN 1 ELSE 0 END) AS `21`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 22 THEN 1 ELSE 0 END) AS `22`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 23 THEN 1 ELSE 0 END) AS `23`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 24 THEN 1 ELSE 0 END) AS `24`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 25 THEN 1 ELSE 0 END) AS `25`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 26 THEN 1 ELSE 0 END) AS `26`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 27 THEN 1 ELSE 0 END) AS `27`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 28 THEN 1 ELSE 0 END) AS `28`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 29 THEN 1 ELSE 0 END) AS `29`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 30 THEN 1 ELSE 0 END) AS `30`'),
                    DB::raw('SUM(CASE WHEN DAY(p.vdate) = 31 THEN 1 ELSE 0 END) AS `31`'),
                    DB::raw('COUNT(p.id) AS total_nights'),
                    DB::raw('COALESCE(SUM(p.amtdr), 0) AS revenue')
                )
                ->groupBy('sg.sub_code', 'sg.name')
                ->orderBy('sg.name', 'asc')
                ->get();

            foreach ($data as $row) {
                $amountsum = Paycharge::where('paycharge.propertyid', $this->propertyid)
                    ->leftJoin('guestfolio as GF', function ($join) {
                        $join->on('paycharge.folionodocid', '=', 'GF.docid')
                            ->where('GF.propertyid', $this->propertyid);
                    })
                    ->where($col, $row->compcode)
                    ->where('paycharge.paycode', 'RMCH'.$this->propertyid)
                    ->whereBetween('paycharge.vdate', [$startdate, $enddate])
                    ->sum('paycharge.amtdr');

                $row->revenue = $amountsum;
            }

            $data = $data->filter(fn ($r) => (float) $r->revenue > 0)->values();

            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $monthName = date('F Y', strtotime($startdate));
            // A=#(1), B=Company(2), C=01(3)...AG=31(33), AH=TotalNights(34), AI=Revenue(35)
            $totNightsColIdx = 34;
            $revColIdx = 35;
            $lastCol = Coordinate::stringFromColumnIndex($revColIdx); // AI

            // ── Build Grand Totals ────────────────────────────────────────────
            $grandNights = 0;
            $grandRevenue = 0.0;
            $dayTotals = array_fill(1, 31, 0);
            foreach ($data as $row) {
                for ($d = 1; $d <= 31; $d++) {
                    $k = str_pad($d, 2, '0', STR_PAD_LEFT);
                    $dayTotals[$d] += (int) ($row->$k ?? 0);
                }
                $grandNights += (int) (float) $row->total_nights;
                $grandRevenue += (float) $row->revenue;
            }

            // ── Spreadsheet ───────────────────────────────────────────────────
            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Contribution Report');

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'Company Wise Nights — Contribution Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Month + Type
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Month: '.$monthName.'  |  Type: '.$type);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = array_merge(
                ['#', 'Company Name'],
                array_map(fn ($d) => str_pad($d, 2, '0', STR_PAD_LEFT), range(1, 31)),
                ['Total Nights', 'Revenue']
            );
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->company_name);

                for ($d = 1; $d <= 31; $d++) {
                    $k = str_pad($d, 2, '0', STR_PAD_LEFT);
                    $cCol = Coordinate::stringFromColumnIndex($d + 2);
                    $sheet->setCellValue($cCol.$currentRow, (int) ($row->$k ?? 0));
                }

                $totNightsCol = Coordinate::stringFromColumnIndex($totNightsColIdx);
                $revCol = Coordinate::stringFromColumnIndex($revColIdx);
                $sheet->setCellValue($totNightsCol.$currentRow, (int) (float) $row->total_nights);
                $sheet->setCellValue($revCol.$currentRow, (float) $row->revenue);

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Company name left-aligned
                $sheet->getStyle('B'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                // Revenue right-aligned + number format
                $sheet->getStyle($revCol.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                    ->setWrapText(false);
                $sheet->getStyle($revCol.$currentRow)->getNumberFormat()
                    ->setFormatCode('#,##0.00');

                $currentRow++;
            }

            // Grand Total Row
            $totNightsCol = Coordinate::stringFromColumnIndex($totNightsColIdx);
            $revCol = Coordinate::stringFromColumnIndex($revColIdx);

            $sheet->mergeCells('A'.$currentRow.':B'.$currentRow);
            $sheet->setCellValue('A'.$currentRow, 'Grand Total');
            for ($d = 1; $d <= 31; $d++) {
                $cCol = Coordinate::stringFromColumnIndex($d + 2);
                $sheet->setCellValue($cCol.$currentRow, $dayTotals[$d]);
            }
            $sheet->setCellValue($totNightsCol.$currentRow, $grandNights);
            $sheet->setCellValue($revCol.$currentRow, $grandRevenue);

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle($revCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle($revCol.$currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                ->setWrapText(false);

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(28);
            for ($d = 1; $d <= 31; $d++) {
                $sheet->getColumnDimension(
                    Coordinate::stringFromColumnIndex($d + 2)
                )->setWidth(4.5);
            }
            $totNightsCol = Coordinate::stringFromColumnIndex($totNightsColIdx);
            $revCol = Coordinate::stringFromColumnIndex($revColIdx);
            $sheet->getColumnDimension($totNightsCol)->setWidth(14);
            $sheet->getColumnDimension($revCol)->setWidth(18);

            // ── Download ─────────────────────────────────────────────────────
            $filename = 'Contribution_Report_'.$type.'_'.$monthName.'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Contribution Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── Contribution Report — Print (Barryvdh DomPDF) ──────────────────────────

    public function printcontributionreport(Request $request)
    {
        $permission = revokeopen(141313);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $year = $request->vprefix;
        $month = str_pad($request->formonth, 2, '0', STR_PAD_LEFT);
        $type = $request->type;

        $startdate = "$year-$month-01";
        $enddate = date('Y-m-t', strtotime($startdate));

        if ($type == 'Corporate') {
            $col = 'GF.company';
        } else {
            $col = 'GF.travelagent';
        }

        $data = DB::table('subgroup as sg')
            ->join('guestfolio as GF', function ($join) use ($col) {
                $join->on($col, '=', 'sg.sub_code')
                    ->where('GF.propertyid', $this->propertyid);
            })
            ->join('paycharge as p', function ($join) use ($startdate, $enddate) {
                $join->on('p.folionodocid', '=', 'GF.docid')
                    ->whereBetween('p.vdate', [$startdate, $enddate])
                    ->where('p.propertyid', $this->propertyid)
                    ->where('p.paycode', 'RMCH'.$this->propertyid)
                    ->where('p.vtype', 'RC')
                    ->where('p.sno', 1);
            })
            ->where('sg.propertyid', $this->propertyid)
            ->where('sg.comp_type', $type)
            ->select(
                'sg.sub_code as compcode',
                'sg.name as company_name',
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 1  THEN 1 ELSE 0 END) AS `01`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 2  THEN 1 ELSE 0 END) AS `02`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 3  THEN 1 ELSE 0 END) AS `03`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 4  THEN 1 ELSE 0 END) AS `04`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 5  THEN 1 ELSE 0 END) AS `05`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 6  THEN 1 ELSE 0 END) AS `06`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 7  THEN 1 ELSE 0 END) AS `07`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 8  THEN 1 ELSE 0 END) AS `08`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 9  THEN 1 ELSE 0 END) AS `09`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 10 THEN 1 ELSE 0 END) AS `10`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 11 THEN 1 ELSE 0 END) AS `11`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 12 THEN 1 ELSE 0 END) AS `12`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 13 THEN 1 ELSE 0 END) AS `13`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 14 THEN 1 ELSE 0 END) AS `14`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 15 THEN 1 ELSE 0 END) AS `15`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 16 THEN 1 ELSE 0 END) AS `16`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 17 THEN 1 ELSE 0 END) AS `17`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 18 THEN 1 ELSE 0 END) AS `18`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 19 THEN 1 ELSE 0 END) AS `19`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 20 THEN 1 ELSE 0 END) AS `20`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 21 THEN 1 ELSE 0 END) AS `21`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 22 THEN 1 ELSE 0 END) AS `22`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 23 THEN 1 ELSE 0 END) AS `23`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 24 THEN 1 ELSE 0 END) AS `24`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 25 THEN 1 ELSE 0 END) AS `25`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 26 THEN 1 ELSE 0 END) AS `26`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 27 THEN 1 ELSE 0 END) AS `27`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 28 THEN 1 ELSE 0 END) AS `28`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 29 THEN 1 ELSE 0 END) AS `29`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 30 THEN 1 ELSE 0 END) AS `30`'),
                DB::raw('SUM(CASE WHEN DAY(p.vdate) = 31 THEN 1 ELSE 0 END) AS `31`'),
                DB::raw('COUNT(p.id) AS total_nights'),
                DB::raw('COALESCE(SUM(p.amtdr), 0) AS revenue')
            )
            ->groupBy('sg.sub_code', 'sg.name')
            ->orderBy('sg.name', 'asc')
            ->get();

        foreach ($data as $row) {
            $amountsum = Paycharge::where('paycharge.propertyid', $this->propertyid)
                ->leftJoin('guestfolio as GF', function ($join) {
                    $join->on('paycharge.folionodocid', '=', 'GF.docid')
                        ->where('GF.propertyid', $this->propertyid);
                })
                ->where($col, $row->compcode)
                ->where('paycharge.paycode', 'RMCH'.$this->propertyid)
                ->whereBetween('paycharge.vdate', [$startdate, $enddate])
                ->sum('paycharge.amtdr');

            $row->revenue = $amountsum;
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.contributionreportprint', [
            'company' => $company,
            'data' => $data,
            'startdate' => $startdate,
            'enddate' => $enddate,
            'type' => $type,
            'reportTitle' => 'Company Wise Nights',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('contribution-report-'.$year.'-'.$month.'.pdf');
    }

    // Menu Item Rate Report - Load Page
    public function menuitemratereport(Request $request)
    {

        // Fetch outlets (depart) where nature is 'outlet' or 'room services'
        $outlets = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('nature', ['outlet', 'room services'])
            ->select('dcode', 'Name')
            ->orderBy('Name')
            ->get();
        $ncur = $this->ncurdate;

        return view('property.reports.menuitemratereport', [
            'outlets' => $outlets,
            'ncur' => $ncur,
        ]);
    }

    // Fetch Item Groups by Selected Outlet (AJAX)
    public function fetchitemgroupsbyoutlet(Request $request)
    {
        $departCode = $request->input('depart_code');

        if (! $departCode) {
            return json_encode([]);
        }

        // Get RestCode from depart code
        $restCode = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $departCode)
            ->value('dcode');

        if (! $restCode) {
            return json_encode([]);
        }

        // Fetch item groups for this outlet/restcode
        $itemGroups = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', '=', $restCode)
            ->select('code', 'name')
            ->orderBy('name')
            ->get();

        return json_encode($itemGroups);
    }

    // Fetch Menu Item Rate Report Data (AJAX)
    public function fetchmenuitemratereport(Request $request)
    {
        $departCode = $request->input('depart_code');
        $itemGroupCode = $request->input('item_group');

        if (! $departCode) {
            return json_encode([]);
        }

        // Get RestCode from depart code
        $restCode = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $departCode)
            ->value('dcode');

        if (! $restCode) {
            return json_encode([]);
        }

        $query = DB::table('itemmast as I')
            ->leftJoin('itemrate as R', function ($join) {
                $join->on('I.Code', '=', 'R.ItemCode');
            })
            ->leftJoin('depart as D', function ($join) {
                $join->on('D.DCode', '=', 'I.Kitchen');
            })
            ->where('I.RestCode', $restCode)
            ->where('I.Property_ID', $this->propertyid)
            ->where('R.RestCode', $restCode)
            ->where('I.ActiveYN', 'Y')
            // Get Letest app date
            ->whereRaw('R.AppDate = (SELECT MAX(AppDate) FROM itemrate WHERE ItemCode = I.Code)')
            ->select(
                'I.Name as ItemName',
                'I.ItemGroup',
                'R.Rate',
                'R.AppDate',
                'I.wtqty',
                'I.Pitemcode',
                'D.Name as DepartName',
                'I.Kitchen as kcode',
                'I.Code as ItemCode'
            );

        // If item group is selected, filter by it; otherwise get all
        if ($itemGroupCode && $itemGroupCode != '') {
            $query->where('I.ItemGroup', $itemGroupCode);
        }

        $data = $query->orderBy('I.Code')
            ->get();

        // Depart name
        $departname = DB::table('depart')->select('name', 'dcode')->where(['propertyid' => $this->propertyid, 'nature' => 'Kitchen'])->get();
        // Purchase Item Code
        $purchaseitemcode = DB::table('itemmast')->select('Code as code', 'Name as name')->where(['Property_ID' => $this->propertyid, 'RestCode' => 'PURC'.$this->propertyid])->get();

        return response()->json([
            'items' => $data,
            'departments' => $departname,
            'purchase_items' => $purchaseitemcode,
        ]);
    }

    public function updatemenuitems(Request $request)
    {
        try {
            $items = $request->input('items');
            $outlet = $request->input('outlet');

            if (empty($items)) {
                return response()->json([
                    'success' => false,
                    'message' => 'No items to update',
                ], 400);
            }

            $updatedCount = 0;

            foreach ($items as $item) {
                // Update itemmast table
                $updated = DB::table('itemmast')
                    ->where('Property_ID', $this->propertyid)
                    ->where('Code', $item['itemcode'])
                    ->update([
                        'Kitchen' => $item['departcode'],
                        'wtqty' => $item['wtqty'],
                        'Pitemcode' => $item['pitemcode'],
                    ]);

                if ($updated) {
                    $updatedCount++;
                }
            }

            return response()->json([
                'success' => true,
                'message' => $updatedCount.' item(s) updated successfully',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating items: '.$e->getMessage(),
            ], 500);
        }
    }

    public function updateitemrates(Request $request)
    {
        try {
            $items = $request->input('items');
            $outlet = $request->input('outlet');

            if (empty($items)) {
                return response()->json([
                    'success' => false,
                    'message' => 'No items to update',
                ], 400);
            }

            // Get RestCode from outlet/depart code
            $restCode = DB::table('depart')
                ->where('propertyid', $this->propertyid)
                ->where('dcode', $outlet)
                ->value('dcode');

            if (! $restCode) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid outlet selected',
                ], 400);
            }

            $updatedCount = 0;
            $insertedCount = 0;

            foreach ($items as $item) {
                // Check if rate exists
                // $existingRate = DB::table('itemrate')
                //    ->where('RestCode', $restCode)
                //    ->where('ItemCode', $item['itemcode'])
                //    ->first();

                // if ($existingRate) {
                // Update existing rate
                // $updated = DB::table('itemrate')
                //    ->where('RestCode', $restCode)
                //    ->where('ItemCode', $item['itemcode'])
                //    ->update([
                //       'Rate' => $item['rate'],
                //       'AppDate' => $item['app_date']
                //    ]);

                // if ($updated) {
                //    $updatedCount++;
                // }
                // } else {
                // Insert new rate
                $inserted = DB::table('itemrate')->insert([
                    'RestCode' => $restCode,
                    'ItemCode' => $item['itemcode'],
                    'Rate' => $item['rate'],
                    'AppDate' => $item['app_date'],
                    'Property_ID' => $this->propertyid,
                ]);

                if ($inserted) {
                    $insertedCount++;
                }
                // }
            }

            $message = '';
            // if ($updatedCount > 0) {
            //    $message .= $updatedCount . ' rate(s) updated';
            // }
            if ($insertedCount > 0) {
                $message .= ($updatedCount > 0 ? ' and ' : '').$insertedCount.' rate(s) inserted';
            }

            return response()->json([
                'success' => true,
                'message' => $message ? $message : 'No changes made',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating rates: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── Reward Point Report ──────────────────────────────────────────────────

    public function rewardpointreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.rewardpointreport', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
        ]);
    }

    public function fetchrewardpointreport(Request $request)
    {
        try {
            $fromdate = $request->input('fromdate', $this->ncurdate);
            $todate = $request->input('todate', $this->ncurdate);
            $propertyId = $this->propertyid;
            $mobileno = $request->input('mobileno'); // null = all, value = party wise

            $query = DB::table('guestreward')
                ->where('propertyid', $propertyId);

            if ($mobileno) {
                // Party wise — filter by mobile, no date filter, order by date DESC
                $query->where('mobileno', $mobileno)
                    ->select(
                        'vdate as Date',
                        'vtime as Time',
                        'departname as Outlet',
                        'mobileno',
                        'billno as BillNo',
                        'total as GoodAmt',
                        'rewardpoint',
                        'rewardvalue',
                        'redeempoint',
                        'reedemvalue',
                        'u_name'
                    )
                    ->orderBy('vdate', 'DESC');
            } else {
                // Date range report
                $query->whereBetween('vdate', [$fromdate, $todate])
                    ->select(
                        'vdate as Date',
                        'vtime as Time',
                        'departname as Outlet',
                        'mobileno',
                        'billno as BillNo',
                        'total as GoodAmt',
                        'rewardpoint',
                        'rewardvalue',
                        'redeempoint',
                        'reedemvalue',
                        'u_name'
                    )
                    ->orderBy('vdate')
                    ->orderBy('departname')
                    ->orderBy('billno');
            }

            $rows = $query->get();

            return response()->json(['success' => true, 'data' => $rows]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function fetchrewardmobilenumbers(Request $request)
    {
        try {
            $rows = DB::table('guestreward')
                ->where('propertyid', $this->propertyid)
                ->whereNotNull('mobileno')
                ->where('mobileno', '!=', '')
                ->select('mobileno')
                ->groupBy('mobileno')
                ->orderBy('mobileno')
                ->get();

            return response()->json(['success' => true, 'data' => $rows]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    // ─── Occupancy Forecast Report ──────────────────────────────────────────────
    public function occupancyforecast(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.occupancyforecast', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function fetchoccupancyforecast(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $pid = $this->propertyid;

        // Build date range day by day
        $start = Carbon::parse($fromdate);
        $end = Carbon::parse($todate);
        $rows = [];

        // Day-wise expected room revenue (same "Total Charges" basis shown in the
        // Room Status reservation popup). Computed once for the whole range.
        $dateList = [];
        for ($d = $start->copy(); $d->lte($end); $d->addDay()) {
            $dateList[] = $d->toDateString();
        }
        $revenueByDate = (new OccupancyForecastRevenue)->dailyRevenue($pid, $dateList);

        $grandTotalRooms = 0;
        $grandArrival = 0;
        $grandDeparture = 0;
        $grandStayOver = 0;
        $grandOccupied = 0;
        $grandPax = 0;
        $grandComplimentary = 0;
        $grandRevenue = 0.0;
        $grandAvailable = 0;
        $days = 0;

        for ($date = $start->copy(); $date->lte($end); $date->addDay()) {
            $dateStr = $date->toDateString();   // Y-m-d

            // Total Rooms: room_mast (type='RO', inclcount='Y') excluding rooms
            // blocked out (roomblockout type='O') on this date
            $totalRooms = DB::table('room_mast as R')
                ->where('R.propertyid', $pid)
                ->where('R.type', 'RO')
                ->where('R.inclcount', 'Y')
                ->whereNotExists(function ($q) use ($dateStr) {
                    $q->select(DB::raw(1))
                        ->from('roomblockout as B')
                        ->whereColumn('B.propertyid', 'R.propertyid')
                        ->whereColumn('B.roomcode', 'R.rcode')
                        ->where('B.type', 'O')
                        ->whereRaw('? BETWEEN DATE(B.fromdate) AND DATE(B.todate)', [$dateStr]);
                })
                ->count();

            // Expected Arrival: bookings arriving on this date (not cancelled, not contra)
            $expectedArrival = DB::table('grpbookingdetails')
                ->where('Property_ID', $pid)
                ->where('ArrDate', $dateStr)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->count();

            // Expected Departure: in-house guests whose departure date is this date & not yet checked out
            $expectedDeparture = DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', $dateStr)
                // ->whereNull('chkoutdate')
                // ->whereNull('type')
                ->count();

            // Stay Over: guests who checked in on or before this date and depart after this date
            $stayOver = DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', '>', $dateStr)
                ->where('chkindate', '<=', $dateStr)
                // ->whereNull('type')
                ->count();

            // Total Pax: stay-over adults (roomocc) + arriving adults (grpbookingdetails)
            // Stay-over adults = Sum(Adult) Where DepDate > date And chkindate <= date And propertyid = pid
            $stayOverPax = (int) DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', '>', $dateStr)
                ->where('chkindate', '<=', $dateStr)
                ->sum('Adult');

            $arrivalPax = (int) DB::table('grpbookingdetails')
                ->where('Property_ID', $pid)
                ->where('ArrDate', $dateStr)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->sum('Adults');

            $totalPax = $stayOverPax + $arrivalPax;

            // Complimentary: in-house stay-over rooms (roomocc) + expected
            // arrivals (grpbookingdetails) whose guestprof record is flagged
            // complimentary (complimentry = 'Y').
            $stayOverComp = DB::table('roomocc as RO')
                ->where('RO.propertyid', $pid)
                ->where('RO.DepDate', '>', $dateStr)
                ->where('RO.chkindate', '<=', $dateStr)
                ->whereExists(function ($q) use ($pid) {
                    $q->select(DB::raw(1))
                        ->from('guestprof as G')
                        ->whereColumn('G.docid', 'RO.docid')
                        ->where('G.propertyid', $pid)
                        ->where('G.complimentry', 'Y');
                })
                ->count();

            $arrivalComp = DB::table('grpbookingdetails as GB')
                ->where('GB.Property_ID', $pid)
                ->where('GB.ArrDate', $dateStr)
                ->where('GB.Cancel', 'N')
                ->where('GB.ContraDocId', '')
                ->whereExists(function ($q) use ($pid) {
                    $q->select(DB::raw(1))
                        ->from('guestprof as G')
                        ->whereColumn('G.docid', 'GB.BookingDocid')
                        ->where('G.propertyid', $pid)
                        ->where('G.complimentry', 'Y');
                })
                ->count();

            $complimentary = $stayOverComp + $arrivalComp;

            // Total Revenue: expected room revenue for this night, based on the
            // booked room tariff (net of tax) for every room occupying this date.
            // This matches the "Total Charges" room-charge basis of the roomstatus
            // reservation popup.
            $totalRevenue = (float) ($revenueByDate[$dateStr] ?? 0);

            // Derived metrics
            // Available rooms = total rooms left after expected arrivals and stay-overs.
            // Occupied rooms = the balance of the total rooms (total - available).
            $availableRooms = $totalRooms - $expectedArrival - $stayOver;
            if ($availableRooms < 0) {
                $availableRooms = 0;
            }
            $occupiedRooms = $totalRooms - $availableRooms;
            $arr = $occupiedRooms > 0 ? round($totalRevenue / $occupiedRooms, 2) : 0;
            $revpar = $totalRooms > 0 ? round($totalRevenue / $totalRooms, 2) : 0;

            $rows[] = [
                'date' => $date->format('l, F j, Y'),   // e.g. "Thursday, November 21, 2024"
                'date_raw' => $dateStr,
                'total_rooms' => $totalRooms,
                'expected_arrival' => $expectedArrival,
                'expected_departure' => $expectedDeparture,
                'stay_over' => $stayOver,
                'occupied_rooms' => $occupiedRooms,
                'total_pax' => $totalPax,
                'available_rooms' => $availableRooms < 0 ? 0 : $availableRooms,
                'complimentary' => $complimentary,
                'total_revenue' => $totalRevenue,
                'arr' => $arr,
                'revpar' => $revpar,
                'occ_percent' => $totalRooms > 0 ? round($occupiedRooms / $totalRooms * 100, 2) : 0,
            ];

            // Grand totals
            $grandTotalRooms += $totalRooms;
            $grandArrival += $expectedArrival;
            $grandDeparture += $expectedDeparture;
            $grandStayOver += $stayOver;
            $grandOccupied += $occupiedRooms;
            $grandPax += $totalPax;
            $grandComplimentary += $complimentary;
            $grandRevenue += $totalRevenue;
            $grandAvailable += ($availableRooms < 0 ? 0 : $availableRooms);
            $days++;
        }

        $grandArr = $grandOccupied > 0 ? round($grandRevenue / $grandOccupied, 3) : 0;
        $grandRevpar = $grandTotalRooms > 0 ? round($grandRevenue / $grandTotalRooms, 3) : 0;
        $grandOccPercent = $grandTotalRooms > 0 ? round($grandOccupied / $grandTotalRooms * 100, 2) : 0;

        return response()->json([
            'rows' => $rows,
            'totals' => [
                'total_rooms' => $grandTotalRooms,
                'expected_arrival' => $grandArrival,
                'expected_departure' => $grandDeparture,
                'stay_over' => $grandStayOver,
                'occupied_rooms' => number_format($grandOccupied, 3),
                'total_pax' => number_format($grandPax, 3),
                'available_rooms' => $grandAvailable,
                'complimentary' => $grandComplimentary,
                'total_revenue' => number_format($grandRevenue, 3),
                'arr' => number_format($grandArr, 3),
                'revpar' => number_format($grandRevpar, 3),
                'occ_percent' => number_format($grandOccPercent, 2),
            ],
        ]);
    }

    // ─── Occupancy Forecast Print (DomPDF) ─────────────────────────────────────
    public function printoccupancyforecast(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $dateError = $this->validateOccupancyDates($fromdate, $todate);
        if ($dateError) {
            return redirect()->back()->with('error', $dateError);
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $export = new OccupancyForecastExport(
            $this->propertyid,
            $company->comp_name ?? '',
            $fromdate,
            $todate
        );
        $data = $export->getData();

        $pdf = Pdf::loadView('property.print.occupancyforecastprint', [
            'company' => $company,
            'rows' => $data['rows'],
            'totals' => $data['totals'],
            'fromDate' => $fromdate,
            'toDate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('OccupancyForecast_'.$fromdate.'_'.$todate.'.pdf');
    }

    // ─── Occupancy Forecast Excel Export ───────────────────────────────────────
    public function exportoccupancyforecast(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $dateError = $this->validateOccupancyDates($fromdate, $todate);
        if ($dateError) {
            return redirect()->back()->with('error', $dateError);
        }

        $companyName = Companyreg::where('propertyid', $this->propertyid)->value('comp_name');

        $export = new OccupancyForecastExport(
            $this->propertyid,
            $companyName ?? '',
            $fromdate,
            $todate
        );
        $export->download();
    }

    /**
     * Validate from/to dates for the occupancy forecast print & export routes.
     * Returns an error message string, or null when the dates are valid.
     */
    private function validateOccupancyDates($fromdate, $todate)
    {
        if (! $fromdate || ! $todate) {
            return 'Please provide both From and To dates.';
        }
        if (! strtotime($fromdate) || ! strtotime($todate)) {
            return 'Please provide valid From and To dates.';
        }
        if (strtotime($fromdate) > strtotime($todate)) {
            return 'From Date cannot be greater than To Date.';
        }

        return null;
    }

    // ─── Company Wise Analysis Report ──────────────────────────────────────────
    public function companywiseanalysis(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.companywiseanalysis', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
        ]);
    }

    public function fetchcompanywiseanalysis(Request $request)
    {
        try {
            $fromdate = $request->input('fromdate', $this->ncurdate);
            $todate = $request->input('todate', $this->ncurdate);
            $type = $request->input('type', 'Corporate');
            $pid = $this->propertyid;

            $rmch = 'RMCH'.$pid;
            $tout = 'TOUT'.$pid;
            $cgss = 'CGSS'.$pid;
            $sgss = 'SGSS'.$pid;
            $igss = 'IGSS'.$pid;

            if ($type == 'Corporate') {
                $col = 'G.company';
            } else {
                $col = 'G.travelagent';
            }

            $data = DB::table('subgroup as S')
                ->select(
                    'S.sub_code',
                    'S.name',
                    DB::raw('MAX(R.last_checkout) AS last_checkout'),
                    DB::raw('SUM(P.room_nights) AS nights'),
                    DB::raw('SUM(P.total_amtdr) AS amount'),
                    DB::raw('SUM(P.total_amtdr) AS room_rent'),
                    DB::raw('SUM(P.outlet_sum) AS out_charge'),
                    DB::raw('SUM(P.taxed) AS tax')
                )
                ->join('guestfolio as G', function ($join) use ($col) {
                    $join->on($col, '=', 'S.sub_code')
                        ->where('G.propertyid', $this->propertyid);
                })
                ->joinSub(
                    DB::table('roomocc')
                        ->select(
                            'docid',
                            DB::raw('MAX(chkoutdate) AS last_checkout'),
                            DB::raw('SUM(nodays) AS nights')
                        )
                        ->where('propertyid', $this->propertyid)
                        ->groupBy('docid'),
                    'R',
                    fn ($join) => $join->on('R.docid', '=', 'G.docid')
                )
                ->joinSub(
                    DB::table('paycharge')
                        ->select('folionodocid')
                        ->selectRaw(
                            'SUM(CASE WHEN paycode = ? THEN amtdr ELSE 0 END) AS total_amtdr, COUNT(CASE WHEN paycode = ? THEN 1 END) AS room_nights',
                            [$rmch, $rmch]
                        )
                        ->selectRaw(
                            'SUM(CASE WHEN paycode = ? THEN amtdr ELSE 0 END) AS outlet_sum',
                            [$tout]
                        )
                        ->selectRaw(
                            'SUM(CASE WHEN paycode IN (?, ?, ?) THEN amtdr ELSE 0 END) AS taxed',
                            [$cgss, $sgss, $igss]
                        )
                        ->where('propertyid', $this->propertyid)
                        ->whereIn('paycode', [$rmch, $tout, $cgss, $sgss, $igss])
                        ->whereBetween('vdate', [$fromdate, $todate])
                        ->groupBy('folionodocid'),
                    'P',
                    fn ($join) => $join->on('P.folionodocid', '=', 'G.docid')
                )
                ->where('S.propertyid', $this->propertyid)
                ->where('S.comp_type', $type)
                ->groupBy('S.sub_code', 'S.name')
                ->get();

            return response()->json([
                'success' => true,
                'data' => $data,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    // ─── Company Wise Analysis — shared data query ──────────────────────────────

    private function companywiseanalysisData($fromdate, $todate, $type)
    {
        $pid = $this->propertyid;
        $rmch = 'RMCH'.$pid;
        $tout = 'TOUT'.$pid;
        $cgss = 'CGSS'.$pid;
        $sgss = 'SGSS'.$pid;
        $igss = 'IGSS'.$pid;

        if ($type == 'Corporate') {
            $col = 'G.company';
        } else {
            $col = 'G.travelagent';
        }

        return DB::table('subgroup as S')
            ->select(
                'S.sub_code',
                'S.name',
                DB::raw('MAX(R.last_checkout) AS last_checkout'),
                DB::raw('SUM(P.room_nights) AS nights'),
                DB::raw('SUM(P.total_amtdr) AS room_rent'),
                DB::raw('SUM(P.outlet_sum) AS out_charge'),
                DB::raw('SUM(P.taxed) AS tax')
            )
            ->join('guestfolio as G', function ($join) use ($col) {
                $join->on($col, '=', 'S.sub_code')
                    ->where('G.propertyid', $this->propertyid);
            })
            ->joinSub(
                DB::table('roomocc')
                    ->select(
                        'docid',
                        DB::raw('MAX(chkoutdate) AS last_checkout'),
                        DB::raw('SUM(nodays) AS nights')
                    )
                    ->where('propertyid', $this->propertyid)
                    ->groupBy('docid'),
                'R',
                fn ($join) => $join->on('R.docid', '=', 'G.docid')
            )
            ->joinSub(
                DB::table('paycharge')
                    ->select('folionodocid')
                    ->selectRaw(
                        'SUM(CASE WHEN paycode = ? THEN amtdr ELSE 0 END) AS total_amtdr, COUNT(CASE WHEN paycode = ? THEN 1 END) AS room_nights',
                        [$rmch, $rmch]
                    )
                    ->selectRaw(
                        'SUM(CASE WHEN paycode = ? THEN amtdr ELSE 0 END) AS outlet_sum',
                        [$tout]
                    )
                    ->selectRaw(
                        'SUM(CASE WHEN paycode IN (?, ?, ?) THEN amtdr ELSE 0 END) AS taxed',
                        [$cgss, $sgss, $igss]
                    )
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('paycode', [$rmch, $tout, $cgss, $sgss, $igss])
                    ->whereBetween('vdate', [$fromdate, $todate])
                    ->groupBy('folionodocid'),
                'P',
                fn ($join) => $join->on('P.folionodocid', '=', 'G.docid')
            )
            ->where('S.propertyid', $this->propertyid)
            ->where('S.comp_type', $type)
            ->groupBy('S.sub_code', 'S.name')
            ->orderBy('S.name', 'asc')
            ->get();
    }

    // ─── Company Wise Analysis — Print (DomPDF, contributionreport format) ──────

    public function printcompanywiseanalysis(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);
        $type = $request->query('type', 'Corporate');

        $data = $this->companywiseanalysisData($fromdate, $todate, $type);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.companywiseanalysisprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
            'type' => $type,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('company-wise-analysis-'.$fromdate.'-to-'.$todate.'.pdf');
    }

    // ─── Company Wise Analysis — Excel Export (contributionreport format) ───────

    public function exportcompanywiseanalysis(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);
            $type = $request->query('type', 'Corporate');

            $data = $this->companywiseanalysisData($fromdate, $todate, $type);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            // A=#(1), B=Name(2), C=LastCheckout(3), D=Nights(4), E=RoomRent(5), F=OutCharge(6), G=Tax(7)
            $lastCol = 'G';

            // Grand totals
            $totNights = $totRent = $totOut = $totTax = 0.0;
            foreach ($data as $row) {
                $totNights += (float) $row->nights;
                $totRent += (float) $row->room_rent;
                $totOut += (float) $row->out_charge;
                $totTax += (float) $row->tax;
            }

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Company Wise Analysis');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Company Wise Analysis Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range + Type
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.Carbon::parse($fromdate)->format('d/m/Y')
                .'  To: '.Carbon::parse($todate)->format('d/m/Y')
                .'  |  Type: '.$type);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Name', 'Last Checkout', 'Nights', 'Room Rent', 'Out Charge', 'Tax'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->name);
                $sheet->setCellValue('C'.$currentRow, $row->last_checkout
                    ? Carbon::parse($row->last_checkout)->format('d/m/Y') : '-');
                $sheet->setCellValue('D'.$currentRow, (float) $row->nights);
                $sheet->setCellValue('E'.$currentRow, (float) $row->room_rent);
                $sheet->setCellValue('F'.$currentRow, (float) $row->out_charge);
                $sheet->setCellValue('G'.$currentRow, (float) $row->tax);

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Name left-aligned
                $sheet->getStyle('B'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                // Money columns right-aligned + number format
                foreach (['E', 'F', 'G'] as $mCol) {
                    $sheet->getStyle($mCol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                    $sheet->getStyle($mCol.$currentRow)->getNumberFormat()
                        ->setFormatCode('#,##0.00');
                }

                $currentRow++;
            }

            // Grand Total Row
            $sheet->mergeCells('A'.$currentRow.':C'.$currentRow);
            $sheet->setCellValue('A'.$currentRow, 'Grand Total');
            $sheet->setCellValue('D'.$currentRow, $totNights);
            $sheet->setCellValue('E'.$currentRow, $totRent);
            $sheet->setCellValue('F'.$currentRow, $totOut);
            $sheet->setCellValue('G'.$currentRow, $totTax);

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            foreach (['E', 'F', 'G'] as $mCol) {
                $sheet->getStyle($mCol.$currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle($mCol.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                    ->setWrapText(false);
            }

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(30);
            $sheet->getColumnDimension('C')->setWidth(14);
            $sheet->getColumnDimension('D')->setWidth(10);
            $sheet->getColumnDimension('E')->setWidth(14);
            $sheet->getColumnDimension('F')->setWidth(14);
            $sheet->getColumnDimension('G')->setWidth(14);

            // Download
            $filename = 'Company_Wise_Analysis_'.$type.'_'
                .Carbon::parse($fromdate)->format('Ymd').'_to_'
                .Carbon::parse($todate)->format('Ymd').'_'
                .date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Company Wise Analysis Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // Open Revenue Source Report
    // Open Revenue Source Report
    public function revenuesourcereport(Request $request)
    {
        $permission = revokeopen(141211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.revenuesourcereport', [
            'fromdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'ncurdate' => $this->ncurdate,
        ]);
    }

    // Print Revenue Source Report
    public function printrevenuesourcereport(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $propertyid = $this->propertyid;

        $rmch = 'RMCH'.$propertyid;
        $cgss = 'CGSS'.$propertyid;
        $sgss = 'SGSS'.$propertyid;
        $igss = 'IGSS'.$propertyid;
        $tout = 'TOUT'.$propertyid;

        $sql = "
         SELECT
            COALESCE(G.booking_source, 'Unknown') AS RevenueSource,
            COUNT(G.folio_no)                                                        AS Checkins,
            SUM(COALESCE(P.RoomNights, 0))                                           AS RoomNights,
            SUM(R.NoOfGuest)                                                         AS Guests,
            SUM(COALESCE(P.Amount, 0))                                               AS GrossRevenue,
            SUM(COALESCE(P.RoomRent, 0))                                             AS RoomRent,
            SUM(COALESCE(P.Outlet, 0))                                               AS TranferFromOutlet,
            SUM(COALESCE(P.Tax, 0))                                                  AS Tax,
            ROUND(
               SUM(COALESCE(P.RoomRent, 0)) / NULLIF(SUM(COALESCE(P.RoomNights, 0)), 0),
               2
            )                                                                        AS ADR
         FROM guestfolio G
         LEFT JOIN (
            SELECT
               folionodocid,
               SUM(amtdr)                                                            AS Amount,
               SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                    AS RoomRent,
               COUNT(CASE WHEN paycode = ? THEN 1 END)                              AS RoomNights,
               SUM(CASE WHEN paycode IN (?, ?, ?) THEN amtdr ELSE 0 END)            AS Tax,
               SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                    AS Outlet
            FROM paycharge
            WHERE vdate BETWEEN ? AND ?
            GROUP BY folionodocid
         ) P ON G.docid = P.folionodocid
         INNER JOIN (
            SELECT docid, SUM(adult) AS NoOfGuest
            FROM roomocc
            GROUP BY docid
         ) R ON G.docid = R.docid
         WHERE G.propertyid = ?
         GROUP BY G.booking_source
      ";

        $data = DB::select($sql, [
            $rmch,
            $rmch,
            $cgss,
            $sgss,
            $igss,
            $tout,
            $fromdate,
            $todate,
            $propertyid,
        ]);

        $company = Companyreg::where('propertyid', $propertyid)->first();

        return view('property.print.printrevenuesource', [
            'data' => $data,
            'company' => $company,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ]);
    }

    // Excel Export Revenue Source Report
    public function exportrevenuesourcereport(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $export = new RevenueSourceExport(
            $this->propertyid,
            $company->comp_name,
            $fromdate,
            $todate
        );

        return $export->download();
    }

    // Fetch Revenue Source Report Data
    public function fetchrevenuesourcereport(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $propertyid = $this->propertyid;

        $rmch = 'RMCH'.$propertyid;
        $cgss = 'CGSS'.$propertyid;
        $sgss = 'SGSS'.$propertyid;
        $igss = 'IGSS'.$propertyid;
        $tout = 'TOUT'.$propertyid;

        $sql = "
         SELECT
            COALESCE(G.booking_source, 'Unknown') AS RevenueSource,
            COUNT(G.folio_no)                                                        AS Checkins,
            SUM(COALESCE(P.RoomNights, 0))                                           AS RoomNights,
            SUM(R.NoOfGuest)                                                         AS Guests,
            SUM(COALESCE(P.Amount, 0))                                               AS GrossRevenue,
            SUM(COALESCE(P.RoomRent, 0))                                             AS RoomRent,
            SUM(COALESCE(P.Outlet, 0))                                               AS TranferFromOutlet,
            SUM(COALESCE(P.Tax, 0))                                                  AS Tax,
            ROUND(
               SUM(COALESCE(P.RoomRent, 0)) / NULLIF(SUM(COALESCE(P.RoomNights, 0)), 0),
               2
            )                                                                        AS ADR
         FROM guestfolio G
         LEFT JOIN (
            SELECT
               folionodocid,
               SUM(amtdr)                                                            AS Amount,
               SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                    AS RoomRent,
               COUNT(CASE WHEN paycode = ? THEN 1 END)                              AS RoomNights,
               SUM(CASE WHEN paycode IN (?, ?, ?) THEN amtdr ELSE 0 END)            AS Tax,
               SUM(CASE WHEN paycode = ?  THEN amtdr ELSE 0 END)                    AS Outlet
            FROM paycharge
            WHERE vdate BETWEEN ? AND ?
            GROUP BY folionodocid
         ) P ON G.docid = P.folionodocid
         INNER JOIN (
            SELECT docid, SUM(adult) AS NoOfGuest
            FROM roomocc
            GROUP BY docid
         ) R ON G.docid = R.docid
         WHERE G.propertyid = ?
         GROUP BY G.booking_source
      ";

        $data = DB::select($sql, [
            $rmch,
            $rmch,          // RoomRent, RoomNights CASE
            $cgss,
            $sgss,
            $igss,   // Tax IN()
            $tout,                 // Outlet CASE
            $fromdate,
            $todate,    // vdate range
            $propertyid,           // G.propertyid
        ]);

        return response()->json([
            'success' => true,
            'data' => $data,
        ]);
    }

    // ─── Room Change History Report ───────────────────────────────────────────────

    public function roomchangehistory(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.roomchangehistory', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
        ]);
    }

    public function fetchroomchangehistory(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);

        $data = DB::table('roomocc as oldr')
            ->leftJoin('roomocc as newr', function ($join) {
                $join->on('newr.propertyid', '=', 'oldr.propertyid')
                    ->on('newr.folioNo', '=', 'oldr.folioNo')
                    ->on('newr.roomno', '=', 'oldr.newroomno')
                    ->whereColumn('newr.roomno', '<>', 'oldr.roomno')
                    ->whereColumn('newr.sno', '>', 'oldr.sno');
            })
            ->leftJoin('plan_mast as PO', 'oldr.plancode', '=', 'PO.pcode')
            ->leftJoin('plan_mast as PN', 'newr.plancode', '=', 'PN.pcode')
            ->leftJoin('room_cat as RCO', 'oldr.roomcat', '=', 'RCO.cat_code')
            ->leftJoin('room_cat as RCN', 'newr.roomcat', '=', 'RCN.cat_code')
            ->where('oldr.propertyid', $this->propertyid)
            ->whereNotNull('oldr.newroomno')
            ->where('oldr.newroomno', '<>', '')
            ->whereColumn('oldr.roomno', '<>', 'oldr.newroomno')
            ->whereBetween('oldr.chngdate', [$fromdate, $todate])
            ->select(
                'oldr.name                                       as guestname',
                'oldr.folioNo                                    as foliono',
                'oldr.updated_at                                 as changedate',
                'oldr.roomno                                     as oldroomno',
                'RCO.name                                        as oldtype',
                'oldr.roomrate                                   as oldrate',
                'PO.name                                         as oldplan',
                DB::raw("CONCAT(oldr.adult, '/', oldr.children) as oldpax"),
                'newr.roomno                                     as newroomno',
                'RCN.name                                        as newtype',
                'newr.roomrate                                   as newrate',
                'PN.name                                         as newplan',
                DB::raw("CONCAT(newr.adult, '/', newr.children) as newpax"),
                'oldr.u_name                                     as changedby',
                'newr.reasonrchange                              as reason'
            )
            ->orderBy('oldr.chngdate', 'ASC')
            ->orderBy('oldr.sno', 'ASC')
            ->get();

        return response()->json(['data' => $data]);
    }

    // ─── Room Change History — helper query ────────────────────────────────────

    private function roomchangehistoryData($fromdate, $todate)
    {
        return DB::table('roomocc as oldr')
            ->leftJoin('roomocc as newr', function ($join) {
                $join->on('newr.propertyid', '=', 'oldr.propertyid')
                    ->on('newr.folioNo', '=', 'oldr.folioNo')
                    ->on('newr.roomno', '=', 'oldr.newroomno')
                    ->whereColumn('newr.roomno', '<>', 'oldr.roomno')
                    ->whereColumn('newr.sno', '>', 'oldr.sno');
            })
            ->leftJoin('plan_mast as PO', 'oldr.plancode', '=', 'PO.pcode')
            ->leftJoin('plan_mast as PN', 'newr.plancode', '=', 'PN.pcode')
            ->leftJoin('room_cat as RCO', 'oldr.roomcat', '=', 'RCO.cat_code')
            ->leftJoin('room_cat as RCN', 'newr.roomcat', '=', 'RCN.cat_code')
            ->where('oldr.propertyid', $this->propertyid)
            ->whereNotNull('oldr.newroomno')
            ->where('oldr.newroomno', '<>', '')
            ->whereColumn('oldr.roomno', '<>', 'oldr.newroomno')
            ->whereBetween('oldr.chngdate', [$fromdate, $todate])
            ->select(
                'oldr.name         as guestname',
                'oldr.folioNo      as foliono',
                'oldr.updated_at   as changedate',
                'oldr.roomno       as oldroomno',
                'RCO.name          as oldtype',
                'oldr.roomrate     as oldrate',
                'PO.name           as oldplan',
                DB::raw("CONCAT(oldr.adult, '/', oldr.children) as oldpax"),
                'newr.roomno       as newroomno',
                'RCN.name          as newtype',
                'newr.roomrate     as newrate',
                'PN.name           as newplan',
                DB::raw("CONCAT(newr.adult, '/', newr.children) as newpax"),
                'oldr.u_name       as changedby',
                'newr.reasonrchange as reason'
            )
            ->orderBy('oldr.chngdate', 'ASC')
            ->orderBy('oldr.sno', 'ASC')
            ->get();
    }

    // ─── Room Change History — Print (DomPDF) ──────────────────────────────────

    public function printroomchangehistory(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $data = $this->roomchangehistoryData($fromdate, $todate);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.roomchangehistoryprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape')
            ->stream('room-change-history-'.$fromdate.'-to-'.$todate.'.pdf');
    }

    // ─── Room Change History — Excel Export (PhpSpreadsheet) ───────────────────

    public function exportroomchangehistory(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $data = $this->roomchangehistoryData($fromdate, $todate);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $headers = [
                '#',
                'Date',
                'Guest Name',
                'Folio No',
                'Old Room',
                'Old Type',
                'Old Rate',
                'Old Plan',
                'Old Pax',
                'New Room',
                'New Type',
                'New Rate',
                'New Plan',
                'New Pax',
                'Reason',
                'Changed By',
            ];
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Room Change History');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Room Change History');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.Carbon::parse($fromdate)->format('d/m/Y')
                .'  To: '.Carbon::parse($todate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Money columns: Old Rate (G=7), New Rate (L=12)
            $moneyColLetters = ['G', 'L'];

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $changed = $row->changedate ? Carbon::parse($row->changedate)->format('d/m/Y H:i:s') : '-';

                $vals = [
                    $i + 1,
                    $changed,
                    $row->guestname ?? '-',
                    $row->foliono ?? '-',
                    $row->oldroomno ?? '-',
                    $row->oldtype ?? '-',
                    (float) ($row->oldrate ?? 0),
                    $row->oldplan ?? '-',
                    $row->oldpax ?? '-',
                    $row->newroomno ?? '-',
                    $row->newtype ?? '-',
                    (float) ($row->newrate ?? 0),
                    $row->newplan ?? '-',
                    $row->newpax ?? '-',
                    $row->reason ?? '-',
                    $row->changedby ?? '-',
                ];
                foreach ($vals as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex($j + 1);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Money columns right-aligned
                foreach ($moneyColLetters as $mCol) {
                    $sheet->getStyle($mCol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                    $sheet->getStyle($mCol.$currentRow)->getNumberFormat()
                        ->setFormatCode('#,##0.00');
                }
                // Guest name + reason left-aligned
                $sheet->getStyle('C'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('O'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $widths = [5, 18, 18, 10, 10, 12, 10, 12, 8, 10, 12, 10, 12, 8, 18, 14];
            foreach ($widths as $i => $w) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->getColumnDimension($col)->setWidth($w);
            }

            // Download
            $filename = 'Room_Change_History_'.Carbon::parse($fromdate)->format('Ymd').'_to_'
                .Carbon::parse($todate)->format('Ymd').'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Room Change History Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── Sale Bill Change Report

    public function salebillchangereport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Outlets (nature = Outlet or Room Service)
        $departs = Depart::where('propertyid', $this->propertyid)
            ->whereIn('nature', ['Room Service', 'Outlet'])
            ->groupBy('dcode')
            ->orderBy('name', 'ASC')
            ->get();

        // Items (for item-wise filter)
        $items = DB::table('itemmast')
            ->where('Property_ID', $this->propertyid)
            ->whereIn('Code', function ($q) {
                $q->select('item')->from('stocklog')->where('propertyid', $this->propertyid)->distinct();
            })
            ->orderBy('Name', 'ASC')
            ->get(['Code', 'Name']);

        return view('property.salebillchangereport', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
            'departs' => $departs,
            'items' => $items,
        ]);
    }

    public function fetchsalebillchangereport(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);
        $outlets = $request->input('outlets'); // comma-separated dcode values
        $items = $request->input('items');   // comma-separated item codes

        return response()->json(['data' => $this->salebillchangeData($fromdate, $todate, $outlets, $items)]);
    }

    private function salebillchangeData($fromdate, $todate, $outlets, $itemsParam)
    {
        $propertyid = $this->propertyid;

        // Build outlet restcode list from selected dcode(s)
        if (! empty($outlets)) {
            $dcodes = array_filter(array_map('trim', explode(',', $outlets)));
            $restcodes = Depart::where('propertyid', $propertyid)
                ->whereIn('dcode', $dcodes)
                ->pluck('dcode')
                ->toArray();
        } else {
            $restcodes = Depart::where('propertyid', $propertyid)
                ->whereIn('nature', ['Room Service', 'Outlet'])
                ->pluck('dcode')
                ->toArray();
        }

        if (empty($restcodes)) {
            return [];
        }

        $restcodeList = "'".implode("','", $restcodes)."'";

        // Optional item-wise filter (bills containing selected items)
        $itemFilter = '';
        if (! empty($itemsParam)) {
            $itemCodes = array_filter(array_map(function ($c) {
                return preg_replace("/[^A-Za-z0-9_\-]/", '', trim($c));
            }, explode(',', $itemsParam)));
            if (! empty($itemCodes)) {
                $itemCodeList = "'".implode("','", $itemCodes)."'";
                $itemFilter = " AND EXISTS (
                                 SELECT 1 FROM stock STI
                                 WHERE STI.docid = V.docid
                                   AND STI.propertyid = {$propertyid}
                                   AND STI.item IN ({$itemCodeList})
                              )";
            }
        }

        $sql = "
         WITH History AS (
            SELECT
               L.id, L.propertyid, L.docid, L.vno, L.vdate, L.vtime,
               L.restcode, L.total, L.discper, L.discamt, L.servicecharge,
               L.addamt, L.dedamt, L.roundoff, L.netamt, L.cgst, L.sgst,
               L.u_name, L.created_at, L.updated_at,
               'HISTORY' AS Status
            FROM sale1log L
            WHERE L.propertyid = ?
              AND L.restcode IN ({$restcodeList})
              AND L.vdate BETWEEN ? AND ?

            UNION ALL

            SELECT
               S.id, S.propertyid, S.docid, S.vno, S.vdate, S.vtime,
               S.restcode, S.total, S.discper, S.discamt, S.servicecharge,
               S.addamt, S.dedamt, S.roundoff, S.netamt, S.cgst, S.sgst,
               S.u_name, S.created_at, S.updated_at,
               'CURRENT' AS Status
            FROM sale1 S
            WHERE S.propertyid = ?
              AND S.restcode IN ({$restcodeList})
              AND S.vdate BETWEEN ? AND ?
         ),
         V AS (
            SELECT
               H.*,
               ROW_NUMBER() OVER (
                  PARTITION BY H.docid
                  ORDER BY H.updated_at, H.id
               ) AS VersionNo,
               LAG(H.discper)  OVER (PARTITION BY H.docid ORDER BY H.updated_at, H.id) AS PrevDiscPer,
               LAG(H.discamt)  OVER (PARTITION BY H.docid ORDER BY H.updated_at, H.id) AS PrevDiscAmt,
               LAG(H.netamt)   OVER (PARTITION BY H.docid ORDER BY H.updated_at, H.id) AS PrevNetAmt
            FROM History H
         )
         SELECT
            COALESCE(D.Name, V.restcode) AS Outlet,
            V.vno           AS BillNo,
            V.vdate         AS BillDate,
            V.vtime         AS BillTime,
            V.VersionNo,
            CASE
               WHEN V.Status = 'CURRENT' THEN 'CURRENT DATA'
               ELSE CONCAT('OLD VERSION ', V.VersionNo)
            END AS RecordStatus,
            V.u_name        AS UserName,
            V.updated_at    AS UpdateDateTime,
            V.PrevDiscPer,
            V.discper       AS CurrentDiscPer,
            V.discper - COALESCE(V.PrevDiscPer, 0) AS DiscPerChange,
            V.PrevDiscAmt,
            V.discamt       AS CurrentDiscAmt,
            V.discamt - COALESCE(V.PrevDiscAmt, 0) AS DiscAmtChange,
            V.PrevNetAmt,
            V.netamt        AS CurrentNetAmt,
            V.netamt - COALESCE(V.PrevNetAmt, 0)   AS NetAmtChange,
            CASE
               WHEN V.VersionNo = 1 THEN 'ORIGINAL'
               WHEN COALESCE(V.discper, 0)  <> COALESCE(V.PrevDiscPer, 0)
                 OR COALESCE(V.discamt, 0)  <> COALESCE(V.PrevDiscAmt, 0)
                 OR COALESCE(V.netamt, 0)   <> COALESCE(V.PrevNetAmt,  0) THEN 'CHANGED'
               ELSE 'NO CHANGE'
            END AS ChangeStatus
         FROM V
         LEFT JOIN depart D ON D.propertyid = V.propertyid AND D.dcode = V.restcode
         WHERE 1 = 1
         {$itemFilter}
         ORDER BY V.restcode, V.vno, V.VersionNo
      ";

        $data = DB::select($sql, [
            $propertyid,
            $fromdate,
            $todate,
            $propertyid,
            $fromdate,
            $todate,
        ]);

        return $data;
    }

    public function fetchsalebillitemchangereport(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);
        $outlets = $request->input('outlets');
        $items = $request->input('items');

        return response()->json(['data' => $this->salebillitemchangeData($fromdate, $todate, $outlets, $items)]);
    }

    private function salebillitemchangeData($fromdate, $todate, $outlets, $itemsParam)
    {
        $propertyid = $this->propertyid;

        if (! empty($outlets)) {
            $dcodes = array_filter(array_map('trim', explode(',', $outlets)));
            $restcodes = Depart::where('propertyid', $propertyid)
                ->whereIn('dcode', $dcodes)
                ->pluck('dcode')
                ->toArray();
        } else {
            $restcodes = Depart::where('propertyid', $propertyid)
                ->whereIn('nature', ['Room Service', 'Outlet'])
                ->pluck('dcode')
                ->toArray();
        }

        if (empty($restcodes)) {
            return [];
        }

        $restcodeList = "'".implode("','", $restcodes)."'";

        // Optional item-wise filter
        $itemFilter = '';
        if (! empty($itemsParam)) {
            $itemCodes = array_filter(array_map(function ($c) {
                return preg_replace("/[^A-Za-z0-9_\-]/", '', trim($c));
            }, explode(',', $itemsParam)));
            if (! empty($itemCodes)) {
                $itemCodeList = "'".implode("','", $itemCodes)."'";
                $itemFilter = " AND SL.item IN ({$itemCodeList})";
            }
        }

        $sql = "
         SELECT
            COALESCE(D.Name, SL.restcode) AS Outlet,
            SL.vno               AS BillNo,
            SL.vdate             AS BillDate,
            SL.vtime             AS BillTime,
            SL.u_name            AS UserName,
            SL.sno               AS BeforeSno,
            olditem.Name         AS BeforeName,
            SL.qtyiss            AS BeforeQty,
            SL.rate              AS BeforeRate,
            SL.discper           AS BeforeDiscPer,
            SL.discamt           AS BeforeDiscAmt,
            COALESCE(CAST(S.sno     AS CHAR), '----') AS AfterSno,
            COALESCE(newitem.Name,             '----') AS AfterName,
            COALESCE(CAST(S.qtyiss  AS CHAR),  '----') AS AfterQty,
            COALESCE(CAST(S.rate    AS CHAR),  '----') AS AfterRate,
            COALESCE(CAST(S.discper AS CHAR),  '----') AS AfterDiscPer,
            COALESCE(CAST(S.discamt AS CHAR),  '----') AS AfterDiscAmt
         FROM stocklog SL
         LEFT JOIN stock    S       ON SL.docid = S.docid AND SL.sno = S.sno
         LEFT JOIN itemmast olditem ON SL.item  = olditem.Code
         LEFT JOIN itemmast newitem ON S.item   = newitem.Code
         LEFT JOIN depart   D       ON D.propertyid = SL.propertyid AND D.dcode = SL.restcode
         WHERE SL.propertyid = ?
           AND SL.restcode IN ({$restcodeList})
           AND SL.vdate BETWEEN ? AND ?
           AND DATE(SL.created_at) BETWEEN ? AND ?
           {$itemFilter}
         GROUP BY SL.vno, SL.sno, SL.created_at
         ORDER BY SL.created_at, SL.sno, SL.vtime
      ";

        return DB::select($sql, [$propertyid, $fromdate, $todate, $fromdate, $todate]);
    }

    // ─── Sale Bill Change Report — Print (Barryvdh DomPDF) ───────────────────
    public function printsalebillchangereport(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);
        $outlets = $request->query('outlets');
        $view = $request->query('view', 'bill');

        if ($view === 'item') {
            $data = $this->salebillitemchangeData($fromdate, $todate, $outlets, null);
        } else {
            $data = $this->salebillchangeData($fromdate, $todate, $outlets, null);
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.salebillchangeprint', [
            'company' => $company,
            'data' => $data,
            'view' => $view,
            'fromdate' => $fromdate,
            'todate' => $todate,
            'reportTitle' => $view === 'item' ? 'Sale Bill Item Change Report' : 'Sale Bill Change Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('sale-bill-change-report-'.date('YmdHis').'.pdf');
    }

    // ─── Sale Bill Change Report — Excel Export (PhpSpreadsheet) ─────────────
    public function exportsalebillchangeexcel(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);
            $outlets = $request->query('outlets');
            $view = $request->query('view', 'bill');

            if ($view === 'item') {
                $data = collect($this->salebillitemchangeData($fromdate, $todate, $outlets, null));
                $headers = [
                    'Outlet',
                    'Bill No',
                    'Bill Date',
                    'Bill Time',
                    'User Name',
                    'Before Sno',
                    'Before Item',
                    'Before Qty',
                    'Before Rate',
                    'Before Disc%',
                    'Before Disc Amt',
                    'After Sno',
                    'After Item',
                    'After Qty',
                    'After Rate',
                    'After Disc%',
                    'After Disc Amt',
                ];
                $title = 'Sale Bill Item Change Report';
            } else {
                $data = collect($this->salebillchangeData($fromdate, $todate, $outlets, null));
                $headers = [
                    'Outlet',
                    'Bill No',
                    'Bill Date',
                    'Bill Time',
                    'Version',
                    'Record Status',
                    'User',
                    'Updated At',
                    'Prev Disc%',
                    'Curr Disc%',
                    'Disc% Change',
                    'Prev Disc Amt',
                    'Curr Disc Amt',
                    'Disc Amt Change',
                    'Prev Net Amt',
                    'Curr Net Amt',
                    'Net Amt Change',
                    'Change Status',
                ];
                $title = 'Sale Bill Change Report';
            }

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $lastColIdx = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($lastColIdx);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle(substr($title, 0, 31));

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', $title);
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Date: '.Carbon::parse($fromdate)->format('d/m/Y').'  to  '.Carbon::parse($todate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => true,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $row) {
                if ($view === 'item') {
                    $cells = [
                        $row->Outlet ?? '',
                        $row->BillNo ?? '',
                        $row->BillDate ?? '',
                        $row->BillTime ?? '',
                        $row->UserName ?? '',
                        $row->BeforeSno ?? '',
                        $row->BeforeName ?? '',
                        (float) ($row->BeforeQty ?? 0),
                        (float) ($row->BeforeRate ?? 0),
                        (float) ($row->BeforeDiscPer ?? 0),
                        (float) ($row->BeforeDiscAmt ?? 0),
                        $row->AfterSno ?? '',
                        $row->AfterName ?? '',
                        is_numeric($row->AfterQty) ? (float) $row->AfterQty : ($row->AfterQty ?? ''),
                        is_numeric($row->AfterRate) ? (float) $row->AfterRate : ($row->AfterRate ?? ''),
                        is_numeric($row->AfterDiscPer) ? (float) $row->AfterDiscPer : ($row->AfterDiscPer ?? ''),
                        is_numeric($row->AfterDiscAmt) ? (float) $row->AfterDiscAmt : ($row->AfterDiscAmt ?? ''),
                    ];
                } else {
                    $cells = [
                        $row->Outlet ?? '',
                        $row->BillNo ?? '',
                        $row->BillDate ?? '',
                        $row->BillTime ?? '',
                        $row->VersionNo ?? '',
                        $row->RecordStatus ?? '',
                        $row->UserName ?? '',
                        $row->UpdateDateTime ?? '',
                        (float) ($row->PrevDiscPer ?? 0),
                        (float) ($row->CurrentDiscPer ?? 0),
                        (float) ($row->DiscPerChange ?? 0),
                        (float) ($row->PrevDiscAmt ?? 0),
                        (float) ($row->CurrentDiscAmt ?? 0),
                        (float) ($row->DiscAmtChange ?? 0),
                        (float) ($row->PrevNetAmt ?? 0),
                        (float) ($row->CurrentNetAmt ?? 0),
                        (float) ($row->NetAmtChange ?? 0),
                        $row->ChangeStatus ?? '',
                    ];
                }
                foreach ($cells as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex($j + 1);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['vertical' => Alignment::VERTICAL_CENTER],
                ]);
                if ($currentRow % 2 === 0) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }

                $currentRow++;
            }

            // Column widths
            foreach ($headers as $i => $h) {
                $sheet->getColumnDimension(
                    Coordinate::stringFromColumnIndex($i + 1)
                )->setWidth(16);
            }
            $sheet->getColumnDimension('A')->setWidth(14);
            $sheet->getColumnDimension('B')->setWidth(12);
            $sheet->getColumnDimension('C')->setWidth(12);

            // ── Download ─────────────────────────────────────────────────────
            $filename = ($view === 'item' ? 'Sale_Bill_Item_Change_Report_' : 'Sale_Bill_Change_Report_')
                .date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Sale Bill Change Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── User List Report ─────────────────────────────────────────────────────

    public function userlistfrm(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.userlistfrm', [
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function fetchuserlistfrm(Request $request)
    {
        $status = $request->input('status', 'all');

        return response()->json(['data' => $this->fetchuserlistdata($status)]);
    }

    private function fetchuserlistdata($status)
    {
        $data = DB::table('users as U')
            ->leftJoin('desig as D', function ($join) {
                $join->on(DB::raw('U.designation COLLATE utf8mb4_unicode_ci'), '=', DB::raw('D.code COLLATE utf8mb4_unicode_ci'));
            })
            ->where('U.propertyid', $this->propertyid);

        if ($status === 'active') {
            $data = $data->where('U.status', 1);
        } elseif ($status === 'inactive') {
            $data = $data->where('U.status', '!=', 1);
        }

        return $data->select(
            'U.name          as username',
            'D.name          as designation',
            DB::raw("CASE WHEN U.superwiser = 1 THEN 'Yes' ELSE 'No' END  as issuperwiser"),
            DB::raw("CASE WHEN U.backdate   = 1 THEN 'Yes' ELSE 'No' END  as backdateentryallow"),
            'U.created_at    as createdate',
            'U.u_name        as createuser',
            DB::raw("CASE WHEN U.status = 1 THEN 'Active' ELSE 'InActive' END as status")
        )
            ->orderBy('U.name')
            ->get();
    }

    // ─── User List Report — Excel Export ──────────────────────────────────────

    public function exportuserlistfrm(Request $request)
    {
        try {
            $status = $request->query('status', 'all');
            $data = $this->fetchuserlistdata($status);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $lastColIdx = 8; // A..H
            $lastCol = Coordinate::stringFromColumnIndex($lastColIdx); // H

            // ── Spreadsheet ───────────────────────────────────────────────────
            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('User List');

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'User List');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Status Filter Info
            $statusLabel = ['all' => 'All', 'active' => 'Active', 'inactive' => 'InActive'][$status] ?? 'All';
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'Status: '.$statusLabel);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'User Name', 'Designation', 'Is Superwiser', 'BackDate Entry Allow', 'Create Date', 'Create User', 'Status'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $createdate = $row->createdate ? Carbon::parse($row->createdate)->format('d/m/Y h:i A') : '';

                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->username ?? '');
                $sheet->setCellValue('C'.$currentRow, $row->designation ?? '-');
                $sheet->setCellValue('D'.$currentRow, $row->issuperwiser);
                $sheet->setCellValue('E'.$currentRow, $row->backdateentryallow);
                $sheet->setCellValue('F'.$currentRow, $createdate);
                $sheet->setCellValue('G'.$currentRow, $row->createuser ?? '');
                $sheet->setCellValue('H'.$currentRow, $row->status);

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // User name left-aligned
                foreach (['B', 'C', 'G'] as $lcol) {
                    $sheet->getStyle($lcol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                }

                $currentRow++;
            }

            // Total Row
            $sheet->mergeCells('A'.$currentRow.':'.'G'.$currentRow);
            $sheet->setCellValue('A'.$currentRow, 'Total Users');
            $sheet->setCellValue('H'.$currentRow, $data->count());

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('H'.$currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_CENTER)
                ->setWrapText(false);

            // Column widths
            $widths = ['A' => 5, 'B' => 25, 'C' => 25, 'D' => 13, 'E' => 19, 'F' => 18, 'G' => 16, 'H' => 11];
            foreach ($widths as $col => $width) {
                $sheet->getColumnDimension($col)->setWidth($width);
            }

            // ── Download ─────────────────────────────────────────────────────
            $filename = 'User_List_'.$statusLabel.'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('User List Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── User List Report — Print (DomPDF) ────────────────────────────────────

    public function printuserlistfrm(Request $request)
    {
        $status = $request->query('status', 'all');
        $data = $this->fetchuserlistdata($status);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.userlistfrmprint', [
            'company' => $company,
            'data' => $data,
            'statusLabel' => ['all' => 'All', 'active' => 'Active', 'inactive' => 'InActive'][$status] ?? 'All',
            'reportTitle' => 'User List',
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('user-list-'.date('YmdHis').'.pdf');
    }

    // ─── User Permission Report ───────────────────────────────────────────────

    public function userpermissionreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $usernames = DB::table('menuhelp')
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->orderBy('username')
            ->pluck('username');

        return view('property.userpermissionreport', [
            'company' => $company,
            'statename' => $statename,
            'usernames' => $usernames,
        ]);
    }

    public function fetchuserpermissionreport(Request $request)
    {
        $username = $request->input('username', 'all');

        return response()->json([
            'permissions' => $this->fetchuserpermissiondata($username),
            'settings' => $this->fetchuserpermsettingsdata($username),
        ]);
    }

    private function fetchuserpermissiondata($username = 'all')
    {
        $data = DB::table('menuhelp')
            ->where('propertyid', $this->propertyid);

        if (! empty($username) && $username !== 'all') {
            $usernames = array_filter(array_map('trim', explode(',', $username)));
            if (! empty($usernames)) {
                $data = $data->whereIn('username', $usernames);
            }
        }

        $data = $data->select(
            'username',
            'module',
            DB::raw("CASE WHEN opt3 = 0 THEN '' WHEN `view` = 1 THEN 'Yes' ELSE 'No' END as isview"),
            DB::raw("CASE WHEN opt3 = 0 THEN '' WHEN flag = 'R' THEN '' WHEN ins = 1 THEN 'Yes' ELSE 'No' END as isadd"),
            DB::raw("CASE WHEN opt3 = 0 THEN '' WHEN flag = 'R' THEN '' WHEN edit = 1 THEN 'Yes' ELSE 'No' END as isedit"),
            DB::raw("CASE WHEN opt3 = 0 THEN '' WHEN flag = 'R' THEN '' WHEN del = 1 THEN 'Yes' ELSE 'No' END as isdelete")
        )
            ->orderBy('username')
            ->orderBy('opt1')
            ->orderBy('opt2')
            ->orderBy('opt3')
            ->get();

        return $data;
    }

    private function fetchuserpermsettingsdata($username = 'all')
    {
        $data = DB::table('userpermission')
            ->where('propertyid', $this->propertyid);

        if (! empty($username) && $username !== 'all') {
            $usernames = array_filter(array_map('trim', explode(',', $username)));
            if (! empty($usernames)) {
                $data = $data->whereIn('username', $usernames);
            }
        }

        $data = $data->select(
            'username',
            DB::raw('posdiscountallowupto as posdisupto'),
            DB::raw('fomdiscuntallowupto as fomdisupto'),
            DB::raw("CASE WHEN editelementinkot = 'Y' THEN 'Yes' ELSE 'No' END as edititeminkot"),
            DB::raw("CASE WHEN freeitemallow = 'Y' THEN 'Yes' ELSE 'No' END as freeiteminkot"),
            DB::raw("CASE WHEN cancelguestbill = 'Y' THEN 'Yes' ELSE 'No' END as guestbillcancel"),
            DB::raw("CASE WHEN changeroomdetail = 'Y' THEN 'Yes' ELSE 'No' END as changeroomdetail"),
            DB::raw("CASE WHEN deleteguestcharges = 'Y' THEN 'Yes' ELSE 'No' END as deleteguestcharges"),
            DB::raw("CASE WHEN changeguestcharges = 'Y' THEN 'Yes' ELSE 'No' END as guestchargechange"),
            DB::raw("CASE WHEN changeguestprofile = 'Y' THEN 'Yes' ELSE 'No' END as changeguestprofile"),
            DB::raw("CASE WHEN cancelreservation = 'Y' THEN 'Yes' ELSE 'No' END as cancelreservation"),
            DB::raw("CASE WHEN allowchkouttimechange = 'Y' THEN 'Yes' ELSE 'No' END as chkouttimechange"),
            DB::raw("CASE WHEN allowadvancechargeedit = 'Y' THEN 'Yes' ELSE 'No' END as editadvancevoucher"),
            DB::raw("CASE WHEN posrateedit = 'Y' THEN 'Yes' ELSE 'No' END as posrateedit"),
            DB::raw("CASE WHEN voucherverify = 1 THEN 'Yes' ELSE 'No' END as voucherverify"),
            'created_at as lastupdate'
        )
            ->orderBy('username')
            ->get();

        return $data;
    }

    // ─── User Permission Report — Excel Export ────────────────────────────────

    public function exportuserpermissionreport(Request $request)
    {
        try {
            $username = $request->query('username', 'all');
            $data = $this->fetchuserpermissiondata($username);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $lastColIdx = 7; // A..G
            $lastCol = Coordinate::stringFromColumnIndex($lastColIdx); // G

            // ── Spreadsheet ───────────────────────────────────────────────────
            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('User Permission Report');

            // Row 1: Company Name
            $sheet->mergeCells('A1:'.$lastCol.'1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:'.$lastCol.'2');
            $sheet->setCellValue('A2', 'User Permission Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Username Filter Info
            $userLabel = (! empty($username) && $username !== 'all') ? $username : 'All Users';
            $sheet->mergeCells('A3:'.$lastCol.'3');
            $sheet->setCellValue('A3', 'User: '.$userLabel);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Username', 'Module', 'Is View', 'Is Add', 'Is Edit', 'Is Delete'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A'.$currentRow, $i + 1);
                $sheet->setCellValue('B'.$currentRow, $row->username ?? '');
                $sheet->setCellValue('C'.$currentRow, $row->module ?? '');
                $sheet->setCellValue('D'.$currentRow, $row->isview);
                $sheet->setCellValue('E'.$currentRow, $row->isadd);
                $sheet->setCellValue('F'.$currentRow, $row->isedit);
                $sheet->setCellValue('G'.$currentRow, $row->isdelete);

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER,
                        'vertical' => Alignment::VERTICAL_CENTER,
                    ],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Left-aligned columns
                foreach (['B', 'C'] as $lcol) {
                    $sheet->getStyle($lcol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                }

                $currentRow++;
            }

            // Total Row
            $sheet->mergeCells('A'.$currentRow.':'.'F'.$currentRow);
            $sheet->setCellValue('A'.$currentRow, 'Total Modules');
            $sheet->setCellValue('G'.$currentRow, count($data));

            $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('G'.$currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_CENTER)
                ->setWrapText(false);

            // Column widths
            $widths = ['A' => 5, 'B' => 16, 'C' => 38, 'D' => 9, 'E' => 9, 'F' => 9, 'G' => 11];
            foreach ($widths as $col => $width) {
                $sheet->getColumnDimension($col)->setWidth($width);
            }

            // ── Sheet 2: User Settings (userpermission table) ─────────────────
            $settings = $this->fetchuserpermsettingsdata($username);

            $sheet2 = $spreadsheet->createSheet();
            $sheet2->setTitle('User Settings');

            $lastColIdx2 = 17; // A..Q
            $lastCol2 = Coordinate::stringFromColumnIndex($lastColIdx2); // Q

            // Row 1: Company Name
            $sheet2->mergeCells('A1:'.$lastCol2.'1');
            $sheet2->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet2->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet2->mergeCells('A2:'.$lastCol2.'2');
            $sheet2->setCellValue('A2', 'User Settings');
            $sheet2->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Username Filter Info
            $sheet2->mergeCells('A3:'.$lastCol2.'3');
            $sheet2->setCellValue('A3', 'User: '.$userLabel);
            $sheet2->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers2 = [
                '#',
                'User Name',
                'POS Dis.UPTO',
                'FOM Dis.UPTO',
                'Edit Item In KOT',
                'Free Item In KOT',
                'Guest Bill Cancel',
                'Change Room Detail',
                'Delete Guest Charges',
                'Guest Charge Change',
                'Change Guest Profile',
                'Cancel Reservation',
                'Check Out Time Change',
                'Edit Advance Voucher',
                'POS Rate Edit',
                'Voucher Verify Allow',
                'Last Update',
            ];
            $headerRow2 = 5;
            foreach ($headers2 as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet2->setCellValue($col.$headerRow2, $h);
            }
            $sheet2->getStyle('A'.$headerRow2.':'.$lastCol2.$headerRow2)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => true,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow2 = $headerRow2 + 1;
            foreach ($settings as $i => $row) {
                $sheet2->setCellValue('A'.$currentRow2, $i + 1);
                $sheet2->setCellValue('B'.$currentRow2, $row->username ?? '');
                $sheet2->setCellValue('C'.$currentRow2, (float) $row->posdisupto);
                $sheet2->setCellValue('D'.$currentRow2, (float) $row->fomdisupto);
                $sheet2->setCellValue('E'.$currentRow2, $row->edititeminkot);
                $sheet2->setCellValue('F'.$currentRow2, $row->freeiteminkot);
                $sheet2->setCellValue('G'.$currentRow2, $row->guestbillcancel);
                $sheet2->setCellValue('H'.$currentRow2, $row->changeroomdetail);
                $sheet2->setCellValue('I'.$currentRow2, $row->deleteguestcharges);
                $sheet2->setCellValue('J'.$currentRow2, $row->guestchargechange);
                $sheet2->setCellValue('K'.$currentRow2, $row->changeguestprofile);
                $sheet2->setCellValue('L'.$currentRow2, $row->cancelreservation);
                $sheet2->setCellValue('M'.$currentRow2, $row->chkouttimechange);
                $sheet2->setCellValue('N'.$currentRow2, $row->editadvancevoucher);
                $sheet2->setCellValue('O'.$currentRow2, $row->posrateedit);
                $sheet2->setCellValue('P'.$currentRow2, $row->voucherverify);
                $sheet2->setCellValue('Q'.$currentRow2, $row->lastupdate ? Carbon::parse($row->lastupdate)->format('d/m/Y h:i A') : '');

                // Row styling
                $sheet2->getStyle('A'.$currentRow2.':'.$lastCol2.$currentRow2)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER,
                        'vertical' => Alignment::VERTICAL_CENTER,
                    ],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet2->getStyle('A'.$currentRow2.':'.$lastCol2.$currentRow2)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Left-aligned columns
                foreach (['B'] as $lcol) {
                    $sheet2->getStyle($lcol.$currentRow2)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                }
                // Discount columns number format
                foreach (['C', 'D'] as $ncol) {
                    $sheet2->getStyle($ncol.$currentRow2)->getNumberFormat()->setFormatCode('#,##0.00');
                    $sheet2->getStyle($ncol.$currentRow2)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                }

                $currentRow2++;
            }

            // Total Row
            $sheet2->mergeCells('A'.$currentRow2.':'.'P'.$currentRow2);
            $sheet2->setCellValue('A'.$currentRow2, 'Total Users');
            $sheet2->setCellValue('Q'.$currentRow2, count($settings));

            $sheet2->getStyle('A'.$currentRow2.':'.$lastCol2.$currentRow2)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet2->getStyle('Q'.$currentRow2)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_CENTER)
                ->setWrapText(false);

            // Column widths
            $widths2 = [
                'A' => 5,
                'B' => 16,
                'C' => 12,
                'D' => 12,
                'E' => 11,
                'F' => 11,
                'G' => 12,
                'H' => 13,
                'I' => 13,
                'J' => 13,
                'K' => 13,
                'L' => 13,
                'M' => 13,
                'N' => 13,
                'O' => 11,
                'P' => 12,
                'Q' => 16,
            ];
            foreach ($widths2 as $col => $width) {
                $sheet2->getColumnDimension($col)->setWidth($width);
            }

            // ── Download ─────────────────────────────────────────────────────
            $filename = 'User_Permission_Report_'.str_replace(',', '_', $userLabel).'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('User Permission Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }

    // ─── User Permission Report — Print (DomPDF) ──────────────────────────────

    public function printuserpermissionreport(Request $request)
    {
        ini_set('memory_limit', '2048M');
        set_time_limit(300);

        $username = $request->query('username', 'all');
        $data = $this->fetchuserpermissiondata($username);
        $settings = $this->fetchuserpermsettingsdata($username);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.userpermissionreportprint', [
            'company' => $company,
            'data' => $data,
            'settings' => $settings,
            'userLabel' => (! empty($username) && $username !== 'all') ? $username : 'All Users',
            'reportTitle' => 'User Permission Report',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('user-permission-report-'.date('YmdHis').'.pdf');
    }

    // ─── Discount Report ──────────────────────────────────────────────────────

    public function discountreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');
        $departs = Depart::where('propertyid', $this->propertyid)
            ->whereIn('nature', ['Room Service', 'Outlet'])
            ->groupBy('dcode')
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.discountreport', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
            'departs' => $departs,
        ]);
    }

    public function fetchdiscountreport(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);
        $outlets = $request->input('outlets');

        if (! empty($outlets)) {
            $restcodes = array_filter(array_map('trim', explode(',', $outlets)));
        } else {
            $restcodes = Depart::where('propertyid', $this->propertyid)
                ->whereIn('nature', ['Room Service', 'Outlet'])
                ->pluck('dcode')
                ->toArray();
        }

        if (empty($restcodes)) {
            return response()->json(['data' => []]);
        }

        $data = DB::table('stock as S')
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->on('S.restcode', '=', 'I.RestCode');
            })
            ->leftJoin('guestprof as G', 'S.docid', '=', 'G.docid')
            ->where('S.delflag', '<>', 'Y')
            ->where('S.propertyid', $this->propertyid)
            ->where('S.discper', '>', 0)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.restcode', $restcodes)
            ->select(
                'D.name        as departname',
                'S.vdate       as vdate',
                'G.name        as name',
                'G.mobile_no   as mobileno',
                'S.vno         as vno',
                'I.name        as itemname',
                'S.qtyiss      as quantity',
                'S.rate        as rate',
                'S.amount      as amount',
                'S.discper     as discper',
                'S.discamt     as discamt',
                'S.u_name      as username',
                'S.created_at     as changedate'
            )
            ->orderBy('D.name', 'ASC')
            ->orderBy('S.vdate', 'ASC')
            ->orderBy('S.vno', 'ASC')
            ->get();

        return response()->json(['data' => $data]);
    }

    private function discountreportData($fromdate, $todate, $restcodes)
    {
        return DB::table('stock as S')
            ->leftJoin('depart as D', 'S.restcode', '=', 'D.dcode')
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->on('S.restcode', '=', 'I.RestCode');
            })
            ->leftJoin('guestprof as G', 'S.docid', '=', 'G.docid')
            ->where('S.delflag', '<>', 'Y')
            ->where('S.propertyid', $this->propertyid)
            ->where('S.discper', '>', 0)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.restcode', $restcodes)
            ->select(
                'D.name        as departname',
                'S.vdate       as vdate',
                'G.name        as name',
                'G.mobile_no   as mobileno',
                'S.vno         as vno',
                'I.name        as itemname',
                'S.qtyiss      as quantity',
                'S.rate        as rate',
                'S.amount      as amount',
                'S.discper     as discper',
                'S.discamt     as discamt',
                'S.u_name      as username',
                'S.created_at     as changedate'
            )
            ->orderBy('D.name', 'ASC')
            ->orderBy('S.vdate', 'ASC')
            ->orderBy('S.vno', 'ASC')
            ->get();
    }

    public function printdiscountreport(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);
        $outlets = $request->query('outlets', '');

        if (! empty($outlets)) {
            $restcodes = array_filter(array_map('trim', explode(',', $outlets)));
        } else {
            $restcodes = Depart::where('propertyid', $this->propertyid)
                ->whereIn('nature', ['Room Service', 'Outlet'])
                ->pluck('dcode')
                ->toArray();
        }

        $data = $this->discountreportData($fromdate, $todate, $restcodes);
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return Pdf::loadView('property.print.discountreportprint', [
            'company' => $company,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape')
            ->stream('discount-report-'.$fromdate.'-to-'.$todate.'.pdf');
    }

    public function exportdiscountreport(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);
            $outlets = $request->query('outlets', '');

            if (! empty($outlets)) {
                $restcodes = array_filter(array_map('trim', explode(',', $outlets)));
            } else {
                $restcodes = Depart::where('propertyid', $this->propertyid)
                    ->whereIn('nature', ['Room Service', 'Outlet'])
                    ->pluck('dcode')
                    ->toArray();
            }

            $data = $this->discountreportData($fromdate, $todate, $restcodes);
            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $headers = [
                '#',
                'Outlet',
                'Date',
                'Guest Name',
                'Mobile No',
                'Bill No',
                'Item Name',
                'Quantity',
                'Rate',
                'Amount',
                'Disc %',
                'Disc Amt',
                'User',
                'Change Date',
            ];
            $colCount = count($headers);
            $lastCol = Coordinate::stringFromColumnIndex($colCount);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Discount Report');

            // Row 1: Company Name
            $sheet->mergeCells("A1:{$lastCol}1");
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells("A2:{$lastCol}2");
            $sheet->setCellValue('A2', 'Discount Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date range
            $sheet->mergeCells("A3:{$lastCol}3");
            $sheet->setCellValue('A3', 'From: '.Carbon::parse($fromdate)->format('d/m/Y')
                .'  To: '.Carbon::parse($todate)->format('d/m/Y'));
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col.$headerRow, $h);
            }
            $sheet->getStyle('A'.$headerRow.':'.$lastCol.$headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $vdate = $row->vdate ? Carbon::parse($row->vdate)->format('d/m/Y') : '-';
                $changedate = $row->changedate ? Carbon::parse($row->changedate)->format('d/m/Y H:i:s') : '-';

                $vals = [
                    $i + 1,
                    $row->departname ?? '-',
                    $vdate,
                    $row->name ?? '-',
                    $row->mobileno ?? '-',
                    $row->vno ?? '-',
                    $row->itemname ?? '-',
                    (float) ($row->quantity ?? 0),
                    (float) ($row->rate ?? 0),
                    (float) ($row->amount ?? 0),
                    (float) ($row->discper ?? 0),
                    (float) ($row->discamt ?? 0),
                    $row->username ?? '-',
                    $changedate,
                ];
                foreach ($vals as $j => $v) {
                    $col = Coordinate::stringFromColumnIndex($j + 1);
                    $sheet->setCellValue($col.$currentRow, $v);
                }

                // Row styling
                $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A'.$currentRow.':'.$lastCol.$currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Money columns right-aligned
                foreach (['H', 'I', 'J', 'K', 'L'] as $mCol) {
                    $sheet->getStyle($mCol.$currentRow)->getAlignment()
                        ->setHorizontal(Alignment::HORIZONTAL_RIGHT)
                        ->setWrapText(false);
                    $sheet->getStyle($mCol.$currentRow)->getNumberFormat()
                        ->setFormatCode('#,##0.00');
                }
                // Guest name left-aligned
                $sheet->getStyle('D'.$currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Column widths
            $widths = [5, 14, 12, 16, 12, 10, 18, 8, 10, 12, 8, 10, 12, 18];
            foreach ($widths as $i => $w) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->getColumnDimension($col)->setWidth($w);
            }

            $filename = 'Discount_Report_'.Carbon::parse($fromdate)->format('Ymd').'_to_'
                .Carbon::parse($todate)->format('Ymd').'_'.date('YmdHis').'.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Discount Report Excel Export Error: '.$e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: '.$e->getMessage(),
            ], 500);
        }
    }
}
