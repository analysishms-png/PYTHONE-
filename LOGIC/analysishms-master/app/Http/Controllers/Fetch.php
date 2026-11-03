<?php

namespace App\Http\Controllers;

use App\Models\ChannelRate;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\CompanyLog;
use App\Models\Companyreg;
use App\Models\FomBillDetail;
use App\Models\UserModule;
use App\Models\MenuHelp;
use App\Models\Paycharge;
use App\Models\RoomOcc;
use App\Models\Guestfolio;
use App\Models\GuestProf;
use App\Models\ItemGrp;
use App\Models\ItemMast;
use App\Models\Kot;
use App\Models\Plan1;
use App\Models\PlanMast;
use App\Models\Revmast;
use App\Models\RoomMast;
use App\Models\Sale1;
use App\Models\SubGroup;
use App\Models\VoucherPrefix;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use PDO;
use DateTime;
use Illuminate\Support\Facades\Log;
use Laravel\Ui\Presets\React;
use DateTimeZone;
use DateInterval;
use FontLib\Table\Type\post;

class Fetch extends Controller
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

    public function guesthistoryautocomplete(Request $request)
    {
        $search = trim((string) $request->input('sendfor', ''));

        if (strlen($search) < 2) {
            return response()->json([]);
        }

        $query = RoomOcc::query()
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
            ->leftJoin('plan_mast', 'plan_mast.pcode', '=', 'roomocc.plancode')
            ->where('roomocc.propertyid', $this->propertyid)
            ->select([
                'roomocc.docid',
                'roomocc.name',
                'guestprof.mobile_no',
                'room_cat.name as roomcatname',
                'roomocc.roomno',
                'roomocc.chkindate',
                'roomocc.adult',
                'roomocc.nodays',
                'roomocc.rrtaxinc',
                'plan_mast.name as planname',
                'roomocc.planamt',
            ])
            ->limit(10);

        if (ctype_digit($search)) {
            $query->where('guestprof.mobile_no', 'like', $search . '%');
        } else {
            $query->where('roomocc.name', 'like', $search . '%');
        }

        return response()->json($query->orderBy('roomocc.name')->get());
    }

    public function guesthistory(Request $request)
    {
        $docid = $request->input('docid');
        $findfor = $request->input('sendfor');
        $nameornum = $request->input('nameornum');

        $query = RoomOcc::select(
            'roomocc.*',
            'guestfolio.add1',
            'guestfolio.add2',
            'guestfolio.city',
            'guestfolio.nodays',
            'guestfolio.company',
            'guestfolio.purvisit',
            'guestfolio.arrfrom',
            'guestfolio.destination',
            'guestfolio.travelmode',
            'guestfolio.vehiclenum',
            'guestfolio.remark',
            'guestfolio.rodisc',
            'guestfolio.rsdisc',
            'guestfolio.busssource',
            'guestfolio.booking_source',
            'guestfolio.travelagent',
            'guestfolio.roomcount',
            'guestprof.state_code',
            'guestprof.country_code',
            'guestprof.mobile_no',
            'guestprof.email_id',
            'guestprof.state_name',
            'guestprof.country_name',
            'guestfolio.rodisc as guestrodisc',
            'guestfolio.rsdisc as guestrsdisc',
            'guestprof.vipStatus',
            'guestprof.nationality',
            'guestprof.anniversary',
            'guestprof.con_prefix',
            'guestprof.gender',
            'guestprof.marital_status',
            'guestprof.zip_code',
            'guestprof.dob',
            'guestprof.age',
            'guestprof.id_proof',
            'guestprof.idproof_no',
            'guestprof.pic_path',
            'guestprof.idpic_path',
            'guestprof.billingAccount',
            'guestprof.issuingcitycode',
            'guestprof.issuingcityname',
            'guestprof.issuingcountrycode',
            'guestprof.issuingcountryname',
            'guestprof.expirydate',
            'guestprof.paymentMethod',
            'room_cat.name AS roomcatname',
            'plan_mast.name AS planname'
        )
            ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
            ->leftJoin('plan_mast', 'plan_mast.pcode', '=', 'roomocc.plancode')
            ->where('roomocc.propertyid', $this->propertyid);

        if ($docid !== null && $docid !== '') {
            $query->where('roomocc.docid', $docid);
        } elseif ($nameornum === 'name') {
            $query->where('roomocc.name', 'like', "%{$findfor}%");
        } else {
            $query->where('guestprof.mobile_no', $findfor);
        }

        $data = $query->get();

        if ($data->isEmpty()) {
            return response()->json([
                'error' => 'No data found',
            ], 404);
        }

        return response()->json($data);
    }

    public function checkchargecount(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $roomocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $sno1)->first();

        if (!$roomocc) {
            return json_encode([
                'chargecount' => 0,
                'allrooms' => [],
                'leaderyn' => 'N'
            ]);
        }

        $chkcomplimentry = GuestProf::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->value('complimentry');

        if ($chkcomplimentry == 'Y') {
            return json_encode([
                'chargecount' => 2,
                'allrooms' => [],
                'leaderyn' => 'N',
                'complimentry' => 'Y'
            ]);
        }

        $checkindate = $roomocc->chkindate;
        $ncurdate = ncurdate();
        $checkindatetime = new DateTime($checkindate);
        $currentdatetime = new DateTime($ncurdate);
        $interval = $checkindatetime->diff($currentdatetime);

        // Initialize variables before loop
        $countcharged = 0;
        $allrooms = [];
        $nextdate = $ncurdate;
        $checkindateroomocc = $roomocc->chkindate;
        $checkdepdateroomocc = $roomocc->depdate;
        $leaderyn = $roomocc->leaderyn;

        $startDate = new DateTime($roomocc->chkindate);

        $endDate = new DateTime(
            min(
                ncurdate(),
                $roomocc->depdate
            )
        );

        $countcharged = 1;
        $nextdate = null;
        $checkdate = null;

        while ($startDate <= $endDate) {

            $checkdate = $startDate->format('Y-m-d');

            $exists = DB::table('paycharge')
                ->where('vtype', 'RC')
                ->where('vdate', $checkdate)
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->exists();

            if (!$exists) {
                $countcharged = 0;
                $nextdate = $checkdate;
                break;
            }

            $startDate->modify('+1 day');
        }

        if ($nextdate === null) {
            $nextdate = ncurdate();
        }

        $backposting = ($nextdate != ncurdate()) ? 1 : 0;

        if ($backposting == 1) {
            $allrooms = RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $roomocc->docid)
                ->where('sno1', $roomocc->sno1)
                ->select(
                    'docid',
                    'sno1',
                    'roomno'
                )
                ->get()
                ->toArray();
        }

        if ($leaderyn == 'Y' && $countcharged != 0) {
            $allrooms = RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $roomocc->docid)
                ->where('leaderyn', 'N')
                ->select(
                    'docid',
                    'sno1',
                    'roomno'
                )
                ->get()
                ->toArray();
        }

        // Log::info('checkchargecount date/checkout debug', [
        //     'ncurdate' => ncurdate(),
        //     'mode' => fomparameter()->roomrentchkoutpost,
        //     'checkout' => fomparameter()->checkout,
        //     'variation' => fomparameter()->variationafter,
        //     'php_now' => now()->format('Y-m-d H:i:s'),
        //     'chargedate' => $nextdate,
        // ]);
        if (fomparameter()->roomrentchkoutpost === 'Auto') {
            $tz = new DateTimeZone(date_default_timezone_get());

            $checkoutStr = (string) fomparameter()->checkout;
            $variationStr = (string) fomparameter()->variationafter;

            [$vh, $vm, $vs] = array_map('intval', explode(':', $variationStr));

            $now = new DateTime(ncurdate() . ' ' . date('H:i:s'), $tz);
            $checkout = new DateTime(ncurdate() . ' ' . $checkoutStr, $tz);

            $limit = (clone $checkout)->add(new DateInterval("PT{$vh}H{$vm}M{$vs}S"));


            if ($now > $limit) {

                $postDate = new DateTime($roomocc->chkindate);
                $todayDate = new DateTime(ncurdate());

                while ($postDate <= $todayDate) {

                    $chargeDate = $postDate->format('Y-m-d');

                    $exists = DB::table('paycharge')
                        ->where('vtype', 'RC')
                        ->where('vdate', $chargeDate)
                        ->where('folionodocid', $docid)
                        ->where('sno1', $sno1)
                        ->exists();

                    if (!$exists) {
                        $this->postchargesone(
                            null,
                            $docid,
                            $sno1,
                            $roomocc->roomno,
                            $chargeDate
                        );
                    }

                    $postDate->modify('+1 day');
                }

                return json_encode([
                    'success' => 'Charge Posted',
                    'roomno' => "ROOM CHARGE, ROOM No: $roomocc->roomno",
                    'docid' => $docid,
                    'docidf' => $roomocc->docid,
                    'sno1' => $sno1,
                    'roomnorec' => $roomocc->roomno,
                    'chargecount' => 1,
                    'allrooms' => $allrooms,
                    'leaderyn' => $leaderyn,
                    'condition' => 'Auto',
                    'backposting' => $backposting
                ]);
            } else {
                $countcharged = 1;
            }
            // if ($now > $limit) {
            //     $autpost =  $this->postchargesone(null, $docid, $sno1, $roomocc->roomno, $nextdate);
            //     return json_encode([
            //         'success' => 'Charge Posted',
            //         'roomno' => "ROOM CHARGE, ROOM No: $roomocc->roomno",
            //         'docid' => $docid,
            //         'docidf' => $roomocc->docid,
            //         'sno1' => $sno1,
            //         'roomnorec' => $roomocc->roomno,
            //         'chargecount' => 1,
            //         'allrooms' => $allrooms,
            //         'leaderyn' => $leaderyn,
            //         'condition' => 'Auto'
            //     ]);
            // } else {
            //     $countcharged = 1;
            // }
        } else if (fomparameter()->roomrentchkoutpost == 'Semi') {
            $checkoutStr = fomparameter()->checkout;
            $now = new DateTime('now');
            if ($now->format('H:i:s') < $checkoutStr) {
                $countcharged = 1;
            }
        }

        $data = [
            'checkindateroomocc' => $checkindateroomocc,
            'checkdepdateroomocc' => $checkdepdateroomocc,
            'chargecount' => $countcharged,
            'nextdate' => $nextdate,
            'checkdate' => $checkdate,
            'leaderyn' => $leaderyn,
            'allrooms' => $allrooms,
            'backposting' => $backposting
        ];

        return response()->json($data);
    }

    public function postchargesone(?Request $request = null, $docidf = null, $sno1 = null, $roomno = null, $chargedate = null)
    {

        try {
            DB::beginTransaction();

            $tablename = 'paycharge';

            if (!$docidf) {
                $docidf = $request?->input('docid') ?? request()->input('docid');
            }
            if (!$sno1) {
                $sno1 = $request?->input('sno1') ?? request()->input('sno1');
            }
            if (!$roomno) {
                $roomno = $request?->input('roomno') ?? request()->input('roomno');
            }
            if (!$chargedate) {
                $chargedate = $request?->input('chargedate') ?? request()->input('chargedate');
            }

            // Validate required parameters
            if (empty($docidf) || empty($sno1) || empty($roomno)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Missing required parameters: docid, sno1, roomno',
                    'received' => [
                        'docidf' => $docidf,
                        'sno1' => $sno1,
                        'roomno' => $roomno
                    ]
                ], 400);
            }

            $recdata = [
                'docidf' => $docidf,
                'sno1' => $sno1,
                'roomnorec' => $roomno
            ];

            // $ncurdate = $this->ncurdate;
            $getdocroomoc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docidf)->where('leaderyn', 'Y')->first();

            if ($getdocroomoc) {
                $msno1 = $getdocroomoc->sno1;
            } else {
                $msno1 = 0;
            }

            $results = DB::table('roomocc')
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
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('roomocc.docid', '=', 'guestfolio.docid')
                        ->on('roomocc.sno1', '=', 'guestfolio.sno1');
                })
                ->whereNull('roomocc.chkoutdate')
                ->whereNull('roomocc.type')
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('roomocc.docid', $docidf)
                ->where('roomocc.sno1', $sno1)
                ->whereNotIn('roomocc.docid', function ($query) use ($chargedate, $sno1) {
                    $query->select(DB::raw('DISTINCT folionodocid'))
                        ->from('paycharge')
                        ->where('vdate', $chargedate)
                        ->where('sno1', $sno1)
                        ->where('vtype', 'RC');
                })
                ->get();

            // Log::info('Post Charges One - Results: ' . $results->toJson());


            $paycode = DB::table('revmast')->where('propertyid', $this->propertyid)->where('name', 'ROOM CHARGE')->value('rev_code');

            foreach ($results as $result) {
                $vtype = 'RC';

                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $chargedate)
                    ->whereDate('date_to', '>=', $chargedate)
                    ->first();
                $vno = $chkvpf->start_srl_no + 1;
                $vprefixyr = $chkvpf->prefix;
                $docid = $this->propertyid . 'RC' . ' ‎ ‎' . $vprefixyr . ' ‎ ‎ ‎ ' . $vno;
                $roombookamt = $result->roomrate;

                $rbookpost = $result->roomrate;
                if ($result->roomdisc > 0 && fomparameter()->postroomdiscseparately == 'Y') {
                    $discountamt = ($result->roomrate * $result->roomdisc) / 100;
                    $roombookamt = $result->roomrate - $discountamt;
                    $comment1 = 'ROOM DISC, ROOM No: ' . $result->roomno;
                    $rsdiscdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'sno' => 10,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $chargedate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefixyr,
                        'paycode' => "RSDC$this->propertyid",
                        'comments' => $comment1,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travel_code,
                        'roomno' => $result->roomno,
                        'amtcr' => $discountamt,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->folioNo,
                        'restcode' => 'FOM' . $this->propertyid,
                        'billamount' => $result->roomrate,
                        'taxper' => 0,
                        'onamt' => $result->roomrate,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    Paycharge::insert($rsdiscdata);
                } else if ($result->roomdisc > 0 && fomparameter()->postroomdiscseparately == 'N') {
                    $discountamt = ($result->roomrate * $result->roomdisc) / 100;
                    $roombookamt = $result->roomrate - $discountamt;
                    $rbookpost = $roombookamt;
                }

                // Log::info('roombookamount: ' . $roombookamt);

                if ($roombookamt != 0) {

                    $checktaxstru = DB::table('taxstru')
                        ->where('propertyid', $this->propertyid)
                        ->where('str_code', $result->TaxStru)
                        ->get();

                    $comment1 = 'ROOM CHARGE, ROOM No: ' . $result->roomno;
                    $insertdefaultdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'sno' => 1,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $chargedate,
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
                        'restcode' => 'FOM' . $this->propertyid,
                        'billamount' => $rbookpost,
                        'taxper' => 0,
                        'onamt' => $rbookpost,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
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
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $vno,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $chargedate,
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
                                    'restcode' => 'FOM' . $this->propertyid,
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

                                DB::table($tablename)->insert($insertdata);
                            }
                        } else {
                            if ($comp_operator == '<=') {
                                if ($roombookamt >= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $chargedate,
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
                                        'restcode' => 'FOM' . $this->propertyid,
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

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>=') {
                                if ($roombookamt <= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $chargedate,
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
                                        'restcode' => 'FOM' . $this->propertyid,
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

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '=') {
                                if ($roombookamt == $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $chargedate,
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
                                        'restcode' => 'FOM' . $this->propertyid,
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

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>') {
                                if ($roombookamt > $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $chargedate,
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
                                        'restcode' => 'FOM' . $this->propertyid,
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

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '<') {
                                if ($roombookamt < $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $vno,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $chargedate,
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
                                        'restcode' => 'FOM' . $this->propertyid,
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

                                    DB::table($tablename)->insert($insertdata);
                                }
                            }
                        }
                    }
                }
                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefixyr)
                    ->increment('start_srl_no');
            }

            $backposting = ($chargedate != ncurdate()) ? 1 : 0;

            $data = [
                'success' => 'Charge Posted',
                'roomno' => $comment1 ?? '',
                'docid' => $docid ?? '',
                'backposting' => $backposting
            ] + $recdata;

            DB::commit();
            return response()->json($data);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['error' => 'Unable To Post Charge' . $e->getMessage()]);
        }
    }

    public function fetchplancacl(Request $request)
    {
        $plancode = json_decode($request->input('plancode'));

        $checkplan = PlanMast::select(
            'plan_mast.*',
            DB::raw('SUM(
                CASE 
                    WHEN plan_mast.room_rate < taxstru.limit1 AND taxstru.comp_operator = "Between" THEN taxstru.rate
                    WHEN plan_mast.room_rate <= taxstru.limit1 AND taxstru.comp_operator = "<=" THEN taxstru.rate
                    ELSE 0
                END
            ) AS total_rate'),
            DB::raw('plan_mast.room_rate / (1 + (
                SUM(
                    CASE 
                        WHEN plan_mast.room_rate < taxstru.limit1 AND taxstru.comp_operator = "Between" THEN taxstru.rate
                        WHEN plan_mast.room_rate <= taxstru.limit1 AND taxstru.comp_operator = "<=" THEN taxstru.rate
                        ELSE 0
                    END
                ) / 100
            )) AS room_rate_before_tax')
        )
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'plan_mast.room_tax_stru')
            ->where('plan_mast.propertyid', $this->propertyid)
            ->where('plan_mast.pcode', $plancode)
            ->groupBy('plan_mast.room_rate')
            ->first();

        if ($checkplan) {
            try {
                $plan1 = Plan1::select('plan1.*', 'revmast.name as chargename')
                    ->leftJoin('revmast', 'revmast.rev_code', '=', 'plan1.rev_code')
                    ->where('plan1.propertyid', $this->propertyid)
                    ->where('plan1.pcode', $checkplan->pcode)
                    ->get();

                $data = [
                    'plan_mast' => $checkplan,
                    'plan1' => $plan1
                ];
                return response()->json($data);
            } catch (Exception $e) {
                return response()->json([
                    'message' => 'Unknown Error Occurred: ' . $e->getMessage()
                ], 500);
            }
        } else {
            return response()->json([
                'message' => 'Plan not found'
            ], 404);
        }
    }

    public function fecthplanbyroom(Request $request)
    {
        $room_cat = $request->input('room_cat');
        if ($room_cat) {
            $plans = PlanMast::where('propertyid', $this->propertyid)->where('room_cat', $room_cat)->get();
            if ($plans) {
                return response()->json(['message' => 'Plans Found', 'data' => $plans]);
            } else {
                return response()->json(['message' => 'Plans Not Found'], 500);
            }
        } else {
            return response()->json(['message' => 'Invalid Room Category' . $room_cat], 500);
        }
    }

    public function retcodefetch(Request $request)
    {
        $forwhich = $request->input('forwhich');
        if ($forwhich) {
            $data = ChannelRate::where('propertyid', $this->propertyid)->where('name', $forwhich)->orderBy('created_at', 'ASC')->get();
            if ($data) {
                return response()->json(['message' => 'Data Found', 'data' => $data]);
            } else {
                return response()->json(['message' => 'Data Not Found'], 500);
            }
        } else {
            return response()->json(['message' => 'Invalid Category' . $forwhich], 500);
        }
    }

    public function channelupdate(Request $request)
    {
        $updatecode = $request->input('updatecode');
        if ($updatecode) {
            $propertyid = 'TqN7Ngtm8X4pAJGSljRI';
            $apiurl = 'https://www.eglobe-solutions.com/webapichannelmanager/inventory/' . $propertyid . '/updatestatus/' . $updatecode;
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $apiurl);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Accept: application/json'
            ]);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($ch);
            curl_close($ch);
            if ($response) {
                $newres = json_decode($response);
                return response()->json(['message' => 'Data Found', 'data' => json_encode($newres)]);
            } else {
                return response()->json(['message' => 'Data Not Found'], 500);
            }
        } else {
            return response()->json(['message' => 'Invalid Category' . $updatecode], 500);
        }
    }

    public function channelupdatederived(Request $request)
    {
        $updatecode = $request->input('updatecode');
        if ($updatecode) {
            $propertyid = 'TqN7Ngtm8X4pAJGSljRI';
            $apiurl = 'https://www.eglobe-solutions.com/webapichannelmanager/rates/' . $propertyid . '/bulkupdate/derived/status/' . $updatecode;
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $apiurl);
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Accept: application/json'
            ]);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($ch);
            curl_close($ch);
            if ($response) {
                $newres = json_decode($response);
                return response()->json(['message' => 'Data Found', 'data' => json_encode($newres)]);
            } else {
                return response()->json(['message' => 'Data Not Found'], 500);
            }
        } else {
            return response()->json(['message' => 'Invalid Category' . $updatecode], 500);
        }
    }


    public function outletitems(Request $request)
    {
        $outletcodes = $request->input('outletcodes');

        $itemgroups = DB::table('itemgrp')->select('itemgrp.*', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemgrp.restcode')
            ->where('itemgrp.property_id', $this->propertyid)->whereIn('itemgrp.restcode', $outletcodes)->orderBy('itemgrp.name', 'ASC')
            ->get();

        $itemmast = DB::table('itemmast')->select('itemmast.*', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemmast.RestCode')
            ->where('itemmast.Property_ID', $this->propertyid)->whereIn('itemmast.RestCode', $outletcodes)
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        $data = [
            'itemgroups' => $itemgroups,
            'itemmast' => $itemmast
        ];

        return $data;
    }

    public function getitemsbygroup(Request $request)
    {
        $groupcodes = $request->input('checkedgroupcode');

        $itemmast = DB::table('itemmast')->select('itemmast.*', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemmast.RestCode')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.RestCode', "PURC$this->propertyid")
            ->whereIn('itemmast.ItemGroup', $groupcodes)
            ->where('itemmast.ActiveYN', 'Y')
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        return response()->json($itemmast);
    }


    public function checkbillalreadyprinted(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');

        $chk = FomBillDetail::where('propertyid', $this->propertyid)
            ->where('folionodocid', $docid)
            ->where('sno1', $sno1)
            ->where('status', 'settle')
            ->first();

        if ($chk) {
            return response()->json([
                'exists' => true,
                'message' => 'Bill has already been printed and settled.'
            ]);
        } else {
            return response()->json([
                'exists' => false,
                'message' => 'No printed and settled bill found for the given docid and sno1.'
            ]);
        }
    }
    public function getitems(Request $request)
    {
        $groupcodes = $request->input('checkedgroupcode');

        $itemmast = DB::table('itemmast')->select('itemmast.*', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemmast.RestCode')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.RestCode', "PURC$this->propertyid")
            ->whereIn('itemmast.ItemGroup', $groupcodes)
            ->where('itemmast.ActiveYN', 'Y')
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        return response()->json($itemmast);
    }
    public function getstockitems(Request $request)
    {
        $groupcodes = $request->input('checkedgroupcode');
        if (empty($groupcodes)) return response()->json([]);

        $items = DB::table('itemmast')
            ->select('Code as code', 'Name as name')
            // Using Property_ID as per your previous snippet
            ->where('Property_ID', $this->propertyid)
            // Safer: match anything starting with PURC
            ->where('RestCode', 'LIKE', 'PURC%')
            ->whereIn('ItemGroup', $groupcodes)
            ->where('ActiveYN', 'Y')
            ->orderBy('Name', 'ASC')
            ->get();

        return response()->json($items);
    }

    public function getmaxvoucher(Request $request)
    {
        $date = $request->input('date') ?? ncurdate();
        $vtype = $request->input('vtype');
        $data = VoucherPrefix::where('v_type', $vtype)
            ->where('propertyid', $this->propertyid)
            ->where('date_from', '<=', $date)
            ->where('date_to', '>=', $date)
            ->max('start_srl_no') + 1;
        return json_encode($data);
    }
}
