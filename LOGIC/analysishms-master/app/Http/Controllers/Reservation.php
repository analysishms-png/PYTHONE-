<?php

namespace App\Http\Controllers;

use App\Helpers\ResHelper;
use App\Helpers\WhatsappSend;
use App\Mail\ReservationConfirmation;
use App\Models\BookinPlanDetail;
use App\Models\ChannelEnviro;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Companyreg;
use App\Models\Guestfolio;
use App\Models\Suntran;
use App\Models\RoomMast;
use App\Models\Sale1;
use App\Models\Sale2;
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
use App\Models\EnviroFom;
use App\Models\EnviroWhatsapp;
use App\Models\GrpBookinDetail;
use App\Models\SubGroup;
use App\Models\Sale1log;
use App\Models\Sale2log;
use App\Models\Stocklog;
use App\Models\Suntranlog;
use App\Models\Kot;
use App\Models\Remark;
use App\Models\RoomCat;
use App\Models\RoomInclusive;
use App\Models\TaxStructure;
use App\Services\Fetch\PreformaFetch;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Filesystem\AwsS3V3Adapter;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use PhpParser\Node\Stmt\TryCatch;
use Symfony\Component\Finder\Iterator\VcsIgnoredFilterIterator;
use Barryvdh\DomPDF\Facade\Pdf;

use function App\Helpers\endsWith;
use function App\Helpers\removeSuffixIfExists;

class Reservation extends Controller
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


    public function revokeopen($code)
    {
        $value = Menuhelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();
        return $value;
    }

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

    public function openresletter(Request $request)
    {
        $bookno = $request->input('bookno');
        $sno = $request->input('sno');
        $vprefix = $request->input('year');

        $data = GrpBookinDetail::select(
            'grpbookingdetails.*',
            'paycharge.amtcr',
            'paycharge.vdate',
            'paycharge.foliono',
            'paycharge.vno',
            DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
            'guestprof.state_name',
            'guestprof.bill_to',
            'guestprof.mobile_no',
            'guestprof.email_id',
            's.name as companyname',
            's.gstin as companygstin',
            't.name as travelname',
            't.gstin as travelgstin',
            'booking.ResStatus',
            'booking.vdate as bookvdate',
            'plan_mast.name as planname',
            'booking.BookedBy',
            'booking.Remarks as remarks'
        )
            ->leftJoin('paycharge', function ($query) {
                $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.docid', '=', 'grpbookingdetails.BookingDocid');
            })
            ->leftJoin('booking', function ($query) use ($vprefix) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->on('booking.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('subgroup as s', function ($query) {
                $query->on('s.sub_code', '=', 'booking.Company')
                    ->on('s.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('subgroup as t', function ($query) {
                $query->on('t.sub_code', '=', 'booking.TravelAgency')
                    ->on('t.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('plan_mast.pcode', '=', 'grpbookingdetails.Plan_Code')
                    ->on('plan_mast.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookNo', $bookno)
            ->where('booking.Vprefix', $vprefix)
            // ->where('grpbookingdetails.Sno', $sno)
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->first();

        // return $data;

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        $chkplanb = BookinPlanDetail::where('propertyid', $this->propertyid)->where('foliono', $bookno)->first();
        $docid = $data->BookingDocid;
        if (!is_null($chkplanb)) {
            $rooms = BookinPlanDetail::select(
                'bookingplandetails.netplanamt as Tarrif',
                'room_cat.name as roomcatname',
                'grpbookingdetails.NoDays',
                DB::raw('SUM(grpbookingdetails.Adults) as total_adults'),
                DB::raw('SUM(grpbookingdetails.Childs) as total_childs'),
                'grpbookingdetails.IncTax',
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
            )
                ->leftJoin('grpbookingdetails', function ($join) {
                    $join->on('grpbookingdetails.BookingDocid', '=', 'bookingplandetails.docid')
                        ->on('grpbookingdetails.Sno', '=', 'bookingplandetails.sno1');
                })
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('bookingplandetails.propertyid', $this->propertyid)
                ->where('room_cat.propertyid', $this->propertyid)
                ->where('bookingplandetails.docid', $docid)
                ->groupBy(
                    'grpbookingdetails.RoomCat',
                    'room_cat.name',
                    'bookingplandetails.netplanamt'
                )
                ->get();
        } else {

            $rooms = GrpBookinDetail::select(
                'grpbookingdetails.Tarrif',
                'grpbookingdetails.NoDays',
                'room_cat.name as roomcatname',
                DB::raw('SUM(grpbookingdetails.Adults) as total_adults'),
                DB::raw('SUM(grpbookingdetails.Childs) as total_childs'),
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet'),
                'grpbookingdetails.IncTax',
            )
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('grpbookingdetails.BookingDocid', $docid)
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->groupBy(
                    'grpbookingdetails.RoomCat',
                    'room_cat.name',
                    'grpbookingdetails.RoomNo',
                    'grpbookingdetails.Tarrif'
                )
                ->get();
        }

        // return $rooms;

        $advance = Paycharge::where('propertyid', $this->propertyid)->where(['refdocid' => $docid, 'vtype' => 'ADRES', 'sno' => 1, 'sno1' => $data->Sno])->get();
        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $curdate = $data->bookvdate;
        $roominclusive = RoomInclusive::select(
            'room_inclusive.*',
            'revmast.name as revmastname',
            'grpbookingdetails.NoDays',
            DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
        )
            ->leftJoin('grpbookingdetails', function ($join) {
                $join->on('grpbookingdetails.BookingDocid', '=', 'room_inclusive.docid');
            })
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'room_inclusive.rev_code')
                    ->on('revmast.propertyid', '=', 'room_inclusive.propertyid');
            })
            ->where('room_inclusive.propertyid', $this->propertyid)
            ->where('room_inclusive.docid', $docid)
            ->groupBy('room_inclusive.rev_code')
            ->get();

        // return $rooms;


        $pdf = Pdf::loadView('property.prints.reservation.resletter', [
            'data' => $data,
            'company' => $companydata,
            'rooms' => $rooms,
            'advance' => $advance,
            'enviro' => $enviro,
            'curdate' => $curdate,
            'roominclusive' => $roominclusive,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('reservation-letter.pdf');
    }

    public function openrescard(Request $request)
    {
        $bookno = $request->input('bookno');
        $sno = $request->input('sno');
        $vprefix = $request->input('year');

        $data = GrpBookinDetail::select(
            'grpbookingdetails.*',
            'paycharge.amtcr',
            'paycharge.vdate',
            'paycharge.foliono',
            'paycharge.vno',
            DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
            'guestprof.state_name',
            'guestprof.bill_to',
            'guestprof.mobile_no',
            'guestprof.email_id',
            's.name as companyname',
            's.gstin as companygstin',
            't.name as travelname',
            't.gstin as travelgstin',
            'booking.ResStatus',
            'booking.vdate as bookvdate',
            'plan_mast.name as planname',
            'booking.BookedBy',
            'booking.Remarks as remarks'
        )
            ->leftJoin('paycharge', function ($query) {
                $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.docid', '=', 'grpbookingdetails.BookingDocid');
            })
            ->leftJoin('booking', function ($query) use ($vprefix) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->on('booking.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('subgroup as s', function ($query) {
                $query->on('s.sub_code', '=', 'booking.Company')
                    ->on('s.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('subgroup as t', function ($query) {
                $query->on('t.sub_code', '=', 'booking.TravelAgency')
                    ->on('t.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('plan_mast.pcode', '=', 'grpbookingdetails.Plan_Code')
                    ->on('plan_mast.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookNo', $bookno)
            ->where('booking.Vprefix', $vprefix)
            // ->where('grpbookingdetails.Sno', $sno)
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->first();

        // return $data;

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        $chkplanb = BookinPlanDetail::where('propertyid', $this->propertyid)->where('foliono', $bookno)->first();
        $docid = $data->BookingDocid;
        if (!is_null($chkplanb)) {
            $rooms = BookinPlanDetail::select(
                'bookingplandetails.netplanamt as Tarrif',
                'room_cat.name as roomcatname',
                DB::raw('SUM(grpbookingdetails.Adults) as total_adults'),
                DB::raw('SUM(grpbookingdetails.Childs) as total_childs'),
                'grpbookingdetails.IncTax',
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
            )
                ->leftJoin('grpbookingdetails', function ($join) {
                    $join->on('grpbookingdetails.BookingDocid', '=', 'bookingplandetails.docid')
                        ->on('grpbookingdetails.Sno', '=', 'bookingplandetails.sno1');
                })
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('bookingplandetails.propertyid', $this->propertyid)
                ->where('room_cat.propertyid', $this->propertyid)
                ->where('bookingplandetails.docid', $docid)
                ->groupBy(
                    'grpbookingdetails.RoomCat',
                    'room_cat.name',
                    'bookingplandetails.netplanamt'
                )
                ->get();
        } else {

            $rooms = GrpBookinDetail::select(
                'grpbookingdetails.Tarrif',
                'room_cat.name as roomcatname',
                DB::raw('SUM(grpbookingdetails.Adults) as total_adults'),
                DB::raw('SUM(grpbookingdetails.Childs) as total_childs'),
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet'),
                'grpbookingdetails.IncTax',
            )
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('grpbookingdetails.BookingDocid', $docid)
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->groupBy(
                    'grpbookingdetails.RoomCat',
                    'room_cat.name',
                    'grpbookingdetails.RoomNo',
                    'grpbookingdetails.Tarrif'
                )
                ->get();
        }

        $advance = Paycharge::where('propertyid', $this->propertyid)->where(['refdocid' => $docid, 'vtype' => 'ADRES', 'sno' => 1, 'sno1' => $data->Sno])->get();
        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $curdate = $data->bookvdate;
        $roominclusive = RoomInclusive::select(
            'room_inclusive.*',
            'revmast.name as revmastname',
            DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
        )
            ->leftJoin('grpbookingdetails', function ($join) {
                $join->on('grpbookingdetails.BookingDocid', '=', 'room_inclusive.docid');
            })
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'room_inclusive.rev_code')
                    ->on('revmast.propertyid', '=', 'room_inclusive.propertyid');
            })
            ->where('room_inclusive.propertyid', $this->propertyid)
            ->where('room_inclusive.docid', $docid)
            ->groupBy('room_inclusive.rev_code')
            ->get();

        $paymode = DB::table('revmast')
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'sundrymast.name as sundryname', 'revmast.*')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'revmast.tax_stru')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'P')
            ->orderBy('taxname', 'ASC')
            ->get();
        // return $rooms;


        return view('property.prints.reservation.rescard', [
            'data' => $data,
            'company' => $companydata,
            'rooms' => $rooms,
            'advance' => $advance,
            'enviro' => $enviro,
            'curdate' => $curdate,
            'roominclusive' => $roominclusive,
            'paymode' => $paymode,
        ]);
    }

    public function resmailposting(Request $request)
    {
        $bookno = $request->input('bookno');
        $sno = $request->input('sno');
        $data = GrpBookinDetail::select(
            'grpbookingdetails.*',
            'paycharge.amtcr',
            'paycharge.vdate',
            'paycharge.foliono',
            DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
            'guestprof.state_name',
            's.name as companyname',
            's.gstin as companygstin',
            't.name as travelname',
            't.gstin as travelgstin',
            'booking.ResStatus',
            'booking.Email',
            'plan_mast.name as planname'
        )
            ->leftJoin('paycharge', function ($query) {
                $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.docid', '=', 'grpbookingdetails.BookingDocid');
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->on('booking.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('subgroup as s', function ($query) {
                $query->on('s.sub_code', '=', 'booking.Company')
                    ->on('s.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('subgroup as t', function ($query) {
                $query->on('t.sub_code', '=', 'booking.TravelAgency')
                    ->on('t.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('plan_mast.pcode', '=', 'grpbookingdetails.Plan_Code')
                    ->on('plan_mast.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookNo', $bookno)
            ->where('grpbookingdetails.Sno', $sno)
            ->first();
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        $rooms = GrpBookinDetail::select('grpbookingdetails.*', 'room_cat.name as roomcatname')
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
            ->where('grpbookingdetails.BookNo', $bookno)
            ->get();
        $advance = Paycharge::where('propertyid', $this->propertyid)->where('sno', 1)->where('sno1', $data->Sno)->where('refdocid', $data->BookingDocid)->get();
        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $curdate = $this->ncurdate;

        try {
            Mail::to($data->Email)->send(new ReservationConfirmation($companydata, $data, $rooms, $advance, $curdate, $enviro));
            return response()->json(['message' => 'Mail Sent Successfully']);
        } catch (Exception $e) {
            return response()->json(['message' => 'Unknown Error: ' . $e->getMessage()], 500);
        }
    }

    public function opencancelletter(Request $request)
    {
        $bookno = $request->input('bookno');
        $sno = $request->input('sno');
        $vprefix = $request->input('year');

        $data = GrpBookinDetail::select(
            'grpbookingdetails.*',
            DB::raw("COALESCE(grpbookingdetails.Adults, 0) + COALESCE(grpbookingdetails.Childs, 0) as pax"),
            'paycharge.amtcr',
            'paycharge.vdate',
            'paycharge.foliono',
            'paycharge.vno',
            DB::raw("CONCAT(COALESCE(guestprof.add1, ''), ' ', COALESCE(guestprof.add2, ''), ' ', COALESCE(guestprof.city_name)) as guestadd"),
            'guestprof.state_name',
            's.name as companyname',
            's.gstin as companygstin',
            't.name as travelname',
            't.gstin as travelgstin',
            'booking.ResStatus',
            'booking.vdate as bookvdate',
            'plan_mast.name as planname'
        )
            ->leftJoin('paycharge', function ($query) {
                $query->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('paycharge.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('guestprof', function ($query) {
                $query->on('guestprof.docid', '=', 'grpbookingdetails.BookingDocid');
            })
            ->leftJoin('booking', function ($query) {
                $query->on('booking.DocId', '=', 'grpbookingdetails.BookingDocid')
                    ->on('booking.Property_ID', '=', 'grpbookingdetails.Property_ID');
            })
            ->leftJoin('subgroup as s', function ($query) {
                $query->on('s.sub_code', '=', 'booking.Company')
                    ->on('s.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('subgroup as t', function ($query) {
                $query->on('t.sub_code', '=', 'booking.TravelAgency')
                    ->on('t.propertyid', '=', 'booking.Property_ID');
            })
            ->leftJoin('plan_mast', function ($query) {
                $query->on('plan_mast.pcode', '=', 'grpbookingdetails.Plan_Code')
                    ->on('plan_mast.propertyid', '=', 'grpbookingdetails.Property_ID');
            })
            ->where('grpbookingdetails.BookNo', $bookno)
            ->where('booking.Vprefix', $vprefix)
            ->where('grpbookingdetails.Sno', $sno)
            ->first();
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        $chkplanb = BookinPlanDetail::where('propertyid', $this->propertyid)->where('foliono', $bookno)->first();
        $docid = $data->BookingDocid;
        if (!is_null($chkplanb)) {
            $rooms = BookinPlanDetail::select(
                'bookingplandetails.netplanamt as Tarrif',
                'room_cat.name as roomcatname',
                DB::raw("COALESCE(grpbookingdetails.Adults, 0) + COALESCE(grpbookingdetails.Childs, 0) as pax"),
                'grpbookingdetails.IncTax',
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
            )
                ->leftJoin('grpbookingdetails', function ($join) {
                    $join->on('grpbookingdetails.BookingDocid', '=', 'bookingplandetails.docid')
                        ->on('grpbookingdetails.Sno', '=', 'bookingplandetails.sno1');
                })
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('bookingplandetails.propertyid', $this->propertyid)
                ->where('room_cat.propertyid', $this->propertyid)
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->where('bookingplandetails.docid', $docid)
                ->groupBy('grpbookingdetails.RoomCat', 'room_cat.name', 'bookingplandetails.netplanamt')
                ->get();
        } else {
            $rooms = GrpBookinDetail::select(
                'grpbookingdetails.Tarrif',
                'room_cat.name as roomcatname',
                DB::raw("COALESCE(grpbookingdetails.Adults, 0) + COALESCE(grpbookingdetails.Childs, 0) as pax"),
                DB::raw('SUM(grpbookingdetails.RoomDet) as total_roomdet')
            )
                ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
                ->where('grpbookingdetails.BookingDocid', $docid)
                ->where('grpbookingdetails.Property_ID', $this->propertyid)
                ->groupBy('grpbookingdetails.RoomCat', 'room_cat.name')
                ->get();
        }

        $rs = GrpBookinDetail::select(
            'grpbookingdetails.*',
            'room_cat.name as roomcatname',
            DB::raw("COALESCE(grpbookingdetails.Adults, 0) + COALESCE(grpbookingdetails.Childs, 0) as pax")
        )
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'grpbookingdetails.RoomCat')
            ->where('grpbookingdetails.BookNo', $bookno)
            ->get();
        $advance = Paycharge::where('propertyid', $this->propertyid)->where('sno', 1)->where('sno1', $data->Sno)->where('refdocid', $data->BookingDocid)->get();
        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $curdate = $data->bookvdate;
        return view('property.cancletter', [
            'data' => $data,
            'company' => $companydata,
            'rooms' => $rooms,
            'advance' => $advance,
            'enviro' => $enviro,
            'curdate' => $curdate
        ]);
    }

    public function openreservationlist()
    {
        $permission = revokeopen(131112);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first();

        return view('property.reservationlist', [
            'channelenviro' => $channelenviro
        ]);
    }

    public function reservationlistData(Request $request)
    {
        $permission = revokeopen(131112);

        if (is_null($permission) || $permission->view == 0) {
            return response()->json([
                'draw' => (int) $request->input('draw', 0),
                'recordsTotal' => 0,
                'recordsFiltered' => 0,
                'data' => [],
                'message' => 'You have no permission to execute this functionality!'
            ], 403);
        }

        $draw = (int) $request->input('draw', 0);
        $start = max((int) $request->input('start', 0), 0);
        $length = (int) $request->input('length', 15);
        $length = $length > 0 ? min($length, 100) : 15;
        $searchValue = trim((string) $request->input('search.value', ''));

        $columnMap = [
            1 => 'booking.BookNo',
            2 => 'booking.vdate',
            3 => 'grpbookingdetails.GuestName',
            4 => 'grpbookingdetails.ArrDate',
            5 => 'grpbookingdetails.DepDate',
            6 => 'grpbookingdetails.RoomNo',
            7 => 'amtcr',
            8 => 'grpbookingdetails.Cancel',
            9 => 'booking.RefBookNo',
            10 => 'grpbookingdetails.U_Name',
        ];

        $orderColumnIndex = (int) $request->input('order.0.column', 1);
        $orderDirection = strtolower((string) $request->input('order.0.dir', 'desc')) === 'asc'
            ? 'asc'
            : 'desc';

        $orderColumn = $columnMap[$orderColumnIndex] ?? 'booking.BookNo';

        $baseQuery = DB::table('grpbookingdetails')
            ->select([
                'grpbookingdetails.GuestName',
                'grpbookingdetails.ArrDate',
                'grpbookingdetails.DepDate',
                'grpbookingdetails.RoomNo',
                'grpbookingdetails.Cancel',
                'grpbookingdetails.U_Name',
                'grpbookingdetails.ContraDocId',
                'grpbookingdetails.Sno',
                'grpbookingdetails.BookingDocid',
                'grpbookingdetails.id',
                'grpbookingdetails.Property_ID',
                'grpbookingdetails.BookNo',
                'grpbookingdetails.created_at',
                DB::raw('SUM(paycharge.amtcr) - SUM(paycharge.amtdr) as amtcr'),
                'booking.vdate',
                'booking.Vprefix',
                'booking.RefBookNo',
                'booking.U_Name as booking_U_Name',
            ])
            ->leftJoin('paycharge', function ($join) {
                $join->on('paycharge.refdocid', '=', 'grpbookingdetails.BookingDocid')
                    ->whereNull('paycharge.folionodocid')
                    ->where('paycharge.sno', '1');
            })
            ->leftJoin('booking', 'booking.DocId', '=', 'grpbookingdetails.BookingDocid')
            ->joinSub(
                DB::table('grpbookingdetails')
                    ->select('BookingDocid', DB::raw('MAX(id) as max_id'))
                    ->where('Property_ID', $this->propertyid)
                    ->groupBy('BookingDocid'),
                'sub',
                function ($join) {
                    $join->on('grpbookingdetails.BookingDocid', '=', 'sub.BookingDocid')
                        ->on('grpbookingdetails.id', '=', 'sub.max_id');
                }
            )
            ->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->groupBy([
                'grpbookingdetails.BookingDocid',
                'grpbookingdetails.id',
                'grpbookingdetails.Property_ID',
                'grpbookingdetails.BookNo',
                'grpbookingdetails.created_at',
                'booking.vdate',
                'booking.Vprefix',
                'grpbookingdetails.GuestName',
                'grpbookingdetails.ArrDate',
                'grpbookingdetails.DepDate',
                'grpbookingdetails.RoomNo',
                'grpbookingdetails.Cancel',
                'grpbookingdetails.U_Name',
                'grpbookingdetails.ContraDocId',
                'grpbookingdetails.Sno',
                'booking.RefBookNo',
                'booking.U_Name',
            ]);

        // Count total records using a subquery to avoid GROUP BY count issues
        $countQuery = DB::table('grpbookingdetails')
            ->joinSub(
                DB::table('grpbookingdetails')
                    ->select('BookingDocid', DB::raw('MAX(id) as max_id'))
                    ->where('Property_ID', $this->propertyid)
                    ->groupBy('BookingDocid'),
                'sub',
                function ($join) {
                    $join->on('grpbookingdetails.BookingDocid', '=', 'sub.BookingDocid')
                        ->on('grpbookingdetails.id', '=', 'sub.max_id');
                }
            )
            ->where('grpbookingdetails.Property_ID', $this->propertyid);

        $recordsTotal = (clone $countQuery)->count();

        // Apply search to count query
        $countQuery->when($searchValue !== '', function ($query) use ($searchValue) {
            $query->where(function ($query) use ($searchValue) {
                $query->where('grpbookingdetails.BookNo', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.GuestName', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.ArrDate', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.DepDate', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.RoomNo', 'like', "%{$searchValue}%")
                    ->orWhere('booking.RefBookNo', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.U_Name', 'like', "%{$searchValue}%");
            });
        })
            ->leftJoin('booking', 'booking.DocId', '=', 'grpbookingdetails.BookingDocid');

        $recordsFiltered = $searchValue === ''
            ? $recordsTotal
            : (clone $countQuery)->count();

        $baseQuery->when($searchValue !== '', function ($query) use ($searchValue) {
            $query->where(function ($query) use ($searchValue) {
                $query->where('grpbookingdetails.BookNo', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.GuestName', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.ArrDate', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.DepDate', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.RoomNo', 'like', "%{$searchValue}%")
                    ->orWhere('booking.RefBookNo', 'like', "%{$searchValue}%")
                    ->orWhere('grpbookingdetails.U_Name', 'like', "%{$searchValue}%");
            });
        });

        $rows = $baseQuery
            ->orderBy('booking.Vprefix', $orderColumn === 'booking.Vprefix' ? $orderDirection : 'desc')
            ->orderBy('booking.BookNo', $orderColumn === 'booking.BookNo' ? $orderDirection : 'desc')
            ->when($orderColumn !== 'booking.BookNo' && $orderColumn !== 'booking.Vprefix', function ($query) use ($orderColumn, $orderDirection) {
                $query->orderBy($orderColumn, $orderDirection);
            })
            ->offset($start)
            ->limit($length)
            ->get();

        if ($rows->isEmpty()) {
            return response()->json([
                'draw' => $draw,
                'recordsTotal' => $recordsTotal,
                'recordsFiltered' => $recordsFiltered,
                'data' => [],
            ]);
        }

        $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first();

        $data = $rows->values()->map(function ($row, $index) use ($start, $channelenviro) {
            $sn = $start + $index + 1;
            $docIdB64 = base64_encode($row->BookingDocid);
            $snoB64 = base64_encode($row->Sno);
            $bookNo = $row->BookNo;
            $sno = $row->Sno;
            $vprefix = $row->Vprefix;
            $modalSuffix = "{$bookNo}-Sno-{$sno}-vprefix-{$vprefix}";

            return [
                'sn' => $sn,
                'book_no' => $row->BookNo,
                'reg_on' => $this->formatDate($row->vdate, 'd-M-Y'),
                'guest_name' => $row->GuestName,
                'arr_date' => $this->formatDate($row->ArrDate, 'd-M-Y'),
                'dep_date' => $this->formatDate($row->DepDate, 'd-M-Y'),
                'room_no' => $row->RoomNo,
                'advance' => $row->amtcr ?? 0,
                'cancel' => $row->Cancel,
                'ref_id' => $row->RefBookNo ?? '',
                'u_name' => $row->U_Name,
                'booking_docid' => $row->BookingDocid,
                'sno' => $row->Sno,
                'action' => $this->buildReservationActionButtons($row, $channelenviro, $modalSuffix, $docIdB64, $snoB64),
            ];
        });

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data' => $data,
        ]);
    }

    protected function formatDate($value, $format = 'd-m-Y')
    {
        if (empty($value)) {
            return '';
        }

        try {
            return date($format, strtotime($value));
        } catch (\Throwable $th) {
            return '';
        }
    }

    protected function buildReservationActionButtons($row, $channelenviro, $modalSuffix, $docIdB64, $snoB64)
    {
        $buttons = [];

        if (in_array($row->U_Name, ['Web', 'self']) && $row->ContraDocId != '') {
            $buttons[] = '<a href="updatereservation?DocId=' . $docIdB64 . '&sno=' . $snoB64 . '">
                <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>Checkin</button>
            </a>';
        } elseif (in_array($row->U_Name, ['Web', 'self'])) {
            $buttons[] = '<a href="updatereservation?DocId=' . $docIdB64 . '&sno=' . $snoB64 . '">
                <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>Verify</button>
            </a>';
        } elseif ($row->U_Name == 'NOSHOW') {
            $buttons[] = '<a href="updatereservation?DocId=' . $docIdB64 . '&sno=' . $snoB64 . '">
                <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>No Show</button>
            </a>';
        } elseif (!in_array($row->U_Name, ['Web', 'NOSHOW']) && $row->ContraDocId == '') {
            $buttons[] = '<a href="updatereservation?DocId=' . $docIdB64 . '&sno=' . $snoB64 . '">
                <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>Edit</button>
            </a>';
        } elseif ($row->ContraDocId != '') {
            $buttons[] = '<a href="updatereservation?DocId=' . $docIdB64 . '&sno=' . $snoB64 . '">
                <button class="btn btn-success btn-sm"><i class="far fa-edit"></i>Checkin</button>
            </a>';
        }

        if ($row->Cancel == 'N') {
            $userName = Auth::user()->u_name ?? '';
            $userPropertyId = Auth::user()->propertyid ?? 0;
            if (!($userName != 'sa' && $userPropertyId == 134)) {
                $buttons[] = '<a href="updatecancel?DocId=' . $docIdB64 . '"
                    onclick="return confirm(\'Do You want to cancel this reservation?\');">
                    <button class="btn btn-secondary btn-sm"><i class="fa-solid fa-ban"></i> Cancel</button>
                </a>';
            }
        } elseif ($row->Cancel == 'Y') {
            $buttons[] = '<a href="revcancel?DocId=' . $docIdB64 . '"
                onclick="return confirm(\'Do You want to Confirm this reservation?\');">
                <button class="btn btn-primary btn-sm"><i class="fa-solid fa-check"></i> Rev_Cancel</button>
            </a>';
        }

        if ($row->Cancel == 'N') {
            $buttons[] = '<a>
                <button data-toggle="modal" data-target="#reslettermodal-' . $modalSuffix . '"
                    class="btn btn-warning btn-sm"><i class="fa-solid fa-ban"></i> Res Letter</button>
            </a>';
            $buttons[] = $this->buildResLetterModal($modalSuffix, $row->BookNo, $row->Sno, $row->Vprefix);
        } elseif ($row->Cancel == 'Y') {
            $buttons[] = '<a>
                <button data-toggle="modal" data-target="#cancletter-' . $modalSuffix . '"
                    class="btn btn-primary btn-sm"><i class="fa-solid fa-check"></i> Canc Letter</button>
            </a>';
            $buttons[] = $this->buildCancLetterModal($modalSuffix, $row->BookNo, $row->Sno, $row->Vprefix);
        }

        if ($row->Cancel == 'N') {
            $buttons[] = '<a>
                <button data-toggle="modal" data-target="#rescardmodal-' . $modalSuffix . '" class="btn btn-info btn-sm"><i class="fa-regular fa-address-card"></i> Reg Card</button>
            </a>';
            $buttons[] = $this->buildRegCardModal($modalSuffix, $row->BookNo, $row->Sno, $row->Vprefix);
        }

        $buttons[] = '<a href="advancedeposit?DocId=' . $docIdB64 . '&Sno=' . $snoB64 . '">
            <button class="btn btn-info btn-sm"><i class="fa-solid fa-money-bill-transfer"></i> Deposit</button>
        </a>';

        if (!in_array($row->U_Name, ['Web', 'self']) && $row->ContraDocId == '') {
            $buttons[] = '<a target="_blank" href="preforma?DocId=' . $docIdB64 . '&Sno=' . $snoB64 . '">
                <button class="btn btn-info btn-sm"><i class="fa-solid fa-money-bill-transfer"></i> Preforma</button>
            </a>';
        }

        if ($channelenviro && $channelenviro->checkyn == 'N') {
            $buttons[] = '<a
                href="deletereservation?DocId=' . $docIdB64 . '">
                <button class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Delete</button>
            </a>';
        }

        return '<div class="action-buttons">' . implode(' ', $buttons) . '</div>';
    }

    protected function buildResLetterModal($modalSuffix, $bookNo, $sno, $vprefix)
    {
        return '<div class="modal fade" id="reslettermodal-' . $modalSuffix . '">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="text-center mb-3">
                            <button docid="' . $bookNo . '-Sno-' . $sno . '-vprefix-' . $vprefix . '" style="width: 7rem;" type="button"
                                class="btn mailbtn btn-facebook mr-2">Mail</button>
                            <button docid="' . $bookNo . '-Sno-' . $sno . '-vprefix-' . $vprefix . '" style="width: 7rem;" type="button"
                                class="btn printbtn btn-dribbble">Print</button>
                        </div>
                        <div class="text-center">
                            <button style="width: 7rem;" type="button" class="btn btn-danger"
                                data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>';
    }

    protected function buildCancLetterModal($modalSuffix, $bookNo, $sno, $vprefix)
    {
        return '<div class="modal fade" id="cancletter-' . $modalSuffix . '">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="text-center mb-3">
                            <button docid="' . $bookNo . '-Sno-' . $sno . '-vprefix-' . $vprefix . '" style="width: 7rem;" type="button"
                                class="btn mailbtnc btn-facebook mr-2">Mail</button>
                            <button docid="' . $bookNo . '-Sno-' . $sno . '-vprefix-' . $vprefix . '" style="width: 7rem;" type="button"
                                class="btn printbtnc btn-dribbble">Print</button>
                        </div>
                        <div class="text-center">
                            <button style="width: 7rem;" type="button" class="btn btn-danger"
                                data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>';
    }

    protected function buildRegCardModal($modalSuffix, $bookNo, $sno, $vprefix)
    {
        return '<div class="modal fade" id="rescardmodal-' . $modalSuffix . '">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="text-center mb-3">
                            <button docid="' . $bookNo . '-Sno-' . $sno . '-vprefix-' . $vprefix . '" style="width: 7rem;" type="button"
                                class="btn printBtnResCard btn-dribbble">Print</button>
                        </div>
                        <div class="text-center">
                            <button style="width: 7rem;" type="button" class="btn btn-danger"
                                data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>';
    }

    public function updatecancel(Request $request)
    {
        $DocId = base64_decode($request->input('DocId'));

        $guestprof = GuestProf::where('docid', $DocId)->first();
        if (!$guestprof) {
            return back()->with('error', 'Guest profile not found.');
        }

        $guestcode = $guestprof->guestcode;
        $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first();

        if (optional($channelenviro)->checkyn === 'Y') {
            $updatecancel = ResHelper::UpdateCancel($DocId, $guestcode);
            // Log::info('UpdateCancel Response: ' . print_r($updatecancel, true));

            if (is_array($updatecancel) && isset($updatecancel['httpcode']) && $updatecancel['httpcode'] === 400) {
                return $this->cancelBooking($DocId);
            }
        }

        return $this->cancelBooking($DocId);
    }

    private function cancelBooking($DocId)
    {
        try {
            DB::beginTransaction();

            DB::table('booking')
                ->where('Property_ID', $this->propertyid)
                ->where('DocId', $DocId)
                ->update([
                    'Cancel' => 'Y',
                    'CancelUName' => Auth::user()->u_name,
                    'ResStatus' => 'Cancel'
                ]);

            DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $DocId)
                ->update([
                    'Cancel' => 'Y',
                    'chkoutyn' => 'Y',
                    'updated_at' => now(),
                    'CancelUName' => Auth::user()->u_name,
                    'CancelDate' => $this->currenttime,
                ]);

            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->reservation != '' &&
                    $wpenv->reservationcancelarray != '' &&
                    $wpenv->reservationcanceltemplate != ''
                ) {
                    $reservationcancelarray = json_decode($wpenv->reservationcancelarray, true);

                    $msgdata = [];
                    foreach ($reservationcancelarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'sum')) {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $DocId)->sum(removeSuffixIfExists($colname, 'sum'));
                        } else {
                            $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $DocId)->value($colname);
                        }

                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $DocId)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $mob, 'Reservation Cancel', 'reservationcanceltemplate');
                }
            }

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->adminreservation != '' &&
                    $wpenv->adminreservationcancelarray != '' &&
                    $wpenv->adminreservationcanceltemplate != '' &&
                    $wpenv->managementmob != ''
                ) {
                    $adminreservationcancelarray = json_decode($wpenv->adminreservationcancelarray, true);

                    $msgdata = [];
                    foreach ($adminreservationcancelarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'sum')) {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $DocId)->sum(removeSuffixIfExists($colname, 'sum'));
                        } else {
                            $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $DocId)->value($colname);
                        }
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $DocId)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Reservation Cancel Admin', 'adminreservationcanceltemplate');
                }
            }

            DB::commit();
            $pageSource = request()->query('page_source', 'reservationlist');


            return redirect($pageSource)
                ->with('success', 'Reservation Cancelled successfully!');
        } catch (Exception $e) {

            return redirect($pageSource)
                ->with('error', 'Unable to Cancel Reservation! ' . $e->getMessage());
        }
    }

    public function cancelReservationWithReason(Request $request)
    {
        // $request->validate([
        //     'DocId' => 'required',
        //     'sno' => 'required|integer',
        //     'page_source' => 'nullable|string',
        //     'reason' => 'required|string|max:1000',
        // ]);

        $DocId = base64_decode($request->input('DocId'));
        $sno = base64_decode($request->input('sno'));
        $reason = $request->input('reason');
        $pageSource = $request->input('page_source', 'roomstatus');

        try {
            DB::beginTransaction();

            // Get guest profile for reference
            $guestprof = GuestProf::where('docid', $DocId)->first();
            if (!$guestprof) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest profile not found.'
                ], 404);
            }

            $guestcode = $guestprof->guestcode;
            $guestName = ($guestprof->con_prefix ?? '') . ' ' . $guestprof->name;

            $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first();

            if (optional($channelenviro)->checkyn === 'Y') {
                $updatecancel = ResHelper::UpdateCancel($DocId, $guestcode);

                if (is_array($updatecancel) && isset($updatecancel['httpcode']) && $updatecancel['httpcode'] === 400) {
                    $this->cancelBookingWithReason($DocId, $guestcode, $reason, $guestName);
                } else {
                    // Still need to add remark for channel cancellation
                    $this->addCancellationRemark($DocId, $guestcode, $reason, $guestName);
                    DB::commit();
                }
            } else {
                $this->cancelBookingWithReason($DocId, $guestcode, $reason, $guestName);
            }

            return response()->json([
                'success' => true,
                'message' => 'Reservation cancelled successfully.',
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            \Log::error('Cancel reservation failed', [
                'docid' => $DocId,
                'sno' => $sno,
                'error' => $e->getMessage(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Unable to cancel reservation: ' . $e->getMessage(),
            ], 500);
        }
    }

    private function cancelBookingWithReason($DocId, $guestcode, $reason, $guestName)
    {
        DB::table('booking')
            ->where('Property_ID', $this->propertyid)
            ->where('DocId', $DocId)
            ->update([
                'Cancel' => 'Y',
                'CancelUName' => Auth::user()->u_name,
                'ResStatus' => 'Cancel'
            ]);

        DB::table('grpbookingdetails')
            ->where('Property_ID', $this->propertyid)
            ->where('BookingDocid', $DocId)
            ->update([
                'Cancel' => 'Y',
                'chkoutyn' => 'Y',
                'updated_at' => now(),
                'CancelUName' => Auth::user()->u_name,
                'CancelDate' => $this->currenttime,
            ]);

        // Add cancellation remark
        $this->addCancellationRemark($DocId, $guestcode, $reason, $guestName);

        // WhatsApp notifications (existing logic)
        $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

        if ($wpenv != null) {
            if (
                $wpenv->checkyn == 'Y' &&
                $wpenv->reservation != '' &&
                $wpenv->reservationcancelarray != '' &&
                $wpenv->reservationcanceltemplate != ''
            ) {
                $reservationcancelarray = json_decode($wpenv->reservationcancelarray, true);

                $msgdata = [];
                foreach ($reservationcancelarray as $row) {
                    [$colname, $table] = $row;
                    if (endsWith($colname, 'sum')) {
                        $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $DocId)->sum(removeSuffixIfExists($colname, 'sum'));
                    } else {
                        $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $DocId)->value($colname);
                    }

                    $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $DocId)->value('mobile_no');
                    $msgdata[] = $value;
                }

                $whatsapp = new WhatsappSend();
                $whatsapp->MuzzTech($msgdata, $mob, 'Reservation Cancel', 'reservationcanceltemplate');
            }
        }

        if ($wpenv != null) {
            if (
                $wpenv->checkyn == 'Y' &&
                $wpenv->adminreservation != '' &&
                $wpenv->adminreservationcancelarray != '' &&
                $wpenv->adminreservationcanceltemplate != '' &&
                $wpenv->managementmob != ''
            ) {
                $adminreservationcancelarray = json_decode($wpenv->adminreservationcancelarray, true);

                $msgdata = [];
                foreach ($adminreservationcancelarray as $row) {
                    [$colname, $table] = $row;
                    if (endsWith($colname, 'sum')) {
                        $value = DB::table($table)->where('propertyid', $this->propertyid)->where('refdocid', $DocId)->sum(removeSuffixIfExists($colname, 'sum'));
                    } else {
                        $value = DB::table($table)->where('Property_ID', $this->propertyid)->where('BookingDocid', $DocId)->value($colname);
                    }

                    $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $DocId)->value('mobile_no');
                    $msgdata[] = $value;
                }

                $whatsapp = new WhatsappSend();
                $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Reservation Cancel Admin', 'adminreservationcanceltemplate');
            }
        }

        DB::commit();
    }

    private function addCancellationRemark($DocId, $guestcode, $reason, $guestName)
    {
        $remarkSno = Remark::where('docid', $DocId)->max('sno');
        $remarkSno = $remarkSno ? ((int) $remarkSno) + 1 : 1;

        $desc = "Reservation cancelled for {$guestName} (Guest Code: {$guestcode}) by " . Auth::user()->u_name . " at " . now()->format('d-m-Y H:i:s') . ". Reason: {$reason}";

        Remark::create([
            'docid'       => $DocId,
            'sno'         => $remarkSno,
            'type'        => 'Cancellation',
            'status'      => 1,
            'description' => $desc,
            'ipaddr'      => request()->ip(),
            'u_name'      => Auth::user()->u_name,
        ]);
    }

    public function fetchreservationsingle(Request $request)
    {
        $docid = $request->BookingDocid;
        $sno = $request->Sno;
        $arrdate = $request->clickedRangeStart;
        $clickedroomno = $request->clickedroomno;

        $fetchservice = new PreformaFetch($this->propertyid);
        $data = $fetchservice->fetchInvoiceData($docid, $sno);

        $depdate = RoomOcc::whereNull('type')
            ->where('depdate', $arrdate)
            ->where('roomno', $clickedroomno)
            ->first();

        $todaydep = false;
        if ($depdate) {
            $todaydep = true;
        }

        $data['todaydep'] = $todaydep;

        return response()->json($data);
    }

    public function openpreformainvoice(Request $request)
    {
        $docid = base64_decode($request->query('docid'));

        if (empty($docid)) {
            $docid = base64_decode($request->input('DocId'));
        }

        $sno = base64_decode($request->input('Sno'));

        $fetchService = new PreformaFetch($this->propertyid);
        $viewData = $fetchService->fetchInvoiceData($docid, $sno);

        if (!$viewData || !$viewData['data']) {
            abort(404, 'Invoice data not found.');
        }

        return Pdf::loadView('property.prints.reservation.preforma', $viewData)
            ->setPaper('a4', 'portrait')
            ->stream('reservation-preforma.pdf');
    }
}
