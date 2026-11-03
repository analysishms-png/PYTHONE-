<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Helpers\WhatsappSend;
use App\Http\Middleware\ValidateSignature;
use App\Models\CompanyLog;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\Items;
use App\Models\Depart1;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\ItemCatMast;
use App\Models\ItemGrp;
use App\Models\Sale1;
use App\Models\Sale2;
use App\Models\Stock;
use App\Models\States;
use App\Models\SessionMast;
use App\Models\Kot;
use App\Models\Paycharge;
use App\Models\PaychargeLog;
use App\Models\MenuHelp;
use App\Models\Depart;
use App\Models\Revmast;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Models\ExpenseEntry;
use App\Models\GodownMast;
use App\Models\PrintingSetup;
use App\Models\RoomMast;
use App\Models\RoomOcc;
use App\Models\Sagar;
use App\Models\SubGroup;
use App\Models\Sundrytype;
use App\Models\User;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Faker\Provider\ar_EG\Company;
use Hamcrest\Core\IsSame;
use Illuminate\Filesystem\AwsS3V3Adapter;
use Illuminate\Support\Facades\Log;
use PhpParser\Node\Stmt\TryCatch;

use function App\Helpers\removeSuffixIfExists;
use function App\Helpers\splitByJoin;

class Pos extends Controller
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

    public function displaytable(Request $request)
    {
        // $permission = revokeopen(172014);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();
        if (strtolower($departdata->nature) == 'room service') {
            $label = 'Room No';
        } else {
            $label = 'Table No';
        }

        if (strtolower($departdata->nature) == 'room service') {
            $kotSubquery = Kot::select(
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
                    $query->where('kot.delflag', 'N')
                        ->orWhere('kot.delflag', '');
                })
                ->where('kot.nckot', '<>', 'Y');

            // Billing Subquery
            $billSubquery = Sale1::select(
                'sale1.docid',
                DB::raw('MAX(sale1.vno) AS billno'),
                DB::raw('MAX(sale1.vtime) AS vtime'),
                DB::raw('MAX(sale1.roomno) AS roomno'),
                DB::raw('MAX(sale1.waiter) AS waiter'),
                DB::raw('MAX(server_mast.name) AS waitername'),
                DB::raw('CASE WHEN SUM(COALESCE(paycharge.amtcr, 0)) < SUM(sale1.netamt) THEN "Pending" ELSE "Settle" END AS Status')
            )
                ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
                ->whereNull('paycharge.docid')
                ->where(function ($query) {
                    $query->where('sale1.delflag', '')
                        ->orWhere('sale1.delflag', 'N');
                })
                ->where('sale1.roomtype', 'RO')
                ->where('sale1.restcode', $dcode)
                ->groupBy('sale1.docid');


            // No Status Subquery
            $noStatusSubquery = Sale1::select('sale1.roomno')
                ->distinct()
                ->join('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->where('sale1.restcode', $dcode)
                ->where('paycharge.restcode', $dcode)
                ->where('sale1.roomtype', 'RO');

            // Main Query
            $roomocc = Roomocc::select(
                'roomocc.roomno AS roomno',
                'roomocc.name AS name',
                DB::raw('COALESCE(BB.waitername, AA.waitername) AS waitername'),
                DB::raw('COALESCE(BB.vtime, AA.vtime) AS vtime'),
                DB::raw('CASE
                WHEN BB.waitername IS NOT NULL AND BB.billno IS NOT NULL THEN "billed"
                WHEN AA.waitername IS NOT NULL THEN "occupied"
                WHEN CC.roomno IS NOT NULL THEN "vacant"
                ELSE "vacant"
            END AS status
            ')
            )
                ->leftJoinSub($kotSubquery, 'AA', function ($join) {
                    $join->on('AA.roomno', '=', 'roomocc.roomno');
                })
                ->leftJoinSub($billSubquery, 'BB', function ($join) {
                    $join->on('BB.roomno', '=', 'roomocc.roomno');
                })
                ->leftJoinSub($noStatusSubquery, 'CC', function ($join) {
                    $join->on('CC.roomno', '=', 'roomocc.roomno');
                })
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->where('guestfolio.nochargepost', 'N');
                })
                ->where('guestfolio.nochargepost', 'N')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('roomocc.roomtype', 'RO')
                ->whereNull('roomocc.type')
                ->groupBY('roomocc.roomno')
                ->orderBy('roomocc.roomno')
                ->get();
        } else if ($departdata->nature == 'Outlet') {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();

            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
            $kotSubquery = Kot::select(
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
                    $query->where('kot.delflag', 'N')
                        ->orWhere('kot.delflag', '');
                })
                ->where('kot.nckot', '<>', 'Y');

            $billSubquery = Sale1::select(
                'sale1.docid',
                DB::raw('MAX(sale1.vno) AS billno'),
                DB::raw('MAX(sale1.vtime) AS vtime'),
                DB::raw('MAX(sale1.roomno) AS roomno'),
                DB::raw('MAX(sale1.waiter) AS waiter'),
                DB::raw('MAX(server_mast.name) AS waitername'),
                DB::raw('CASE WHEN SUM(IFNULL(paycharge.amtcr, 0)) < SUM(sale1.netamt) THEN "Pending" ELSE "Settle" END AS Status')
            )
                ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
                ->whereNull('paycharge.docid')
                ->where(function ($query) {
                    $query->where('sale1.delflag', '')
                        ->orWhere('sale1.delflag', 'N');
                })
                ->where('sale1.roomcat', 'TABLE')
                ->where('sale1.roomtype', 'TB')
                ->whereIn('sale1.restcode', $restcodes)
                ->groupBy('sale1.docid');


            // Tablebooking subquery — today's active bookings (not cancelled, not linked to KOT yet)
            $vtype = 'R' . ($departdata->short_name ?? '');
            $today = ncurdate();
            $bookedSubquery = DB::table('tablebooking')
                ->select('tabaleno')
                ->where('propertyid', $this->propertyid)
                ->where('vtype', $vtype)
                ->where('cancelyn', 'N')
                ->where('contradocid', '')
                ->where('bookindate', $today);

            // Now, define the main query
            $roomocc = RoomMast::select(
                'room_mast.rcode AS roomno',
                'room_mast.name',
                DB::raw('COALESCE(BB.waitername, AA.waitername) AS waitername'),
                DB::raw('COALESCE(BB.vtime, AA.vtime) AS vtime'),
                'room_mast.rest_code',
                'AA.contradocid',
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

        // return $roomocc;
        // foreach ($roomocc as $row) {
        //     echo $row->roomno . ' - ' . $row->status . ' - ' . $row->waitername . '</br>';
        // }
        // return;

        $colors = [
            'occupied' => $departdata->occupied,
            'vacant' => $departdata->vacant,
            'billed' => $departdata->billed
        ];

        // return $colors;

        return view('property.pos_displaytable', [
            'depdata' => $departdata,
            'roomocc' => $roomocc,
            'colors' => $colors,
            'label' => $label,
            'visiblebell' => true
        ]);
    }

    public function colorfilldisp(Request $request, $dcode)
    {
        // dd([
        //     'hit' => true,
        //     'propertyid' => $this->propertyid,
        //     'dcode' => $dcode,
        // ]);
        try {
            $kot = Kot::select('kot.*', 'server_mast.name as waitername')
                ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
                ->where('kot.propertyid', $this->propertyid)
                ->where('kot.restcode', $dcode)
                ->where('kot.pending', 'Y')
                ->where('kot.nckot', 'N')
                ->where('kot.voidyn', 'N')
                ->where('kot.delflag', '')
                ->where('kot.contradocid', '')
                ->groupBy('kot.docid')
                ->get();

            $sessionmast = SessionMast::where('propertyid', $this->propertyid)->get();

            $firstkot = KOT::where('propertyid', $this->propertyid)
                ->where('restcode', $dcode)
                ->where('pending', 'Y')
                ->latest('docid')
                ->limit(200)
                ->get();

            $sale1 = Sale1::select(
                'sale1.roomno',
                'sale1.vno',
                DB::raw("
                    CASE 
                        WHEN paycharge.docid IS NOT NULL THEN 'Not Pending' 
                        ELSE 'Pending' 
                    END AS status
                    ")
            )
                ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
                ->where('sale1.propertyid', $this->propertyid)
                ->where('sale1.restcode', $dcode)
                ->latest('sale1.docid')
                ->limit(200)
                ->get();

            $data = [
                'sessionmast' => $sessionmast,
                'kot' => $kot,
                'firstkot' => $firstkot,
                'sale1' => $sale1,
            ];
            return response()->json($data);
        } catch (\Throwable $e) {
            return response()->json([
                'message' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ], 500);
        }
    }

    public function posbillentry(Request $request)
    {
        // $permission = revokeopen(151412);
        // if (is_null($permission) || $permission->del == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('restcode', $dcode)->get();
        $printsetup = PrintingSetup::where('propertyid', $this->propertyid)->where('restcode', $departdata->dcode)->where('module', 'POS')->first();

        if (!isset($printsetup)) {
            return back()->with('error', 'Please Fill Printing Setup First');
        }
        return view('property.pos_billentry', [
            'depdata' => $departdata,
            'sale1' => $sale1,
            'printsetup' => $printsetup,
        ]);
    }

    public function settlemententry(Request $request)
    {
        // $permission = revokeopen(151413);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $vno = $request->query('vno');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('restcode', $dcode)->get();
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
            ->where('depart_pay.rest_code', $dcode)
            ->where('depart_pay.propertyid', $this->propertyid)
            ->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();

        // $pendingtmp = Sale1::select(
        //     'sale1.vno',
        //     'sale1.docid',
        //     'paycharge.amtcr',
        //     'paycharge.id',
        //     'sale1.netamt',
        //     'sale1.roomno',
        //     'server_mast.name as waitername',
        //     'sale1.mergedwith'
        // )
        //     ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
        //     ->leftJoin('paycharge', 'paycharge.docid', '=', 'sale1.docid')
        //     ->where('sale1.propertyid', $this->propertyid)
        //     ->where('sale1.restcode', $dcode)
        //     ->where('sale1.delflag', 'N')
        //     ->groupBy('sale1.docid')
        //     ->get();

        $pendingtmp = DB::table('sale1')
            ->select([
                'sale1.docid',
                'sale1.vprefix as billedyear',
                'sale1.vno',
                'sale1.netamt',
                DB::raw('COALESCE(SUM(paycharge.amtcr), 0) as total_paid'),
                DB::raw('(sale1.netamt - COALESCE(SUM(paycharge.amtcr), 0)) as balanceamt'),
                'sale1.roomno',
                'server_mast.name as waitername'
            ])
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.docid', '=', 'sale1.docid')
                    ->on('paycharge.vprefix', '=', 'sale1.vprefix');
            })
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
            ->where('sale1.propertyid', $this->propertyid)
            ->where('sale1.restcode', $dcode)
            ->where('sale1.delflag', 'N')
            ->groupBy('sale1.docid', 'sale1.vno', 'sale1.netamt', 'sale1.roomno', 'server_mast.name')
            ->havingRaw('COALESCE(SUM(paycharge.amtcr), 0) < sale1.netamt')
            ->orderByDesc('sale1.vno')
            ->get();


        $pending = [];

        foreach ($pendingtmp as $row) {
            $pending[] = [
                'vno' => $row->vno,
                'docid' => $row->docid,
                'netamt'     => $row->netamt,
                'roomno'     => $row->roomno,
                'waitername' => $row->waitername,
                'total_paid' => $row->total_paid,
                'balanceamt' => $row->balanceamt,
                'billedyear' => $row->billedyear
            ];
        }

        // $secondrooms = RoomOcc::leftJoin('paycharge', function ($join) {
        //     $join->on('paycharge.roomno', '=', 'roomocc.roomno')
        //         ->on('paycharge.propertyid', '=', 'roomocc.propertyid');
        // })
        //     ->where('roomocc.propertyid', $this->propertyid)
        //     ->where(function ($query) {
        //         $query->where('paycharge.billno', 0)
        //             ->orWhereNull('paycharge.billno');
        //     })
        //     ->whereNull('roomocc.type')
        //     ->groupBy('roomocc.roomno')
        //     ->orderBy('roomocc.roomno')
        //     ->select('roomocc.roomno')
        //     ->get();
        $secondrooms = RoomOcc::leftJoin('paycharge', function ($join) {
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

        // return $pending;
        return view('property.pos_settlemententry', [
            'sale1' => $sale1,
            'depdata' => $departdata,
            'companydata' => $companydata,
            'revdata' => $records,
            'company' => $company,
            'pending' => $pending,
            'vno' => $vno,
            'secondrooms' => $secondrooms,
        ]);
    }

    public function deletebillxhr(Request $request)
    {
        $docid = $request->input('docid');
        $reason = $request->input('reason');
        $existingrowsdata = Paycharge::where('propertyid', $this->propertyid)->where('docid', $docid)->get();
        foreach ($existingrowsdata as $existingrows) {
            $loginsertdata = [
                'propertyid' => $this->propertyid,
                'docid' => $existingrows->docid,
                'vno' => $existingrows->vno,
                'vtype' => $existingrows->vtype,
                'sno' => $existingrows->sno,
                'vdate' => $existingrows->vdate,
                'vtime' => $existingrows->vtime,
                'vprefix' => $existingrows->vprefix,
                'paycode' => $existingrows->paycode,
                'comments' => $existingrows->comments,
                'guestprof' => $existingrows->guestprof,
                'roomno' => $existingrows->roomno,
                'amtdr' => $existingrows->amtdr,
                'roomtype' => $existingrows->roomtype,
                'roomcat' => $existingrows->roomcat,
                'foliono' => $existingrows->foliono,
                'restcode' => $existingrows->restcode,
                'remarks' => $reason,
                'billamount' => $existingrows->billamount,
                'taxper' => $existingrows->taxper,
                'onamt' => $existingrows->onamt,
                'folionodocid' => $existingrows->folionodocid,
                'taxcondamt' => $existingrows->taxcondamt,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];
            PaychargeLog::insert($loginsertdata);
        }
        Paycharge::where('propertyid', $this->propertyid)->where('docid', $docid)->delete();

        $msg = 'Bill Deleted Successfully';
        return json_encode($msg);
    }

    public function setentrypos(Request $request)
    {
        $dcode = $request->input('dcode');
        $billno = $request->input('billno');
        $vprefix = $request->vprefix;
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        $sale1 = Sale1::select('sale1.*', 'server_mast.name as waitername')
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
            ->where('sale1.propertyid', $this->propertyid)
            ->where('sale1.restcode', $dcode)
            ->where('vprefix', $vprefix)
            ->where('sale1.vno', $billno)
            ->first();

        $mergedwith = !empty($sale1->mergedwith)
            ? array_map('trim', explode(',', $sale1->mergedwith))
            : [$sale1->docid];
        $sale2 = [];
        //  STEP 1: Check if item->docid exists in mergedwith array
        if (in_array($sale1->docid, $mergedwith)) {

            // Base amount
            $netamt = $sale1->netamt;

            // STEP 2: Find docids which are NOT matching
            $otherDocIds = array_diff($mergedwith, [$sale1->docid]);

            if (!empty($otherDocIds)) {

                // Fetch paycharge for non-matching docids
                $sale2 = Sale1::where('sale1.propertyid', $this->propertyid)
                    ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
                    ->where('sale1.docid', $otherDocIds)
                    ->where('vprefix', $vprefix)
                    ->first();

                // Add paycharge amount
                $netamt += $sale2->netamt ?? 0.00;
            }
        } else {

            // Fallback case (normally not required)
            $netamt = $sale1->netamt;
        }
        // $netamt = $sale1->netamt;

        $sale2 = Sale2::select('sale2.*')
            ->where('sale2.propertyid', $this->propertyid)->where('sale2.restcode', $dcode)
            ->where('vprefix', $vprefix)
            ->where('sale2.vno', $billno)
            ->groupBy('sale2.docid')
            ->first();
        $paycharge1 = Paycharge::select('paycharge.sno', 'paycharge.sno1', 'paycharge.billamount', 'paycharge.roomno', 'paycharge.restcode', 'paycharge.amtcr', 'revmast.rev_code', 'revmast.name', 'paycharge.amtdr', 'paycharge.vdate')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->whereNot('paycharge.amtcr', 0.00)
            ->where('paycharge.docid', $sale1->docid)
            // ->where('paycharge.vtype', $sale1->vtype)
            // ->where('paycharge.restcode', $dcode)
            // ->where('paycharge.vprefix', $vprefix)
            // ->where('paycharge.vno', $billno)
            ->first();
        $paycharge2 = Paycharge::select('paycharge.*', 'subgroup.name as companyname')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'paycharge.comp_code')
            // ->where('paycharge.vno', $billno)
            // ->where('paycharge.vprefix', $vprefix)
            // ->where('paycharge.vtype', $sale1->vtype)
            ->where('paycharge.docid', $sale1->docid)
            ->where('paycharge.propertyid', $this->propertyid)
            // ->where('paycharge.restcode', $dcode)
            ->orderBy('paycharge.sno', 'ASC')
            ->get();
        $settled = 'No';
        $settledroom = '';


        $countpaycharge2 = count($paycharge2);

        if ($countpaycharge2 > 0) {
            foreach ($paycharge2 as $row) {
                if ('TOUT' . $this->propertyid ==  $row->paycode) {
                    $settled  = 'Yes';
                    $settledroom = $row->roomno;
                }
            }
            $data = [
                'settledroom' => $settledroom,
                'settled' => $settled,
                'dcode' => $dcode,
                'billno' => $billno,
                'sale1' => $sale1,
                'sale2' => '', //$sale2,
                'paycharge1' => $paycharge1,
                'paycharge2' => $paycharge2,
                'netamt' =>  $sale1->netamt,
            ];
        } else {
            $data = [
                'settledroom' => $settledroom,
                'settled' => $settled,
                'dcode' => $dcode,
                'billno' => $billno,
                'sale1' => $sale1,
                'sale2' => $sale2,
                'paycharge1' => $paycharge1,
                'paycharge2' => $paycharge2,
                'netamt' => $netamt,
            ];
        }

        return json_encode($data);
    }

    public function possalebillsettleupdate(Request $request)
    {

        // echo "<pre>";
        // print_r($request->all());
        // die();

        $sale1docid = $request->input('sale1docid');
        $rowcount = $request->input('rowcount');

        $chargetype = [];
        for ($i = 1; $i <= $rowcount; $i++) {
            $input = $request->input('chargetype' . $i);
            if (!empty($input)) {
                $chargetype[] = $input;
            }
        }


        // echo $rowcount;

        // echo '<pre>';
        // print_r($chargetype);
        // echo '</pre>';
        // exit;

        $string = ['ROOM SETTLEMENT', 'Room'];

        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('docid', $sale1docid)->first();
        $paycharge1 = Paycharge::select('paycharge.amtcr', 'paycharge.sno1', 'revmast.rev_code', 'revmast.name', 'paycharge.amtdr', 'paycharge.vdate')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->whereNot('paycharge.amtcr', 0.00)
            ->where('paycharge.docid', $sale1docid)->first();
        $restcode = $request->input('dcode');
        $paycode1 = 'ROOM' . $this->propertyid;
        $netamount = $request->input('netamount');
        $revdata1 = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $paycode1)->first();
        $roomno = $request->input('roomno');
        $fixroomno = $request->input('fixroomno');

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $sale1->vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;
        // $vprefix = $chkvpf->prefix;

        $delete = Paycharge::where('propertyid', $this->propertyid)->where('docid', $sale1docid)->delete();
        $msno1 = 0;
        $roomdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
        if ($roomdata) {
            $rocc = RoomOcc::where('docid', $roomdata->docid)->where('leaderyn', 'Y')->first();
            if ($rocc) {
                $msno1 = $rocc->sno1;
            }
        }

        $roomtype = $roomdata->roomtype ?? 'TB';
        $roomcat = $roomdata->roomcat ?? 'TABLE';

        if (array_intersect($string, $chargetype)) {
            $vdate = $paycharge1->vdate ?? $this->ncurdate;
            $vprefix = $sale1->vprefix;
            $roomtype = 'RO';
            $paycode2 = 'TOUT' . $this->propertyid;
            $revdata2 = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $paycode2)->first();
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
                'comments' => '(' . $sale1->vtype . ')' . ' BILL NO.- ' . $sale1->vno,
                'paytype' => $revdata1->pay_type,
                'folionodocid' => $roomdata->docid ?? '',
                'restcode' => $sale1->restcode,
                'roomno' => $roomno,
                'roomcat' => $roomdata->roomcat ?? '',
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

        $prefixes = array('sno', 'chargetype', 'amtrow', 'chargecode');

        $count = 0;
        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'chargecode') === 0) {
                $count++;
            }
        }
        $snos = Paycharge::where('docid', $sale1docid)->where('propertyid', $this->propertyid)->max('sno') + 1 ?? 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $vdate = $paycharge1->vdate ?? $this->ncurdate;
                $paycodes = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $request->input('chargecode' . $i))->first();

                $insertdata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $sale1docid,
                    'vno' => $sale1->vno,
                    'vtype' => $sale1->vtype,
                    'sno' => $snos,
                    'sno1' => $sale1->sno1,
                    'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
                    'cardno' => $request->input('crnumber'),
                    'cardholder' => $request->input('holdername'),
                    'expdate' => $request->input('expdatecr'),
                    'bookno' => $request->input('batchno'),
                    'vdate' => $vdate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $sale1->vprefix,
                    'comp_code' => $request->input('compcode' . $i) ?? '',
                    'paycode' => $request->input('chargecode' . $i),
                    'paytype' => $paycodes->pay_type ?? '',
                    'comments' => $request->input('chargenarration' . $i),
                    'guestprof' => '',
                    'roomno' => $request->input('fixroomno') ?? $sale1->roomno,
                    'amtcr' => $request->input('amtrow' . $i),
                    'roomtype' => $sale1->roomtype,
                    'roomcat' => $sale1->roomcat,
                    'foliono' => 0,
                    'restcode' => $sale1->restcode,
                    'billamount' => $netamount,
                    'taxper' => 0,
                    'onamt' => 0.00,
                    'folionodocid' => null,
                    'taxcondamt' => 0,
                    'taxstru' => '',
                    'created_at' => $this->currenttime,
                    'settledate' => null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'modeset' => null,
                ];

                if (!empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }
            if (!$isEmptyRow) {
                Paycharge::insert($insertdata);
                $snos++;
            }
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

        return back()->with('success', 'Settlement Entry Submitted');
    }

    // public function possalebillsettle(Request $request)
    // {
    //     DB::beginTransaction();
    //     try {

    //         /* -------------------------------------------------
    //      | 1. BASIC INPUTS
    //      * -------------------------------------------------*/
    //         $sale1docid = $request->sale1docid;
    //         $rowcount   = $request->rowcount;
    //         $netamount  = $request->netamount;
    //         $roomno     = $request->roomno ?? $request->fixroomno;

    //         /* -------------------------------------------------
    //      | 2. CHARGE TYPES
    //      * -------------------------------------------------*/
    //         $chargetype = [];
    //         for ($i = 1; $i <= $rowcount; $i++) {
    //             if ($request->filled('chargetype' . $i)) {
    //                 $chargetype[] = $request->input('chargetype' . $i);
    //             }
    //         }

    //         $roomSettleKeywords = ['ROOM SETTLEMENT', 'Room'];

    //         /* -------------------------------------------------
    //      | 3. SALE MASTER
    //      * -------------------------------------------------*/
    //         $sale1 = Sale1::where('propertyid', $this->propertyid)
    //             ->where('docid', $sale1docid)
    //             ->firstOrFail();

    //         $mergedDocIds = !empty($sale1->mergedwith)
    //             ? explode(',', $sale1->mergedwith)
    //             : [$sale1->docid];

    //         /* -------------------------------------------------
    //      | 4. VOUCHER PREFIX
    //      * -------------------------------------------------*/
    //         $vpf = VoucherPrefix::where('propertyid', $this->propertyid)
    //             ->where('v_type', $sale1->vtype)
    //             ->whereDate('date_from', '<=', $this->ncurdate)
    //             ->whereDate('date_to', '>=', $this->ncurdate)
    //             ->firstOrFail();

    //         $vprefix = $vpf->prefix;

    //         /* -------------------------------------------------
    //      | 5. DELETE OLD PAYCHARGE (ALL MERGED DOCS)
    //      * -------------------------------------------------*/
    //         Paycharge::where('propertyid', $this->propertyid)
    //             ->whereIn('docid', $mergedDocIds)
    //             ->delete();

    //         /* -------------------------------------------------
    //      | 6. ROOM OCC + MSNO
    //      * -------------------------------------------------*/
    //         $roomdata = RoomOcc::where('propertyid', $this->propertyid)
    //             ->where('roomno', $roomno)
    //             ->whereNull('type')
    //             ->first();

    //         $msno1 = 0;
    //         if ($roomdata) {
    //             $leader = RoomOcc::where('docid', $roomdata->docid)
    //                 ->where('leaderyn', 'Y')
    //                 ->first();
    //             $msno1 = $leader->sno1 ?? 0;
    //         }

    //         /* -------------------------------------------------
    //      | 7. ROOM SETTLEMENT ENTRY (ONLY ON MAIN DOCID)
    //      * -------------------------------------------------*/
    //         if (array_intersect($roomSettleKeywords, $chargetype)) {

    //             $paycodeRoom = 'TOUT' . $this->propertyid;
    //             $revRoom = Revmast::where('propertyid', $this->propertyid)
    //                 ->where('rev_code', $paycodeRoom)
    //                 ->first();

    //             Paycharge::create([
    //                 'propertyid' => $this->propertyid,
    //                 'docid' => $sale1docid,
    //                 'vno' => $sale1->vno,
    //                 'vtype' => $sale1->vtype,
    //                 'sno' => 2,
    //                 'sno1' => $roomdata->sno1 ?? '',
    //                 'msno1' => $msno1,
    //                 'vdate' => $this->ncurdate,
    //                 'vtime' => date('H:i:s'),
    //                 'vprefix' => $vprefix,
    //                 'paycode' => $paycodeRoom,
    //                 'comments' => '(' . $sale1->vtype . ')' . ' BILL NO.- ' . $sale1->vno,
    //                 'paytype' => $revRoom->pay_type ?? '',
    //                 'folionodocid' => $roomdata->docid ?? '',
    //                 'restcode' => $sale1->restcode,
    //                 'roomno' => $roomno,
    //                 'roomcat' => $roomdata->roomcat ?? '',
    //                 'amtdr' => $netamount,
    //                 'roomtype' => $roomdata->roomtype,
    //                 'foliono' => $roomdata->folioNo,
    //                 'guestprof' => $roomdata->guestprof,
    //                 'billamount' => $netamount,
    //                 'taxcondamt' => 0,
    //                 'created_at' => $this->currenttime,
    //                 'u_name' => Auth::user()->u_name,
    //                 'u_ae' => 'a',
    //             ]);
    //         }

    //         /* -------------------------------------------------
    //      | 8. BUILD PAYCHARGE ROWS (MERGED SAFE)
    //      * -------------------------------------------------*/
    //         $insertRows = [];
    //         $snoCache   = [];
    //         $snos = Paycharge::where('docid', $sale1docid)->where('propertyid', $this->propertyid)->max('sno') + 1 ?? 1;
    //         foreach ($mergedDocIds as $docid) {

    //             $saleRow = Sale1::where('propertyid', $this->propertyid)
    //                 ->where('docid', $docid)
    //                 ->first();

    //             if (!$saleRow) continue;

    //             $snoCache[$docid] = Paycharge::where('propertyid', $this->propertyid)
    //                 ->where('docid', $docid)
    //                 ->max('sno') ?? 0;
    //             for ($i = 1; $i <= $rowcount; $i++) {

    //                 if (!$request->filled('amtrow' . $i)) continue;

    //                 $snoCache[$docid]++;

    //                 $rev = Revmast::where('propertyid', $this->propertyid)
    //                     ->where('rev_code', $request->input('chargecode' . $i))
    //                     ->first();

    //                 $insertRows[] = [
    //                     'propertyid' => $this->propertyid,
    //                     'docid' => $sale1docid,
    //                     'vno' => $sale1->vno,
    //                     'vtype' => $sale1->vtype,
    //                     'sno' => $snos,
    //                     'sno1' => $sale1->sno1,
    //                     'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
    //                     'cardno' => $request->input('crnumber'),
    //                     'cardholder' => $request->input('holdername'),
    //                     'expdate' => $request->input('expdatecr'),
    //                     'bookno' => $request->input('batchno'),
    //                     'vdate' => $this->ncurdate,
    //                     'vtime' => date('H:i:s'),
    //                     'vprefix' => $vprefix,
    //                     'comp_code' => $request->input('compcode' . $i) ?? '',
    //                     'paycode' => $request->input('chargecode' . $i),
    //                     'paytype' => $paycodes->pay_type ?? '',
    //                     'comments' => $request->input('chargenarration' . $i),
    //                     'guestprof' => '',
    //                     'roomno' => $request->input('fixroomno') ?? $sale1->roomno,
    //                     'amtcr' => $request->input('amtrow' . $i),
    //                     'roomtype' => $sale1->roomtype,
    //                     'roomcat' => $sale1->roomcat,
    //                     'foliono' => 0,
    //                     'restcode' => $sale1->restcode,
    //                     'billamount' => $netamount,
    //                     'taxper' => 0,
    //                     'onamt' => 0.00,
    //                     'folionodocid' => null,
    //                     'taxcondamt' => 0,
    //                     'taxstru' => '',
    //                     'created_at' => $this->currenttime,
    //                     'settledate' => null,
    //                     'u_name' => Auth::user()->u_name,
    //                     'u_ae' => 'a',
    //                     'modeset' => null,
    //                 ];
    //             }
    //         }

    //         echo '<pre>';
    //         print_r($insertRows);
    //         echo '</pre>';
    //         exit;

    //         if (!empty($insertRows)) {
    //             //Paycharge::insert($insertRows);
    //             $snos++;
    //         }
    //         DB::commit();
    //         return back()->with('success', 'POS Settlement submitted successfully');
    //     } catch (\Throwable $e) {
    //         DB::rollBack();
    //         throw $e;
    //     }
    // }

    public function possalebillsettle(Request $request)
    {
        $sale1docid = $request->input('sale1docid');
        $rowcount = $request->input('rowcount');

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

        $vprefix = $chkvpf->prefix;

        $mergedwith = !empty($sale1->mergedwith) ? explode(',', $sale1->mergedwith) : [$sale1->docid];

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
            // $vprefix = $sale1row->vprefix ?? $vprefix;
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

        // Collect all merged bills with their amounts
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

        // return $mergedBills;

        // Process each payment mode
        for ($paymentIndex = 1; $paymentIndex <= $rowcount; $paymentIndex++) {
            $paymentAmount = (float) $request->input('amtrow' . $paymentIndex);
            if ($paymentAmount <= 0) continue;

            $remainingPayment = $paymentAmount;

            // Distribute payment across merged bills
            foreach ($mergedBills as &$bill) {
                if ($remainingPayment <= 0) break;
                if ($bill['remaining'] <= 0) continue;

                $sale1row = $bill['sale'];
                $paycharge1 = $bill['paycharge1'];

                // Initialize SNO cache for this docid
                if (!isset($snoCache[$bill['docid']])) {
                    $snoCache[$bill['docid']] = Paycharge::where('propertyid', $this->propertyid)
                        ->where('docid', $bill['docid'])->max('sno') ?? 0;
                }
                $snoCache[$bill['docid']]++;

                // Calculate amount to apply to this bill
                $amountToApply = min($remainingPayment, $bill['remaining']);

                // Reduce remaining amounts
                $bill['remaining'] -= $amountToApply;
                $remainingPayment -= $amountToApply;

                // Get payment details
                $paycode = $request->input('chargecode' . $paymentIndex);
                $paycodes = Revmast::where('propertyid', $sale1row->propertyid)
                    ->where('rev_code', $paycode)
                    ->first();
                $vdate = $paycharge1->vdate ?? $this->ncurdate;

                // Build insert data
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

        return back()->with('success', 'POS Settlement submitted successfully');
    }


    public function restxhr(Request $request)
    {
        $restcode = $request->input('restcode');
        $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $restcode)->orderBy('name')->get();
        $itemcats = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $restcode)->orderBy('Name')->get();

        $data = [
            'itemgrps' => $itemgrps,
            'itemcats' => $itemcats,
        ];
        return json_encode($data);
    }

    public function allbillxhrsale(Request $request)
    {
        $dcode = $request->input('dcode');
        $vprefix = $request->vprefix;
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('vprefix', $vprefix)
            ->where('restcode', $dcode)->get();
        $data = [
            'sale1' => $sale1,
        ];
        return json_encode($data);
    }

    public function allbillxhrkot(Request $request)
    {
        $dcode = $request->input('dcode');
        $kots = Kot::where('propertyid', $this->propertyid)->where('restcode', $dcode)->groupBy('roomno')->get();
        $data = [
            'kots' => $kots,
        ];
        return json_encode($data);
    }

    public function allsalebillxhr(Request $request)
    {
        $dcode = $request->input('dcode');
        $kots = Kot::where('propertyid', $this->propertyid)->where('restcode', $dcode)->groupBy('roomno')->get();
        $data = [
            'kots' => $kots,
        ];
        return json_encode($data);
    }

    public function fetchpendingmergekot(Request $request)
    {
        $vno = $request->input('billno');
        $dcode = $request->input('dcode');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();

            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }


        $items = Kot::select(
            'kot.item',
            'kot.docid',
            'kot.roomno',
            'kot.restcode',
            'kot.vno',
            'kot.vtime',
            'server_mast.name as waitername',
            DB::raw('SUM(kot.qty) as totalqty'),
            'kot.rate as totalrate',
            'unitmast.name AS unitname',
            'itemmast.Name AS itemname',
            DB::raw('SUM(kot.qty * kot.rate) as kotamount')
        )
            ->leftJoin('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->leftJoin('unitmast', 'unitmast.ucode', '=', 'itemmast.Unit')
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
            ->where('kot.roomno', $vno)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.pending', 'Y')
            ->where('kot.voidyn', 'N')
            // ->where('kot.restcode', $dcode)
            ->where('kot.propertyid', $this->propertyid)
            ->where('kot.nckot', 'N')
            ->groupBy(
                'kot.item'
            )
            ->get();

        $sessionmast = SessionMast::where('propertyid', $this->propertyid)->get();
        $waitername = '';
        $kottime = '';
        if (count($items) > 0) {
            $waitername = $items[0]['waitername'];
            $kottime = $items[0]['vtime'];
        }
        $data = [
            'items' => $items,
            'sessionmast' => $sessionmast,
            'waitername' => $waitername,
            'kottime' => $kottime
        ];

        return json_encode($data);
    }

    public function menuitemcopy(Request $request)
    {
        $permission = revokeopen(121322);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = Depart::where('propertyid', $this->propertyid)
            ->whereiN('rest_type', ['Outlet', 'ROOM SERVICE'])
            ->get();


        return view('property.menuitemcopy', [
            'depart' => $data
        ]);
    }

    public function menuitemxhr(Request $request)
    {
        $dcode = $request->input('dcode');
        $items = ItemMast::select('itemmast.Name', 'itemmast.code as itemcode', 'itemmast.restcode', 'itemmast.Code', 'itemcatmast.Name as catname', 'itemgrp.name as grpname')
            ->leftJoin('itemcatmast', 'itemcatmast.Code', '=', 'itemmast.ItemCatCode')
            ->leftJoin('itemgrp', 'itemgrp.code', '=', 'itemmast.ItemGroup')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.RestCode', $dcode)
            ->where('itemcatmast.RestCode', $dcode)
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        $data = [
            'items' => $items,
        ];
        return json_encode($data);
    }

    public function submitmenuitem(Request $request)
    {
        $permission = revokeopen(121322);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'fromdcode' => 'required',
            'todcode' => 'required'
        ]);


        try {
            DB::beginTransaction();
            $fromdcode = $request->input('fromdcode');
            $todcode = $request->input('todcode');

            $existingcode = ItemMast::where('Property_ID', $this->propertyid)
                ->where('DispCode', $request->input('itemcode'))
                ->first();

            $totalitems = $request->input('totalitems');
            $departsr = Depart::where('dcode', $todcode)->where('propertyid', $this->propertyid)->first();
            $oldsundrytypedata = Sundrytype::where('propertyid', $this->propertyid)->where('vtype', $fromdcode)->get();
            foreach ($oldsundrytypedata as $item) {
                $insundata = [
                    'propertyid' => $this->propertyid,
                    'vtype' => $todcode,
                    'sundry_code' => $item->sundry_code,
                    'sno' => $item->sno,
                    'appdate' => $request->input('applicablefrom'),
                    'disp_name' => $item->disp_name,
                    'calcformula' => $item->calcformula,
                    'peroramt' => $item->peroramt,
                    'svalue' => $item->svalue,
                    'revcode' => $item->revcode,
                    'nature' => $departsr->nature,
                    'calcsign' => $item->calcsign,
                    'bold' => $item->bold,
                    'automanual' => $item->automanual,
                    'u_name' => $this->username,
                    'created_at' => $this->currenttime,
                    'postyn' => $item->postyn
                ];
                Sundrytype::insert($insundata);
            }

            $uniqueCodes = [];
            $uniqueitemgrp = [];
            $groupCodeMapping = [];
            for ($i = 1; $i <= $totalitems; $i++) {
                $itemcode = $request->input('itemcode' . $i);
                if ($itemcode) {
                    $itemmast = ItemMast::where('Property_ID', $this->propertyid)->where('Code', $itemcode)->where('RestCode', $fromdcode)
                        ->first();
                    // return $itemmast;
                    $itemrate = ItemRate::where('Property_ID', $this->propertyid)->where('ItemCode', $itemcode)->where('RestCode', $fromdcode)
                        ->first();
                    $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $fromdcode)
                        ->where('code', $itemmast->ItemGroup)->first();
                    if (!in_array($itemgrps->code, $uniqueitemgrp)) {
                        $groupcode = ItemGrp::where('property_id', $this->propertyid)->max('code');
                        $groupcode = substr($groupcode, 0, -$this->ptlngth);
                        if (empty($groupcode)) {
                            $groupcode = 1 . $this->propertyid;
                        } else {
                            $groupcode = $groupcode + 1 . $this->propertyid;
                        }
                        $insertdataitmgroup = [
                            'code' => $groupcode,
                            'name' => $itemgrps->name,
                            'property_id' => $this->propertyid,
                            'restcode' => $todcode,
                            'type' => $itemgrps->type,
                            'created_at' => $this->currenttime,
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'a',
                            'activeyn' => $itemgrps->activeyn,
                        ];
                        ItemGrp::insert($insertdataitmgroup);

                        $uniqueitemgrp[] = $itemgrps->code;
                        $groupCodeMapping[$itemgrps->code] = $groupcode;
                    }

                    // $maxcode = ItemMast::where('property_id', $this->propertyid)->max('Code');
                    // $code = ($maxcode === null) ? $this->propertyid . '1' : ($code = $this->propertyid . substr($maxcode, $this->ptlngth) + 1);
                    $newItemGroup = $groupCodeMapping[$itemmast->ItemGroup] ?? $itemmast->ItemGroup;
                    $insertdata = [
                        'Code' => $itemmast->Code,
                        'Name' => $itemmast->Name,
                        // 'itemcode' => $itemmast->itemcode,
                        'property_id' => $this->propertyid,
                        'RestCode' => $todcode,
                        'ItemGroup' => $newItemGroup,
                        'dishtype' => $itemmast->dishtype,
                        'favourite' => $itemmast->favourite,
                        'PurchRate' => $itemmast->PurchRate,
                        'MinStock' => $itemmast->MinStock,
                        'MaxStock' => $itemmast->MaxStock,
                        'ReStock' => $itemmast->ReStock,
                        'LPurRate' => $itemmast->LPurRate,
                        'DispCode' => $itemmast->DispCode,
                        'ConvRatio' => $itemmast->ConvRatio,
                        'IssueUnit' => $itemmast->IssueUnit,
                        'Specification' => $itemmast->Specification,
                        'LabelName' => $itemmast->LabelName,
                        'LabelQty' => $itemmast->LabelQty,
                        'LabelRemark1' => $itemmast->LabelRemark1,
                        'LabelRemark2' => $itemmast->LabelRemark2,
                        'LabelRemark3' => $itemmast->LabelRemark3,
                        'LabelRemark4' => $itemmast->LabelRemark4,
                        'ItemType' => $itemmast->ItemType,
                        'NType' => $itemmast->NType,
                        'iempic' => $itemmast->iempic,
                        'Unit' => $itemmast->Unit,
                        'RateEdit' => $itemmast->RateEdit,
                        'ItemCatCode' => $itemmast->ItemCatCode,
                        'BarCode' => $itemmast->BarCode,
                        'Type' => $itemmast->Type,
                        'HSNCode' => $itemmast->HSNCode,
                        'DiscApp' => $itemmast->DiscApp,
                        'SChrgApp' => $itemmast->SChrgApp,
                        'RateIncTax' => $itemmast->RateIncTax,
                        'Kitchen' => $itemmast->Kitchen,
                        'created_at' => $this->currenttime,
                        'U_Name' => Auth::user()->u_name,
                        'U_AE' => 'a',
                        'ActiveYN' => $itemmast->ActiveYN,
                    ];
                    ItemMast::insert($insertdata);

                    // $itemrate = ItemRate::where('Property_ID', $this->propertyid)->where('RestCode', $fromdcode)->first();
                    $itemratedata = [
                        'Property_ID' => $this->propertyid,
                        'ItemCode' => $itemmast->Code,
                        'RestCode' => $todcode,
                        'AppDate' => $request->input('applicablefrom'),
                        'Rate' => $itemrate->Rate,
                        'Party' => $itemrate->Party,
                        'created_at' => $this->currenttime,
                        'U_Name' => Auth::user()->u_name,
                        'U_AE' => 'a',
                    ];

                    ItemRate::insert($itemratedata);

                    $itemcatmast = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $fromdcode)
                        ->where('Code', $itemmast->ItemCatCode)
                        ->first();
                    if ($itemmast->itemCatCode != $itemcatmast->Code) {
                        if (!in_array($itemcatmast->Code, $uniqueCodes)) {
                            $itemcatmastdata = [
                                'Code' => $itemcatmast->Code,
                                'Name' => $itemcatmast->Name,
                                'RestCode' => $todcode,
                                'TaxStru' => $itemcatmast->TaxStru,
                                'AcCode' => $itemcatmast->AcCode,
                                'OutletYN' => $itemcatmast->OutletYN,
                                'Flag' => $itemcatmast->Flag,
                                'RoundOff' => $itemcatmast->RoundOff,
                                'CatType' => $itemcatmast->CatType,
                                'DrCr' => $itemcatmast->DrCr,
                                'RevCode' => $itemcatmast->RevCode,
                                'created_at' => $this->currenttime,
                                'propertyid' => $this->propertyid,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                                'ActiveYN' => 'Y',
                            ];
                            $revmastoldcat = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $itemcatmast->Code)
                                ->where('Desk_code', $fromdcode)->first();
                            // Log::info('Old Revmast for category ' . $itemcatmast->Code . ': ' . $itemcatmast->Name . ' - Deskcode: ' . $fromdcode . ': ' . json_encode($revmastoldcat));
                            $revinsert = [
                                'rev_code' => $itemcatmast->Code,
                                'name' => $departsr->short_name . ' - ' . $itemcatmast->Name,
                                'short_name' => $departsr->short_name,
                                'ac_code' => $revmastoldcat->ac_code,
                                'tax_stru' => $revmastoldcat->tax_stru,
                                'type' => $revmastoldcat->type,
                                'Desk_code' => $todcode,
                                'flag_type' => $revmastoldcat->flag_type,
                                'created_at' => $this->currenttime,
                                'propertyid' => $this->propertyid,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                                'SysYN' => $revmastoldcat->SysYN
                            ];
                            Revmast::insert($revinsert);
                            ItemCatMast::insert($itemcatmastdata);
                            $uniqueCodes[] = $itemcatmast->Code;
                        }
                    }
                }
            }
            DB::commit();
            return back()->with('success', 'Menu Copied Successfully');
            // echo 'Menu Copied Successfully';
        } catch (Exception $e) {
            DB::rollBack();
            // return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' on line ' . $e->getLine());
            echo 'error', 'Unknown Error Occured: ' . $e->getMessage() . ' on line ' . $e->getLine();
        }
    }

    public function billlockup(Request $request)
    {
        // $permission = revokeopen(172016);
        // if (is_null($permission) || $permission->ins == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $tableno = $request->query('tableno');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();
        if ($departdata->nature == 'Room Service') {
            $label = 'Room No';
        } else {
            $label = 'Table No';
        }
        $sale1 = Sale1::where('propertyid', $this->propertyid)->where('restcode', $dcode)->get();
        return view('property.pos_billlookup', [
            'depdata' => $departdata,
            'sale1' => $sale1,
            'tableno' => $tableno,
            'label' => $label
        ]);
    }

    public function tablechangeentry(Request $request)
    {
        // $permission = revokeopen(172315);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $propertyid = $this->propertyid;

        $departdata = DB::table('depart')
            ->where('propertyid', $propertyid)
            ->where('dcode', $dcode)
            ->first();

        $kot = Kot::where('propertyid', $propertyid)
            ->where('restcode', $dcode)
            ->where('pending', 'Y')
            ->where('nckot', 'N')
            ->groupBy('roomno')
            ->get();

        $roomno = RoomMast::select('rcode as roomno')
            ->where('propertyid', $propertyid)
            ->where('type', 'TB')
            ->whereNotIn('rcode', function ($query) use ($dcode, $propertyid) {
                $query->select('roomno')
                    ->from((new Kot)->getTable())
                    ->where('propertyid', $propertyid)
                    ->where('pending', 'Y')
                    ->where('restcode', $dcode)
                    ->where('nckot', 'N');
            })
            ->where('room_mast.rest_code', $dcode)
            ->get();

        return view('property.pos_tablechange', [
            'depdata' => $departdata,
            'kot' => $kot,
            'roomno' => $roomno
        ]);
    }

    public function tablechangesubmit(Request $request)
    {
        $permission = revokeopen(172315);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'fromtable' => 'required',
            'totable' => 'required',
        ]);

        $fromtable = $request->input('fromtable');
        $totable = $request->input('totable');
        $dcode = $request->input('dcode');

        $updata = [
            'roomno' => $totable
        ];

        try {
            Kot::where('propertyid', $this->propertyid)->where('roomno', $fromtable)->where('restcode', $dcode)->where('pending', 'Y')->where('nckot', 'N')->update($updata);
            return back()->with('success', 'Table Changed Sucessfully');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown error occured: ' . $e->getMessage());
        }
    }

    public function pos_tablechangedynamic(Request $request)
    {
        $dcode = $request->query('dcode');
        $selectedroom = $request->query('roomno');
        $propertyid = $this->propertyid;

        $departdata = DB::table('depart')
            ->where('propertyid', $propertyid)
            ->where('dcode', $dcode)
            ->first();

        $kot = Kot::where('propertyid', $propertyid)
            ->where('restcode', $dcode)
            ->where('pending', 'Y')
            ->where('nckot', 'N')
            ->groupBy('roomno')
            ->get();

        $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
            ->where('departcode', $departdata->dcode)
            ->pluck('associatedrestcode')
            ->toArray();

        $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        $kotSubquery = Kot::select(
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
                $query->where('kot.delflag', 'N')
                    ->orWhere('kot.delflag', '');
            })
            ->where('kot.nckot', '<>', 'Y');

        $billSubquery = Sale1::select(
            'sale1.docid',
            DB::raw('MAX(sale1.vno) AS billno'),
            DB::raw('MAX(sale1.vtime) AS vtime'),
            DB::raw('MAX(sale1.roomno) AS roomno'),
            DB::raw('MAX(sale1.waiter) AS waiter'),
            DB::raw('MAX(server_mast.name) AS waitername'),
            DB::raw('CASE WHEN SUM(IFNULL(paycharge.amtcr, 0)) < SUM(sale1.netamt) THEN "Pending" ELSE "Settle" END AS Status')
        )
            ->leftJoin('paycharge', 'sale1.docid', '=', 'paycharge.docid')
            ->leftJoin('server_mast', 'sale1.waiter', '=', 'server_mast.scode')
            ->whereNull('paycharge.docid')
            ->where(function ($query) {
                $query->where('sale1.delflag', '')
                    ->orWhere('sale1.delflag', 'N');
            })
            ->where('sale1.roomcat', 'TABLE')
            ->where('sale1.roomtype', 'TB')
            ->whereIn('sale1.restcode', $restcodes)
            ->groupBy('sale1.docid');



        // Now, define the main query
        $allrooms = RoomMast::select(
            'room_mast.rcode AS roomno',
            'room_mast.name',
            DB::raw('COALESCE(BB.waitername, AA.waitername) AS waitername'),
            DB::raw('COALESCE(BB.vtime, AA.vtime) AS vtime'),
            'room_mast.rest_code',
            'AA.contradocid',
            DB::raw('CASE 
                    WHEN AA.waitername IS NOT NULL AND AA.contradocid IS NOT NULL THEN "occupied"
                    WHEN BB.waitername IS NOT NULL AND BB.billno IS NOT NULL THEN "billed"
                    ELSE "vacant"
                END AS status')
        )
            ->leftJoinSub($kotSubquery, 'AA', function ($join) {
                $join->on('AA.roomno', '=', 'room_mast.rcode');
            })
            ->leftJoinSub($billSubquery, 'BB', function ($join) {
                $join->on('BB.roomno', '=', 'room_mast.rcode');
            })
            ->where('room_mast.rest_code', $dcode)
            ->groupBy('room_mast.rcode')
            ->orderBy('room_mast.rcode')
            ->get();

        return view('property.pos_tablechangedynamic', [
            'depdata' => $departdata,
            'kot' => $kot,
            'selectedroom' => $selectedroom,
            'allrooms' => $allrooms
        ]);
    }

    public function changetblxhr(Request $request)
    {
        $dcode = $request->input('dcode');
        $fromroom = $request->input('fromroom');
        $toroomno = $request->input('toroomno');

        $updata = [
            'roomno' => $toroomno
        ];

        Kot::where('propertyid', $this->propertyid)->where('roomno', $fromroom)->where('restcode', $dcode)->where('pending', 'Y')->where('nckot', 'N')->update($updata);
        return json_encode('1');
    }


    public function pendingbillskot(Request $request)
    {
        $bills = $request->input('bills');

        $data = Kot::select('kot.vno', 'kot.roomno', 'kot.vdate', 'kot.restcode', 'server_mast.name as waitername', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'kot.restcode')
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
            ->where('kot.propertyid', $this->propertyid)
            ->where('kot.vdate', $this->ncurdate)
            ->where('kot.pending', 'Y')
            ->where('kot.voidyn', 'N')
            ->groupBy('kot.vno')->orderBy('kot.vno', 'ASC')->get();

        return response()->json($data);
    }

    public function salewarnxhr(Request $request)
    {
        $pendingBills = [];
        $checksalepending = Sale1::select(
            'sale1.docid',
            'depart.name as departname',
            'sale1.vno',
            DB::raw("CASE WHEN paycharge.docid IS NULL THEN 'Bill Left' ELSE 'Billed' END AS status")
        )
            ->leftJoin('paycharge', 'paycharge.docid', '=', 'sale1.docid')
            ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
            ->where('sale1.propertyid', $this->propertyid)
            ->whereNull('paycharge.docid')
            ->where('sale1.vdate', $this->ncurdate)
            ->where('sale1.delflag', 'N')
            ->groupBy('sale1.vno')
            ->get();

        $count = count($checksalepending);

        if ($checksalepending) {
            foreach ($checksalepending as $item) {
                if ($item->status != 'Billed') {
                    if (!isset($pendingBills[$item->departname])) {
                        $pendingBills[$item->departname] = [];
                    }
                    $pendingBills[$item->departname][] = $item->vno;
                }
            }

            $summaryString = "";
            foreach ($pendingBills as $departname => $bills) {
                // $summaryString .= $departname . ": Bill No. " . implode(", ", $bills) . "; ";
                $summaryString .= $departname . ", ";
            }

            $summaryString = rtrim($summaryString, "; ");

            $msg = "You have some unsettled Bills in: " . $summaryString;

            $salerows = Sale1::select('sale1.vno', 'sale1.restcode', 'sale1.roomno', 'depart.name as depname', 'server_mast.name as waitername')
                ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
                ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
                ->leftJoin('paycharge', 'paycharge.docid', '=', 'sale1.docid')
                ->where('sale1.propertyid', $this->propertyid)
                ->whereNull('paycharge.docid')
                ->where('sale1.vdate', $this->ncurdate)
                ->where('sale1.delflag', 'N')
                ->groupBy('sale1.vno')
                ->get();
        }
        $data = [
            'count' => $count,
            'salerows' => $salerows,
            'msg' => $msg
        ];
        return json_encode($data);
    }

    public function saleregister(Request $request)
    {
        $permission = revokeopen(171711);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $dcode = $request->query('dcode');
        $ncurdate = $this->ncurdate;
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $company = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name')->groupBy('sub_code')->get();
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();
        $items = Itemmast::where('Property_ID', $this->propertyid)->groupBy('Code')->orderBy('Name', 'ASC')->get();
        $taxes = [
            1 => 'CGSS' . $this->propertyid . '-CGST (SALES)',
            2 => 'SGSS' . $this->propertyid . '-SGST (SALES)',
            3 => 'IGST' . $this->propertyid . '-IGST (SALES)',
            4 => 'NT' . $this->propertyid . '-NO TAX',
        ];

        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');

        return view('property.pos_saleregister', [
            'fromdate' => $ncurdate,
            'comp' => $comp,
            'company' => $company,
            'departs' => $departs,
            'items' => $items,
            'taxes' => $taxes,
            'todate',
            'statename' => $statename
        ]);
    }

    public function saleregfetch(Request $request)
    {
        $alloutlets = $request->input('alloutlets');
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allitems = $request->input('allitems');
        $alltables = $request->input('alltables');
        $allcompany = $request->input('allcompany');
        $itemDetailsValue = $request->input('itemDetailsValue');

        $firstcond = DB::table('sale1 as S')
            ->join('stock as St', 'St.docid', '=', 'S.docid')
            ->join('depart as D', 'D.dcode', '=', 'S.restcode')
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('I.Code', '=', 'St.item')
                    ->on('I.RestCode', '=', 'St.itemrestcode');
            })
            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'S.party')
            ->leftJoin('paycharge as pg', 'pg.docid', '=', 'S.docid')
            ->leftJoin('roomocc as r', function ($join) {
                $join->on('r.docid', '=', 'pg.folionodocid')
                    ->on('r.sno1', '=', 'pg.sno1');
            })
            ->selectRaw("
                S.u_name AS UserName,
                S.kotno,
                S.delflag,
                S.vtype,
                S.vtime,
                S.docid,
                S.vdate,
                S.vdate AS Vdate1,
                S.vno,
                S.roomno AS TABLENo,
                S.roomtype,
                S.total AS GoodsAmt,
                S.discamt,
                S.nontaxable,
                S.taxable,
                S.servicecharge,
                S.cgst,
                S.sgst,
                S.igst,
                S.addamt,
                S.dedamt,
                COALESCE(S.cgst, 0.00) + COALESCE(S.sgst, 0.00) AS taxamount,
                S.dedamt,
                S.roundoff,
                S.remark,
                S.discremark,
                r.name AS guestname,
                St.qtyiss,
                St.rate AS rate,
                St.amount AS amount,
                I.Name AS ItemName,
                D.name AS OutletName,
                D.dcode AS DepartCode,
                SG.name AS subgroupname,
                S.netamt,
                GROUP_CONCAT(pg.amtcr ORDER BY pg.amtcr ASC) AS payments,
                GROUP_CONCAT(pg.paytype ORDER BY pg.amtcr ASC) AS paymentmode
            ")
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.RestCode', explode(',', $alloutlets))
            ->where(function ($query) use ($allcompany) {
                $query->whereIn('S.party', explode(',', $allcompany))
                    ->orWhere('S.party', '');
            });

        if ($itemDetailsValue == 'Y') {
            $firstcond->whereIn('I.Code', explode(',', $allitems));
        } else {
            $firstcond->whereIn('S.roomno', explode(',', $alltables));
        }

        $firstcond = $firstcond
            ->groupBy('St.docid')
            ->groupBy('St.item')
            ->groupBy('St.id')
            ->orderBy('S.vdate')
            ->orderBy('S.vno')
            ->get();

        $paygrouped = Paycharge::select(DB::raw('SUM(paycharge.amtcr) as payment'), 'paycharge.paytype')
            ->leftJoin('sale1 as S', function ($join) {
                $join->on('S.docid', '=', 'paycharge.docid')
                    ->on('S.propertyid', '=', 'paycharge.propertyid');
            })
            ->where('paycharge.propertyid', $this->propertyid)
            ->whereNotNull('paycharge.paytype')
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->groupBy('paycharge.paytype')
            ->get();

        $data = [
            'firstcond' => $firstcond,
            'paygrouped' => $paygrouped
        ];

        return json_encode($data);
    }

    public function gettablesbyoutlet(Request $request)
    {
        $alloutlets = $request->input('alloutlets');
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allcompany = $request->input('allcompany');

        $query = DB::table('sale1 as S')
            ->select('S.roomno AS TABLENo')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.RestCode', explode(',', $alloutlets));

        // Add company filter only if not empty
        if (!empty($allcompany)) {
            $query->where(function ($q) use ($allcompany) {
                $q->whereIn('S.party', explode(',', $allcompany))
                    ->orWhere('S.party', '')
                    ->orWhereNull('S.party');
            });
        }

        $tables = $query->groupBy('S.roomno')
            ->orderBy('S.roomno')
            ->get();

        return response()->json($tables);
    }

    public function settlementsummary(Request $request)
    {
        $permission = revokeopen(171712);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = $this->ncurdate;
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $company = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name')->groupBy('sub_code')->get();
        $departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();

        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');
        $users = User::where('propertyid', $this->propertyid)->get();
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();

        return view('property.pos_settlementsummary', [
            'fromdate' => $ncurdate,
            'comp' => $comp,
            'company' => $company,
            'departs' => $departs,
            'todate',
            'statename' => $statename,
            'users' => $users,
            'revheading' => $revheading
        ]);
    }

    public function settlereportfetch(Request $request)
    {
        $usernames = explode(',', $request->input('usernames'));
        $alloutlets = explode(',', $request->input('alloutlets'));
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $revheading = cache()->remember('revheading_' . $this->propertyid, 3600, function () {
            return Revmast::where('propertyid', $this->propertyid)
                ->where('field_type', 'P')
                ->get();
        });

        $result = Sale1::select([
            'depart.name as depname',
            'sale1.vdate',
            'paycharge.roomno as rooomnoset',
            DB::raw("COALESCE(
                MAX(CASE WHEN paycharge.roomtype = 'TB' THEN paycharge.roomno END),
                MAX(CASE WHEN paycharge.roomtype = 'RO' THEN paycharge.roomno END)
            ) AS rooomnoset"),
            DB::raw("MAX(CASE WHEN paycharge.roomtype = 'RO' THEN paycharge.roomno END) AS ro_roomno"),
            DB::raw("CONCAT(sale1.vtype, ' / ', sale1.vno) AS billno"),
            DB::raw('SUM(paycharge.amtcr) AS billamt'),
            DB::raw("GROUP_CONCAT(DISTINCT paycharge.comments SEPARATOR ', ') AS comments"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'Cash' THEN paycharge.amtcr ELSE 0.00 END) AS Cash"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'Room' THEN paycharge.amtcr ELSE 0.00 END) AS Room"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'Company' THEN paycharge.amtcr ELSE 0.00 END) AS Company"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'UPI' THEN paycharge.amtcr ELSE 0.00 END) AS UPI"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'Credit Card' THEN paycharge.amtcr ELSE 0.00 END) AS CreditCard"),
            DB::raw("SUM(CASE WHEN revmast.pay_type = 'Hold' THEN paycharge.amtcr ELSE 0.00 END) AS Hold"),
            'sale1.u_name as username',
            DB::raw('MAX(paycharge.comp_code) AS comp_code'),
            DB::raw('MAX(subgroup.name) AS paycompanyname')
        ])
            ->join('paycharge', function ($join) {
                $join->on('paycharge.docid', '=', 'sale1.docid')
                    ->where('paycharge.propertyid', $this->propertyid);
            })
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'paycharge.comp_code')
            ->join('depart', function ($join) {
                $join->on('depart.dcode', '=', 'sale1.restcode')
                    ->where('depart.propertyid', $this->propertyid);
            })
            ->leftjoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('revmast.propertyid', $this->propertyid)
                    ->where('revmast.field_type', 'P');
            })
            ->where('sale1.propertyid', $this->propertyid)
            ->whereIn('sale1.restcode', $alloutlets)
            ->whereIn('sale1.u_name', $usernames)
            ->whereBetween('paycharge.vdate', [$fromdate, $todate])
            ->groupBy('depart.name', 'sale1.docid', 'sale1.vtype')
            ->orderBy('sale1.vdate')
            ->get();

        return response()->json([
            'revheading' => $revheading,
            'report' => $result
        ]);
    }

    public function mobilefill(Request $request)
    {
        return view('mobilefill');
    }

    public function mobilesubmit(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'phone' => 'required|digits:10'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $exists = DB::table('mobiles')->where('phone', $request->phone)->exists();

        if ($exists) {
            return response()->json(['message' => 'Duplicate phone number'], 422);
        }

        $data = [
            'name' => $request->name,
            'phone' => $request->phone,
            'created_at' => now(),
            'updated_at' => now()
        ];

        DB::table('mobiles')->insert($data);

        return response()->json(['message' => 'Form submitted successfully']);
    }

    public function maxmobiledata(Request $request)
    {
        $max = DB::table('mobiles')->get();
        $count = count($max);
        return json_encode($count);
    }
    public function opendepartmaster(Request $request)
    {
        $permission = revokeopen(122019);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $depart = Depart::where('propertyid', $this->propertyid)
            ->where(function ($query) {
                $query->whereNotIn('nature', ['Room Service', 'Outlet'])
                    ->orWhereNull('nature');
            })
            ->get();

        return view('property.departmaster', [
            'depart' => $depart
        ]);
    }

    public function fetchalldepart(Request $request)
    {
        $data = Depart::where('propertyid', $this->propertyid)->get();
        return json_encode($data);
    }

    public function submitdepartmast(Request $request)
    {
        $permission = revokeopen(122019);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate([
            'departname' => 'required',
            'short_name' => 'required',
            'nature' => 'required',
            'printerpath' => 'required'
        ]);

        $existingname = Depart::where('name', $request->input('departname'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingname) {
            return back()->with('error', 'Depart Name already exists!');
        }

        $existingcode = Depart::where('short_name', $request->input('short_name'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingcode) {
            return back()->with('error', 'Short Name already exists!');
        }

        $existingnamegodown = GodownMast::where('name', $request->input('departname'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingnamegodown) {
            return back()->with('error', 'Depart Name already exists in Godown Master!');
        }


        $insertData = [
            'height' => '',
            'uborderspace' => '',
            'fontsize' => '',
            'col' => '',
            'created_at' => $this->currenttime,
            'dcode' => $request->input('short_name') . $this->propertyid,
            'ckot_print_path' => $request->input('printerpath'),
            'sysYN' => 'N',
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'a',
            'rest_type' => $request->input('nature'),
            'pos' => 'N',
            'outlet_yn' => 'N',
            'name' => $request->input('departname'),
            'nature' => $request->input('nature'),
            'short_name' => $request->input('short_name'),
            'mobile_no' => '',
            'kot_yn' => '',
            'header1' => '',
            'header2' => '',
            'header3' => '',
            'header4' => '',
            'slogan1' => '',
            'slogan2' => '',
            'company_title' => '',
            'outlet_title' => '',
            'token_print' => '',
            'print_type' => '',
            'order_booking' => '',
            'member_info' => '',
            'party_name' => '',
            'split_bill' => '',
            'cust_info' => '',
            'cur_token_no' => '',
            'no_of_kot' => '',
            'no_of_bill' => '',
            'token_print_after' => '',
            'token_print_before' => '',
            'print_on_save' => '',
            'print_token_no' => '',
            'auto_settlement' => '',
            'token_header' => '',
            'barcode_app' => '',
            'auto_reset_token' => '',
            'cur_token_no_kot' => '',
            'dis_print' => '',
            'grp_disc_app' => '',
            'label_printing' => '',
            'free_item_app' => '',
            'cover_mandatory' => '',
            'mobile_no_mandatory' => '',
        ];

        $godownmast = [
            'propertyid' => $this->propertyid,
            'short_name' => $request->input('short_name'),
            'scode'      => $request->input('short_name') . $this->propertyid,
            'name'       => $request->input('departname'),
            'u_name'     => $this->username,
            'created_at'    => $this->currenttime,
            'sysYN'      => 'Y',
            'u_ae'       => 'a',
        ];

        GodownMast::insert($godownmast);

        Depart::insert($insertData);

        return back()->with('success', 'Depart Added Successfully');
    }

    public function deletedepart(Request $request)
    {
        $permission = revokeopen(122019);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $deleting = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', base64_decode($request->input('dcode')))
            ->where('id', base64_decode($request->input('id')))
            ->delete();

        GodownMast::where('propertyid', $this->propertyid)
            ->where('scode', base64_decode($request->input('dcode')))
            ->delete();

        if ($deleting) {
            return back()->with('success', 'Depart Master Deleted successfully!');
        } else {
            return back()->with('error', 'Unable to Delete Depart Master!');
        }
    }

    public function openupdatedepart(Request $request)
    {
        $permission = revokeopen(122019);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $record = Depart::where('propertyid', $this->propertyid)
            ->where('dcode', base64_decode($request->input('dcode')))
            ->where('id', base64_decode($request->input('id')))
            ->first();

        return view('property.updatedepartmaster', [
            'data' => $record
        ]);
    }

    public function updatedepartmast(Request $request)
    {
        $permission = revokeopen(122019);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate([
            'departname' => 'required',
            'short_name' => 'required',
            'nature' => 'required'
        ]);
        $dcode = $request->input('dcode');
        $id = $request->input('id');

        $updata = [
            'height' => '',
            'uborderspace' => '',
            'fontsize' => '',
            'col' => '',
            'updated_at' => $this->currenttime,
            'dcode' => $request->input('short_name') . $this->propertyid,
            'ckot_print_path' => $request->input('printerpath'),
            'sysYN' => 'N',
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'e',
            'rest_type' => $request->input('nature'),
            'pos' => 'N',
            'outlet_yn' => 'N',
            'name' => $request->input('departname'),
            'nature' => $request->input('nature'),
            'short_name' => $request->input('short_name'),
            'mobile_no' => '',
            'kot_yn' => '',
            'header1' => '',
            'header2' => '',
            'header3' => '',
            'header4' => '',
            'slogan1' => '',
            'slogan2' => '',
            'company_title' => '',
            'outlet_title' => '',
            'token_print' => '',
            'print_type' => '',
            'order_booking' => '',
            'member_info' => '',
            'party_name' => '',
            'split_bill' => '',
            'cust_info' => '',
            'cur_token_no' => '',
            'no_of_kot' => '',
            'no_of_bill' => '',
            'token_print_after' => '',
            'token_print_before' => '',
            'print_on_save' => '',
            'print_token_no' => '',
            'auto_settlement' => '',
            'token_header' => '',
            'barcode_app' => '',
            'auto_reset_token' => '',
            'cur_token_no_kot' => '',
            'dis_print' => '',
            'grp_disc_app' => '',
            'label_printing' => '',
            'free_item_app' => '',
            'cover_mandatory' => '',
            'mobile_no_mandatory' => '',
        ];

        $updataGodown = [
            'short_name' => $request->input('short_name'),
            'name'       => $request->input('departname'),
            'u_name'     => $this->username,
            'updated_at'    => $this->currenttime,
        ];

        // return json_encode($updataGodown) . '-' . $dcode;

        GodownMast::where('propertyid', $this->propertyid)
            ->where('scode', $dcode)
            ->update($updataGodown);

        Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->update($updata);
        return redirect('departmaster')->with('success', 'Department Updated Successfully');
    }

    public function expenseentry(Request $request)
    {
        $permission = revokeopen(141117);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $subgroup = SubGroup::where('propertyid', $this->propertyid)->get();
        $contraacount = SubGroup::where('propertyid', $this->propertyid)->whereIn('nature', ['Cash', 'Bank'])->get();
        $types = VoucherPrefix::where('propertyid', $this->propertyid)->whereIn('v_type', ['HTSAL', 'HTEXP'])
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->orderBy('v_type', 'ASC')->get();

        $data = ExpenseEntry::select('expsheet.*', 'agsub.name as agsubname', 'crsub.name as crsubname')
            ->leftJoin('subgroup as agsub', 'agsub.sub_code', '=', 'expsheet.drac')
            ->leftJoin('subgroup as crsub', 'crsub.sub_code', '=', 'expsheet.crac')
            ->where('expsheet.propertyid', $this->propertyid)
            ->orderBy('expsheet.vno', 'DESC')
            ->get();

        $user = Auth::user();

        return view('property.expenseentry', [
            'data' => $data,
            'subgroup' => $subgroup,
            'contraacount' => $contraacount,
            'types' => $types,
            'ncurdate' => $this->ncurdate,
            'user' => $user
        ]);
    }

    public function expensesubmit(Request $request)
    {
        $permission = revokeopen(141117);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // Validate the incoming data
        $validatedData = $request->validate([
            'vtype' => 'required|string',
            'vno' => 'required|string',
            'ncurdate' => 'required|date',
            'amount' => 'required|numeric',
            'againstac' => 'required|string',
            'contraacount' => 'required|string',
            'remarks' => 'required|string',
        ]);

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $validatedData['vtype'])
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;
        $vprefix = $chkvpf->prefix;

        $docid = $this->propertyid . $validatedData['vtype'] . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

        if ($validatedData['vtype'] == 'HTSAL') {
            $cramount = $validatedData['amount'];
            $dramount = 0.00;
            $debitaccount = $validatedData['contraacount'];
            $creditaccount = $validatedData['againstac'];
        } else {
            $cramount = 0.00;
            $dramount = $validatedData['amount'];
            $debitaccount = $validatedData['againstac'];
            $creditaccount = $validatedData['contraacount'];
        }

        $expdata = [
            'propertyid' => $this->propertyid,
            'docid' => $docid,
            'vtype' => $validatedData['vtype'],
            'vprefix' => $vprefix,
            'vno' => $start_srl_no,
            'vdate' => $validatedData['ncurdate'],
            'vtime' => date('H:i:s'),
            'dramt' => $dramount,
            'cramt' => $cramount,
            'delflag' => 'N',
            'drac' => $debitaccount,
            'crac' => $creditaccount,
            'remark' => $validatedData['remarks'],
            'created_at' => $this->currenttime,
            'u_ae' => 'a',
            'u_name' => Auth::user()->name
        ];

        ExpenseEntry::insert($expdata);

        VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $validatedData['vtype'])
            ->where('prefix', $vprefix)
            ->increment('start_srl_no');

        return redirect()->back()->with('success', 'Expense submitted successfully!');
    }


    public function voucherdetail(Request $request)
    {
        $vtype = $request->input('vtype');

        $vno = VoucherPrefix::where('propertyid', $this->propertyid)->where('v_type', $vtype)->max('start_srl_no');

        return json_encode($vno + 1);
    }

    public function editexpensedata(Request $request)
    {
        $docid = $request->input('docid');
        $expdata = ExpenseEntry::where('propertyid', $this->propertyid)->where('docid', $docid)->first();
        if ($expdata) {
            return response()->json(['data' => $expdata]);
        } else {
            return response()->json(['data' => 'Data Not Found'], 400);
        }
    }

    public function expenseupdate(Request $request)
    {
        $permission = revokeopen(141117);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'upvtype' => 'required|string',
            'editdocid' => 'required|string',
            'upamount' => 'required|numeric',
            'upagainstac' => 'required|string',
            'upcontraacount' => 'required|string',
            'upremarks' => 'required|string',
        ]);

        if ($validatedData['upvtype'] == 'HTSAL') {
            $cramount = $validatedData['upamount'];
            $dramount = 0.00;
            $debitaccount = $validatedData['upcontraacount'];
            $creditaccount = $validatedData['upagainstac'];
        } else {
            $cramount = 0.00;
            $dramount = $validatedData['upamount'];
            $debitaccount = $validatedData['upagainstac'];
            $creditaccount = $validatedData['upcontraacount'];
        }

        $expdata = [
            'dramt' => $dramount,
            'cramt' => $cramount,
            'delflag' => 'N',
            'drac' => $debitaccount,
            'crac' => $creditaccount,
            'remark' => $validatedData['upremarks'],
            'updated_at' => $this->currenttime,
            'u_ae' => 'e',
            'u_name' => Auth::user()->name
        ];

        ExpenseEntry::where('propertyid', $this->propertyid)->where('docid', $validatedData['editdocid'])->update($expdata);

        return redirect()->back()->with('success', 'Expense Updated successfully!');
    }

    public function deleteexpenseentry(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(141117);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $update = [
                'delflag' => 'Y',
            ];
            $deletingrec = ExpenseEntry::where('propertyid', $this->propertyid)
                ->where('docid', $ucode)
                ->where('id', $sn)
                ->update($update);
            if ($deletingrec) {
                return back()->with('success', 'Expense Entry Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Expense Entry!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function printExpense($docid)
    {
        $permission = revokeopen(141117);
        if (is_null($permission) || $permission->print == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $expense = ExpenseEntry::select('expsheet.*', 'subgroup.name as postedname')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'expsheet.drac')
            ->where('expsheet.propertyid', $this->propertyid)
            ->where('expsheet.docid', base64_decode($docid))
            ->first();

        $company = Companyreg::where('propertyid', $this->propertyid)
            ->where('role', 'Property')
            ->first();

        if (!$expense) {
            return response()->json(['error' => 'Expense not found'], 404);
        }

        $head = ($expense->vtype === 'HTSAL') ? 'MISC Rect.' : 'MISC Exp.';
        $amount = ($expense->vtype === 'HTSAL') ? $expense->cramt : $expense->dramt;
        $wordsrupee = $this->inWords($amount);

        $type = ($expense->vtype === 'HTSAL') ? 'RECEIPT/ VOUCHER.' : 'PAYMENT/ VOUCHER';

        $pdf = PDF::loadView('property.pdf_expense', [
            'expense' => $expense,
            'company' => $company,
            'head' => $head,
            'username' => Auth::user()->name,
            'wordsrupee' => $wordsrupee,
            'amount' => $amount,
            'type' => $type
        ]);

        return $pdf->stream('expense_report.pdf');
    }

    private function inWords($num)
    {
        $a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
        $b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

        if (strlen($num) > 9) return 'overflow';

        $num = str_pad($num, 9, '0', STR_PAD_LEFT);

        if (!preg_match('/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/', $num, $n)) return '';

        $str = '';

        $str .= ($n[1] != 0) ? (($a[$n[1]] ?? '') ?: ($b[$n[1][0]] ?? '') . ' ' . ($a[$n[1][1]] ?? '')) . 'crore ' : '';
        $str .= ($n[2] != 0) ? (($a[$n[2]] ?? '') ?: ($b[$n[2][0]] ?? '') . ' ' . ($a[$n[2][1]] ?? '')) . 'lakh ' : '';
        $str .= ($n[3] != 0) ? (($a[$n[3]] ?? '') ?: ($b[$n[3][0]] ?? '') . ' ' . ($a[$n[3][1]] ?? '')) . 'thousand ' : '';
        $str .= ($n[4] != 0) ? (($a[$n[4]] ?? '') ?: ($b[$n[4][0]] ?? '') . ' ' . ($a[$n[4][1]] ?? '')) . 'hundred ' : '';
        $str .= ($n[5] != 0) ? (($str != '') ? 'and ' : '') . (($a[$n[5]] ?? '') ?: ($b[$n[5][0]] ?? '') . ' ' . ($a[$n[5][1]] ?? '')) . 'only ' : '';

        return $str;
    }
}
