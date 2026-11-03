<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\UpdateRepeat;
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
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\GrpBookinDetail;
use App\Models\GuestFolioProfDetail;
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
use App\Models\EnviroBanquet;
use App\Models\VoucherPrefix;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use Illuminate\Contracts\Pipeline\Pipeline;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Psr\Http\Client\NetworkExceptionInterface;
use Symfony\Component\Routing\Matcher\Dumper\MatcherDumper;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;


class PrintController extends Controller
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

    public function revokeopen($code)
    {
        $value = Menuhelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();
        return $value;
    }

    public function ExportTable()
    {
        echo '<link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">';
        echo '<link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">';
        echo '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>';
        echo '<script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/dataTables.buttons.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.dataTables.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.html5.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.print.min.js"></script>';
    }
    # Warning: Abandon hope, all who enter here. ðŸ˜±
    public function DownloadTable($tableName, $title, $columnsToExport, $columnToSearch)
    {
        $exportColumnsJS = json_encode($columnsToExport);
        $searchColumnsJS = json_encode($columnToSearch);

        echo "<script>
        $(document).ready(function() {
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
                    // Apply column-specific search
                    let searchColumns = $searchColumnsJS;
                    this.api().columns(searchColumns).every(function() {
                        let column = this;
                        let title = column.header().textContent;
                        let input = document.createElement('input');
                        input.placeholder = 'Search ' + title;
                        $(input).appendTo($(column.footer()).empty());
                        $(input).on('keyup', function () {
                            if (column.search() !== this.value) {
                                column.search(this.value).draw();
                            }
                        });
                    });
                }
            });
        });
        </script>";
    }

    public function printwalkin(Request $request, $docid, $sno1)
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->print == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $data = RoomOcc::query()
            ->select([
                'roomocc.name as guest_name',
                DB::raw('COALESCE(gf_exact.add1, gf_primary.add1) as add1'),
                DB::raw('COALESCE(gf_exact.add2, gf_primary.add2) as add2'),
                DB::raw('COALESCE(gp_exact.pic_path, gp_primary.pic_path) as pic_path'),
                DB::raw('COALESCE(gp_exact.idpic_path, gp_primary.idpic_path) as idpic_path'),
                DB::raw('COALESCE(gp_exact.guestsign, gp_primary.guestsign) as guestsign'),
                DB::raw('COALESCE(c_exact.cityname, c_primary.cityname) as cityname'),
                DB::raw('COALESCE(gp_exact.nationality, gp_primary.nationality) as nationality'),
                DB::raw('COALESCE(gp_exact.mobile_no, gp_primary.mobile_no) as mobile_no'),
                DB::raw('COALESCE(gp_exact.email_id, gp_primary.email_id) as email_id'),
                DB::raw('COALESCE(gp_exact.dob, gp_primary.dob) as dob'),
                DB::raw('COALESCE(gp_exact.anniversary, gp_primary.anniversary) as anniversary'),
                DB::raw('COALESCE(gf_exact.arrfrom, gf_primary.arrfrom) as arrfrom'),
                DB::raw('COALESCE(gf_exact.destination, gf_primary.destination) as destination'),
                DB::raw('COALESCE(gf_exact.folio_no, gf_primary.folio_no) as folio_no'),
                'roomocc.roomno',
                'room_cat.name as room_type',
                'roomocc.adult',
                'roomocc.children',
                'roomocc.rackrate as roomrate',
                'roomocc.planamt',
                'roomocc.rrtaxinc',
                'plan_mast.name as plan_name',
                'roomocc.chkindate',
                'roomocc.chkintime',
                'roomocc.depdate',
                'roomocc.deptime',
                DB::raw('COALESCE(gf_exact.travelmode, gf_primary.travelmode) as travelmode'),
                DB::raw('COALESCE(gp_exact.id_proof, gp_primary.id_proof) as id_proof'),
                DB::raw('COALESCE(gp_exact.idproof_no, gp_primary.idproof_no) as idproof_no'),
                DB::raw('COALESCE(gp_exact.paymentMethod, gp_primary.paymentMethod) as paymentMethod'),
                DB::raw('COALESCE(sub_exact.name, sub_primary.name) as company'),
                DB::raw('COALESCE(st_exact.name, st_primary.name) as travel_agent'),
                DB::raw('COALESCE(bs_exact.name, bs_primary.name) as business_source'),
                'booking.BookedBy',
                'booking.RefBookNo',
                DB::raw('COALESCE(gp_exact.u_name, gp_primary.u_name) as u_name'),
                'roomocc.roomno as group_rooms',
                DB::raw('COALESCE(gf_exact.propertyid, gf_primary.propertyid) as propertyid'),
            ])
            ->leftJoin('guestfolio as gf_exact', function ($join) {
                $join->on('gf_exact.docid', '=', 'roomocc.docid')
                    ->on('gf_exact.sno1', '=', 'roomocc.sno1')
                    ->where('gf_exact.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('guestfolio as gf_primary', function ($join) {
                $join->on('gf_primary.docid', '=', 'roomocc.docid')
                    ->where('gf_primary.sno1', '=', 1)
                    ->where('gf_primary.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('guestprof as gp_exact', function ($join) {
                $join->on('gp_exact.guestcode', '=', 'gf_exact.guestprof')
                    ->on('gp_exact.sno1', '=', 'gf_exact.sno1');
            })
            ->leftJoin('guestprof as gp_primary', function ($join) {
                $join->on('gp_primary.guestcode', '=', 'gf_primary.guestprof')
                    ->where('gp_primary.sno1', '=', 1);
            })
            ->leftJoin('cities as c_exact', function ($join) {
                $join->on('c_exact.city_code', '=', 'gf_exact.city')
                    ->where('c_exact.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('cities as c_primary', function ($join) {
                $join->on('c_primary.city_code', '=', 'gf_primary.city')
                    ->where('c_primary.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('room_cat', function ($join) {
                $join->on('roomocc.roomcat', '=', 'room_cat.cat_code')
                    ->where('room_cat.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('plan_mast', function ($join) {
                $join->on('roomocc.plancode', '=', 'plan_mast.pcode')
                    ->where('plan_mast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('busssource as bs_exact', function ($join) {
                $join->on('gf_exact.busssource', '=', 'bs_exact.bcode')
                    ->where('bs_exact.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('busssource as bs_primary', function ($join) {
                $join->on('gf_primary.busssource', '=', 'bs_primary.bcode')
                    ->where('bs_primary.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('subgroup as sub_exact', function ($join) {
                $join->on('gf_exact.company', '=', 'sub_exact.sub_code')
                    ->where('sub_exact.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('subgroup as sub_primary', function ($join) {
                $join->on('gf_primary.company', '=', 'sub_primary.sub_code')
                    ->where('sub_primary.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('subgroup as st_exact', function ($join) {
                $join->on('gf_exact.travelagent', '=', 'st_exact.sub_code')
                    ->where('st_exact.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('subgroup as st_primary', function ($join) {
                $join->on('gf_primary.travelagent', '=', 'st_primary.sub_code')
                    ->where('st_primary.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('booking', function ($join) {
                $join->on('booking.docid', '=', 'gf_exact.bookingdocid');
            })
            ->where('roomocc.docid', $docid)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.propertyid', $this->propertyid)
            ->first();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.grcprintpage', [
            'data' => $data,
            'comp' => $company,
            'statename' => $statename
        ]);
    }

    public function printpurchbill(Request $request, $docid)
    {
        // return $docid;
        $purchaseData = DB::table('purch2 as P2')
            ->select([
                'P2.docid',
                'P2.vno',
                'P2.vdate',
                'P2.vtype as V_Type',
                'P2.qtyrec as Qty',
                'unitmast.name as Unit',
                'P2.itemrate',
                'P2.amount',
                'SG1.name as PartyName',
                'P1.partybillno',
                'P1.partybilldt',
                'P1.total',
                'P1.discper',
                'P1.discamt',
                'P1.addamt',
                'P1.dedamt',
                'P1.roundoff',
                'P1.netamt',
                'P1.partybilldt',
                'P1.delflag',
                'I.name as ItemName',
                'G.name as GodName',
                'P2.contradocid',
                'V.description',
                'SG.name as SaleAcName',
                'P1.gstno',
                DB::raw("IFNULL(SG1.conprefix, '') as ConPrefix"),
                DB::raw("IFNULL(SG1.conperSon, '') as ConPerSon"),
                DB::raw("CONCAT(IFNULL(LTRIM(RTRIM(SG1.address)), ''), ', ', IFNULL(cities.cityname, '')) as PartyAddress"),
                'P2.rate',
                DB::raw("IFNULL(P1.invoicetype, '') as InvoiceType"),
                DB::raw("IFNULL(P1.invoiceno, 0) as InvoiceNo"),
                'TS.Name as TaxStruct',
                'P1.payable',
                DB::raw("IFNULL(P1.remark, '') as Remark"),
                'I.LPurRate',
                'P2.mrno'
            ])
            ->leftJoin('purch1 as P1', 'P2.docid', '=', 'P1.docid')
            ->leftJoin('godown_mast as G', 'P2.godcode', '=', 'G.scode')
            ->leftJoin('itemmast as I', 'P2.item', '=', 'I.Code')
            ->leftJoin(DB::raw("(SELECT str_code, MAX(Name) as Name FROM taxstru GROUP BY str_code) as TS"), 'TS.str_code', '=', 'P2.taxstru')
            ->leftJoin('voucher_type as V', function ($join) {
                $join->on('P2.vtype', '=', 'V.v_type')
                    ->where('P2.propertyid', '=', $this->propertyid);
            })

            ->leftJoin('subgroup as SG', 'SG.sub_code', '=', 'P2.accode')
            ->leftJoin('unitmast', 'unitmast.ucode', '=', 'P2.unit')
            ->leftJoin('subgroup as SG1', 'SG1.sub_code', '=', 'P1.Party')
            ->leftJoin('cities', 'cities.city_code', '=', 'SG1.citycode')
            ->where('V.propertyid', $this->propertyid)
            ->where('P2.docid', $docid)
            ->groupBy('P2.item')
            ->get();

        // var_dump($purchaseData);
        // exit;

        $suntranData = DB::table('suntran')
            ->where('docid', $docid)
            ->where('propertyid', $this->propertyid)
            ->whereNot('amount', '0.00')
            ->orderBy('sno')
            ->get();

        // return $suntranData;

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.printpurchbill', [
            'purchaseData' => $purchaseData,
            'suntranData' => $suntranData,
            'comp' => $company,
            'statename' => $statename
        ]);
    }

    public function mrprinting(Request $request, $docid)
    {
        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->print == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ginData = DB::table('gin as G')
            ->select([
                'G.delflag',
                'G.docid',
                'G.vno as MRNo',
                'G.vdate as Date',
                'G.vtype',
                'P.name as PartyName',
                'G.remark',
                'G.porddocid',
                'G.porddate',
                'G.chalno as ChalanNo',
                'G.chaldate as ChakanDate',
                'G.meminvno as MemoInvNo',
                'G.meminvdate as InvoiceDate',
                'G.inspectedby as InspBy',
                'G.approvedby as ApprBy',
                'S.sno as Sno',
                'S.qtyiss',
                'S.qtyrec',
                'S.recdunit as Unit',
                'S.chalqty as ChalanQty',
                'S.rate as Rate',
                'S.amount as Amount',
                'S.recdqty as RecdQty',
                'S.rejqty as RejQty',
                'S.qtyrec as sStkQtyRec',
                'S.qtyiss as sStkQtyIss',
                'S.remarks as Remark',
                'I.name as ItemName',
                'V.description as Type',
            ])
            ->join('stock as S', 'S.docid', '=', 'G.docid')
            ->join('itemmast as I', 'S.item', '=', 'I.Code')
            ->join('subgroup as P', 'S.partycode', '=', 'P.sub_code')
            ->join('voucher_type as V', function ($join) {
                $join->on('G.vtype', '=', 'V.v_type')
                    ->where('V.propertyid', '=', $this->propertyid);
            })
            ->where('G.docid', $docid)
            ->where('G.propertyid', $this->propertyid)
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.mrprinting', [
            'ginData'   => $ginData,
            'comp'      => $company,
            'statename' => $statename,
        ]);
    }

    public function stockregister(Request $request)
    {
        $permission = revokeopen(161211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $godown = Depart::where('propertyid', $this->propertyid)->where('dcode', "PURC$this->propertyid")->get();

        $itemgrp = ItemGrp::where('property_id', $this->propertyid)->where('restcode', "PURC$this->propertyid")->where('activeyn', 'Y')->orderBy('name')->get();

        // return $itemgrp;

        return view('property.stockregister', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'godown' => $godown,
            'itemgrp' => $itemgrp
        ]);
    }

    // Fetch Godown By Store Type
    public function fetchGodownByStoreType(Request $request)
    {
        $storeType = $request->input('storetype');
        $godowns = []; // Initialize an empty array to store the godowns

        if ($storeType == 'main_store') {
            $value = 'PURC' . $this->propertyid;
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('dcode', 'LIKE', $value . '%')
                ->get();
        } elseif ($storeType == 'sub_store') {
            $value = 'Store';
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('nature', 'LIKE', $value . '%')
                ->get();
        } elseif ($storeType == 'house_keeping') {
            $value = 'House Keeping';
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('nature', 'LIKE', $value . '%')
                ->get();
        }

        return response()->json($godowns);
    }

    public function getItemsAndGroups(Request $request)
    {
        $itemType = $request->input('item_type');

        $types = ($itemType === 'All' || empty($itemType))
            ? ['Raw Material', 'Finish', 'Semi-Finish', 'Consumable', 'Store Item']
            : [$itemType];

        $groupIds = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', 'PURC' . $this->propertyid)
            ->whereIn('type', $types)
            ->pluck('code')
            ->toArray();

        $groups = DB::table('itemgrp')
            ->whereIn('code', $groupIds)
            ->select('code as id', 'name')
            ->orderBy('name')
            ->get();

        $items = DB::table('itemmast')
            ->where('Property_ID', $this->propertyid)
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->whereIn('ItemGroup', $groupIds)
            ->select('Code as id', 'Name as iname', 'ItemGroup as group_id')
            ->get();

        return response()->json([
            'groups' => $groups,
            'items' => $items
        ]);
    }

    public function getActualData(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allitems = $request->input('items');
        $godown = $request->input('godown');
        $godownCodes = !empty($godown) ? [$godown] : ['PURC' . $this->propertyid];

        // NOTE:
        // Many `stock.restcode` values are blank in this DB; joining on restcode would hide items
        // whenever there are no transactions in the selected date range (because the fallback list is empty).
        // Build the base item list from `itemmast` instead so selected items always appear.
        $ditems = DB::table('itemmast as I')
            ->select([
                'I.Code as item',
                'I.Name as ItemName',
                'u.name as unitname',
                'ui.name as issueunitname'
            ])
            ->leftJoin('unitmast as u', function ($join) {
                $join->on('u.ucode', '=', 'I.Unit')
                    ->where('u.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('unitmast as ui', function ($join) {
                $join->on('ui.ucode', '=', 'I.IssueUnit')
                    ->where('ui.propertyid', '=', $this->propertyid);
            })
            ->where('I.Property_ID', $this->propertyid)
            ->where('I.ItemType', 'Store')
            ->whereIn('I.Code', $allitems)
            ->orderBy('I.Name')
            ->get();

        // 2. Initialize reportdata with items
        $reportdata = [];
        foreach ($ditems as $row) {
            $reportdata[$row->item] = [
                'item'        => $row->item,
                'itemname'    => $row->ItemName,
                'unitname'    => trim(($row->unitname ?? '') . ' / ' . ($row->issueunitname ?? '')),
                'opqty'       => 0.000,
                'opamt'       => 0,
                'opissuedqty' => 0.000,
                'opissuedamt' => 0,
                'transactions' => []
            ];
        }

        // 3. Opening Received
        $openingReceived = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.recdqty) as OpQty'),
                DB::raw('SUM(S.amount) as OpAmt'),
                'S.item'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store')
                    ->where('I.Property_ID', '=', $this->propertyid);
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)

            ->whereIn('S.godowncode', $godownCodes)
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'STOP', 'MRE', 'BKREC', 'KSREC', 'KMREC', 'RQI'])
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.item', $allitems)
            ->groupBy('S.item')
            ->havingRaw('SUM(S.recdqty) > 0')
            ->get();

        foreach ($openingReceived as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opqty'] = $row->OpQty;
            $reportdata[$row->item]['opamt'] = $row->OpAmt;
        }

        // 4. Opening Issued
        // NOTE: This must be calculated on `issqty` (not `recdqty`) and up to *before* $fromdate.
        $openingIssued = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.issqty) as OpQty'),
                DB::raw('SUM(S.amount) as OpAmt'),
                'S.item'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.Property_ID', '=', $this->propertyid)
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.godowncode', $godownCodes)
            ->whereIn('VT.ncat', ['PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS'])
            ->whereIn('S.item', $allitems)
            ->groupBy('S.item')
            ->havingRaw('SUM(S.issqty) > 0')
            ->get();

        foreach ($openingIssued as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => $row->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opissuedqty'] = $row->OpQty;
            $reportdata[$row->item]['opissuedamt'] = $row->OpAmt;
        }

        // 5. Transactions
        $transactions = DB::table('stock as S')
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                'S.amount',
                'S.item',
                'I.Name',
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                    THEN S.recdqty ELSE 0 
                END as QtyRec
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                    THEN S.issqty ELSE 0 
                END as QtyIss
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'PRR', 'PRC', 'MRE') 
                    THEN SG.name 
                    ELSE D.name 
                END as Particulars
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                    THEN 'A' 
                    WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                    THEN 'B' 
                    ELSE 'C' 
                END as SeqNo
            ")
            ])
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store')
                    ->where('I.Property_ID', '=', $this->propertyid);
            })
            ->leftJoin('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
            ->leftJoin('stock as S1', function ($join) {
                $join->on('S.contradocid', '=', 'S1.docid')
                    ->on('S.contrasno', '=', 'S1.sno');
            })
            ->leftJoin('godown_mast as D', 'S1.godowncode', '=', 'D.scode')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.godowncode', $godownCodes)
            ->where('S.delflag', '!=', 'Y')
            ->where('I.ItemType', 'Store')
            ->whereIn('I.Code', $allitems)
            ->orderBy('S.item')
            ->orderBy('S.vdate')
            ->orderBy('SeqNo')
            ->orderBy('S.vtype')
            ->orderBy('S.vno')
            ->get();

        foreach ($transactions as $txn) {
            $itemcode = $txn->item;
            if (!isset($reportdata[$itemcode])) {
                $reportdata[$itemcode] = [
                    'item' => $itemcode,
                    'itemname' => $txn->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }

            $reportdata[$itemcode]['transactions'][] = [
                'vdate'      => $txn->vdate,
                'vtype'      => $txn->vtype,
                'vno'        => $txn->vno,
                'amount'     => (float) $txn->amount,
                'qtyrec'     => (float) $txn->QtyRec,
                'qtyiss'     => (float) $txn->QtyIss,
                'particular' => $txn->Particulars,
                'seqno'      => $txn->SeqNo,
                'unitname'    => $reportdata[$itemcode]['unitname']
            ];
        }

        return response()->json([
            'reportdata' => array_values($reportdata)
        ]);
    }

    public function getLprData(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allitems = $request->input('items', []);
        $godown = $request->input('godown');
        $godownCodes = !empty($godown) ? [$godown] : ['PURC' . $this->propertyid];

        if (empty($allitems)) {
            return response()->json(['reportdata' => []]);
        }

        // 1. Fetch all distinct items with unit names
        $ditems = DB::table('stock as S')
            ->distinct()
            ->select([
                'S.item',
                'I.Name as ItemName',
                'u.name as unitname',
                'ui.name as issueunitname'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('unitmast as u', function ($join) {
                $join->on('u.ucode', '=', 'I.Unit')
                    ->where('u.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('unitmast as ui', function ($join) {
                $join->on('ui.ucode', '=', 'I.IssueUnit')
                    ->where('ui.propertyid', '=', $this->propertyid);
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.godowncode', $godownCodes)
            ->whereIn('S.item', $allitems)
            ->whereIn('VT.ncat', [
                'PBC',
                'PBR',
                'PRR',
                'PRC',
                'STOP',
                'MRE',
                'RQI',
                'RQR',
                'BKREC',
                'BKISS',
                'KSREC',
                'KSISS',
                'KMREC',
                'KMISS'
            ])
            ->orderBy('I.Name')
            ->get();

        // 2. Initialize reportdata with items
        $reportdata = [];
        foreach ($ditems as $row) {
            $reportdata[$row->item] = [
                'item'        => $row->item,
                'itemname'    => $row->ItemName,
                'unitname'    => trim(($row->unitname ?? '') . ' / ' . ($row->issueunitname ?? '')),
                'opqty'       => 0.000,
                'opamt'       => 0,
                'opissuedqty' => 0.000,
                'opissuedamt' => 0,
                'transactions' => []
            ];
        }

        // 3. Opening Received (using LPurRate)
        $openingReceived = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.recdqty) as OpQty'),
                DB::raw('SUM(S.recdqty * I.LPurRate) as OpAmt'),
                'S.item'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.godowncode', $godownCodes)
            ->whereIn('S.item', $allitems)
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'STOP', 'MRE', 'BKREC', 'KSREC', 'KMREC', 'RQI'])
            ->groupBy('S.item')
            ->havingRaw('SUM(S.recdqty) > 0')
            ->get();

        foreach ($openingReceived as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opqty'] = $row->OpQty;
            $reportdata[$row->item]['opamt'] = $row->OpAmt;
        }

        // 4. Opening Issued (using LPurRate)
        $openingIssued = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.issqty) as OpQty'),
                DB::raw('SUM(S.issqty * I.LPurRate) as OpAmt'),
                'S.item',
                'I.Name'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.godowncode', $godownCodes)
            ->whereIn('S.item', $allitems)
            ->whereIn('VT.ncat', ['PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS'])
            ->groupBy('S.item', 'I.Name')
            ->havingRaw('SUM(S.issqty) > 0')
            ->get();

        foreach ($openingIssued as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => $row->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opissuedqty'] = $row->OpQty;
            $reportdata[$row->item]['opissuedamt'] = $row->OpAmt;
        }

        // 5. Transactions (using LPurRate)
        $transactions = DB::table('stock as S')
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN S.recdqty * I.LPurRate
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN S.issqty * I.LPurRate
                        ELSE 0 
                    END as amount
                "),
                'S.item',
                'I.Name',
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN S.recdqty ELSE 0 
                    END as QtyRec
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN S.issqty ELSE 0 
                    END as QtyIss
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'PRR', 'PRC', 'MRE') 
                        THEN SG.name 
                        ELSE D.name 
                    END as Particulars
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN 'A' 
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN 'B' 
                        ELSE 'C' 
                    END as SeqNo
                ")
            ])
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->leftJoin('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
            ->leftJoin('stock as S1', function ($join) {
                $join->on('S.contradocid', '=', 'S1.docid')
                    ->on('S.contrasno', '=', 'S1.sno');
            })
            ->leftJoin('godown_mast as D', 'S1.godowncode', '=', 'D.scode')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.godowncode', $godownCodes)
            ->where('I.ItemType', 'Store')
            ->whereIn('S.item', $allitems)
            ->where('S.delflag', '!=', 'Y')
            ->orderBy('S.item')
            ->orderBy('S.vdate')
            ->orderBy('SeqNo')
            ->orderBy('S.vtype')
            ->orderBy('S.vno')
            ->get();

        foreach ($transactions as $txn) {
            $itemcode = $txn->item;
            if (!isset($reportdata[$itemcode])) {
                $reportdata[$itemcode] = [
                    'item' => $itemcode,
                    'itemname' => $txn->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }

            $reportdata[$itemcode]['transactions'][] = [
                'vdate'      => $txn->vdate,
                'vtype'      => $txn->vtype,
                'vno'        => $txn->vno,
                'amount'     => (float) $txn->amount,
                'qtyrec'     => (float) $txn->QtyRec,
                'qtyiss'     => (float) $txn->QtyIss,
                'particular' => $txn->Particulars,
                'seqno'      => $txn->SeqNo
            ];
        }

        return response()->json([
            'reportdata' => array_values($reportdata)
        ]);
    }

    public function fetchValuationData(Request $request)
    {
        $valuation = $request->input('valuation');

        if ($valuation == 'Actual') {
            return $this->getActualData($request);
        } elseif ($valuation == 'LastPurchaseRate') {
            return $this->getLprData($request);
        } else {
            return response()->json(['error' => 'Invalid valuation valuation'], 400);
        }
    }

    public function openbanquetmast()
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('server_mast', 'Banquet Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('functiontype')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        return view('property.waiter2', ['data' => $data]);
    }

    public function printEvents(Request $request)
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('functiontype')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printevents', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('events.pdf');
    }

    public function exportEvents(Request $request)
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company     = Companyreg::where('propertyid', $this->propertyid)->first();
        $companyName = $company->comp_name ?? '';
        $export = new \App\Exports\EventsExport($this->propertyid, $companyName);
        return $export->download();
    }
    public function getnctypenames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('nctype_mast')
            ->where('nctype', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->nctype . '</a></li>';
            }
            $output .= '</ul>';
            return $output;
        } else {
            return '';
        }
    }

    public function submitbanquetmaster(Request $request)
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'functiontype';
        $data = $request->except('_token');
        $code = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('code');

        if ($code == null) {
            $code = 1;
        } else {
            $code = intval(substr($code, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Banquet Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'code' => $code . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Banquet Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Banquet Master!' . $e->getMessage());
        }
    }

    public function deletebanquetmast(Request $request, $sn, $code)
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('functiontype')
                ->where('propertyid', $this->propertyid)
                ->where('code', $code)
                ->where('id', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'Banquet Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Banquet Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updateBanquetmaststore(Request $request)
    {
        $permission = revokeopen(121811);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'functiontype';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('code', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Banquet Master Name Already Exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                //'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('code', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);
            return back()->with('success', 'Banquet Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function openvenuefeatures()
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('venuefeatures', 'Venue Features Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('venuefeatures')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        return view('property.venuefeatures', ['data' => $data]);
    }

    public function printVenueFeatures(Request $request)
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('venuefeatures')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printvenuefeatures', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('venue-features.pdf');
    }

    public function exportVenueFeatures(Request $request)
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company     = Companyreg::where('propertyid', $this->propertyid)->first();
        $companyName = $company->comp_name ?? '';
        $export = new \App\Exports\VenueFeaturesExport($this->propertyid, $companyName);
        return $export->download();
    }
    public function submitvenuefeatures(Request $request)
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'venuefeatures';
        $data = $request->except('_token');
        $code = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('code');

        if ($code == null) {
            $code = 1;
        } else {
            $code = intval(substr($code, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Venue Feature Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'code' => $code . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Venue Features Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Venue Features!' . $e->getMessage());
        }
    }

    public function deletevenuefeatures(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('venuefeatures')
                ->where('propertyid', $this->propertyid)
                ->where('code', $ucode)
                ->where('id', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'Venue Features Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Venue Features!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updatevenuefeaturesstore(Request $request)
    {
        $permission = revokeopen(121812);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'venuefeatures';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('code', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Venue Features Name Already Exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                //'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('code', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);
            return back()->with('success', 'Venue Features Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function openitemgroups(Request $request)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('itemgrp', 'Menu Group Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $menugroupdata = DB::table('itemgrp')
            ->select('itemgrp.*', 'depart.name as departname', 'depart.dcode')
            ->join('depart', 'depart.dcode', '=', 'itemgrp.restcode')
            ->where('itemgrp.property_id', $this->propertyid)
            ->where('itemgrp.restcode', 'BANQ' . $this->propertyid)
            ->orderBy('itemgrp.name', 'ASC')
            ->get();

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        return view('property.igroups', ['data' => $menugroupdata, 'departdata' => $departdata]);
    }

    public function printItemGroups(Request $request)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('itemgrp')->select('itemgrp.*', 'depart.name as departname')->join('depart', 'depart.dcode', '=', 'itemgrp.restcode')->where('itemgrp.property_id', $this->propertyid)->where('itemgrp.restcode', 'BANQ' . $this->propertyid)->orderBy('itemgrp.name', 'ASC')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printitemgroups', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('item-groups.pdf');
    }

    public function exportItemGroups(Request $request)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\ItemGroupsExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    // ===== ITEM GROUP (Inventory/Purchase) =====
    public function printItemGroup(Request $request)
    {
        $permission = revokeopen(121613);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('itemgrp')
            ->select('itemgrp.*', 'depart.name as departname', 'depart.dcode')
            ->join('depart', 'depart.dcode', '=', 'itemgrp.restcode')
            ->where('itemgrp.property_id', $this->propertyid)
            ->where('itemgrp.restcode', 'PURC' . $this->propertyid)
            ->orderBy('itemgrp.name', 'ASC')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.itemgroup_print', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('item-group.pdf');
    }

    public function exportItemGroup(Request $request)
    {
        $permission = revokeopen(121613);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\ItemGroupExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    // ===== ITEM CATEGORY (Inventory/Purchase) =====
    public function printItemCategory(Request $request)
    {
        $permission = revokeopen(121614);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('itemcatmast')
            ->select('itemcatmast.*', 'depart.name as departname', 'taxstru.name as taxstruname', 'subgroup.name as subgrpname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemcatmast.restcode')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'itemcatmast.AcCode')
            ->where('itemcatmast.propertyid', $this->propertyid)
            ->where('itemcatmast.RestCode', 'PURC' . $this->propertyid)
            ->groupBy('itemcatmast.Code')
            ->orderBy('itemcatmast.name', 'ASC')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.itemcategory_print', ['company' => $company, 'data' => $data])->setPaper('a4', 'landscape');
        return $pdf->stream('item-category.pdf');
    }

    public function exportItemCategory(Request $request)
    {
        $permission = revokeopen(121614);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\ItemCategoryExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    // ===== ITEM ENTRY (Inventory/Purchase) =====
    public function printItemEntery(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('itemmast')
            ->select(
                'itemmast.Name as itemname',
                'itemmast.Code',
                'itemmast.PurchRate',
                'itemmast.ActiveYN',
                'unitmast.name as unitname',
                'itemgrp.Name as itemgrpname',
                'itemcatmast.Name as itemcatname',
                'depart_r.Name as Restaurant'
            )
            ->leftJoin('itemgrp', function ($j) {
                $j->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($j) {
                $j->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($j) {
                $j->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($j) {
                $j->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', $this->propertyid);
            })
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.RestCode', 'PURC' . $this->propertyid)
            ->groupBy('itemmast.Code')
            ->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.itementery_print', ['company' => $company, 'data' => $data])->setPaper('a4', 'landscape');
        return $pdf->stream('item-entry.pdf');
    }

    public function exportItemEntery(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\ItemEnteryExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    // ===== OPENING STOCK =====
    public function printOpeningStock(Request $request)
    {
        $permission = revokeopen(121615);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('stock')
            ->select(
                'stock.docid',
                'stock.vno',
                'stock.vdate',
                'godown_mast.name as subname',
                DB::raw('COUNT(stock.item) as totalitem')
            )
            ->leftJoin('godown_mast', 'godown_mast.scode', '=', 'stock.godowncode')
            ->where('stock.propertyid', $this->propertyid)
            ->where('stock.vtype', 'STOP')
            ->groupBy('stock.docid', 'stock.vno', 'stock.vdate', 'godown_mast.name')
            ->orderBy('stock.vno')
            ->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.openingstock_print', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('opening-stock.pdf');
    }

    public function exportOpeningStock(Request $request)
    {
        $permission = revokeopen(121615);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\OpeningStockExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    function submititemgroups(Request $request)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'name' => 'required',
            'type' => 'required',
        ];
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', 'BANQ' . $this->propertyid)
            ->where('name', $request->input('name'))
            ->where('property_id', $this->propertyid)
            ->first();

        if ($existingname) {
            return back()->with('error', 'Item Group already exists!');
        }

        $groupcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('code');
        $groupcode = substr($groupcode, 0, -$this->ptlngth);
        if (empty($groupcode)) {
            $groupcode = 1 . $this->propertyid;
        } else {
            $groupcode = $groupcode + 1 . $this->propertyid;
        }

        try {
            $insertdata = [
                'code' => $groupcode,
                'name' => $request->input('name'),
                'property_id' => $this->propertyid,
                'restcode' => 'BANQ' . $this->propertyid,
                'type' => $request->type,
                'cattype' => '',
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'activeyn' => $request->input('activeyn'),
            ];

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Item Group Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item Group!' . $e->getMessage());
        }
    }

    public function updateitemgroups(Request $request)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', 'BANQ' . $this->propertyid)
            ->where('name', $request->input('upname'))
            ->where('property_id', $this->propertyid)
            ->where('code', '!=', $request->input('upcode'))
            ->first();

        if ($existingname) {
            return back()->with('error', 'Item Group already exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('upname'),
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'activeyn' => $request->input('upactiveyn'),
            ];

            DB::table($tableName)
                ->where('property_id', $this->propertyid)
                ->where('code', $request->input('upcode'))
                ->update($updatedata);

            return back()->with('success', 'Item Group Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item Group!');
        }
    }

    public function deletemenugroup(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121815);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $chkitemmast = ItemMast::where('Property_ID', $this->propertyid)->where('ItemGroup', base64_decode($request->input('ucode')))->first();
            if (!is_null($chkitemmast)) {
                return response()->json([
                    'status' => 'info',
                    'message' => 'Group used in Menu Item'
                ]);
            }
            $deletingrec = DB::table('itemgrp')
                ->where('property_id', $this->propertyid)
                ->where('code', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deletingrec) {
                return response()->json(['message' => 'Menu Group Deleted Successfully']);
            } else {
                return response()->json(['message' => 'Unable to Delete Menu Group!'], 500);
            }
        } catch (Exception $e) {
            return response()->json(['message' => 'Unable to Delete Menu Group!'], 500);
        }
    }

    public function openvenuemaster()
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('venuemast', 'Venue Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('venuemast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        return view('property.venuemaster', ['data' => $data]);
    }

    public function printVenueMaster(Request $request)
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('venuemast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printvenuemaster', ['company' => $company, 'data' => $data])->setPaper('a4', 'landscape');
        return $pdf->stream('venue-master.pdf');
    }

    public function exportVenueMaster(Request $request)
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'You have no permission to execute this functionality!');
        }
        $company     = Companyreg::where('propertyid', $this->propertyid)->first();
        $companyName = $company->comp_name ?? '';
        $export = new \App\Exports\VenueMasterExport($this->propertyid, $companyName);
        return $export->download();
    }
    public function submitvenuemaster(Request $request)
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'venuemast';
        $code = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('code');

        if ($code == null) {
            $code = 1;
        } else {
            $code = intval(substr($code, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $request->name)
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Venue Master Name already exists!');
        }

        if (!empty($request->file('picpath'))) {
            $itempic = $request->file('picpath');
            $itempicture = 'Venue Picture' . $this->propertyid . '.' . $itempic->getClientOriginalExtension();
            $folderPathp = 'public/property/venuepicture';
            Storage::makeDirectory($folderPathp);
            Storage::putFileAs($folderPathp, $itempic, $itempicture);
        } else {
            $itempicture = null;
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'code' => $code . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'name' => $request->name,
                'shortname' => $request->input('shortname') ?? '',
                'dimension' => $request->input('dimension') ?? '',
                'activeYN' => $request->activeYN,
                'picpath' => $itempicture ?? '',
            ];

            DB::table($tableName)->insert($insertdata);
            return back()->with('success',  'Venue Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Venue master!' . $e->getMessage());
        }
    }

    public function deletevenuemaster(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('venuemast')
                ->where('propertyid', $this->propertyid)
                ->where('code', $ucode)
                ->where('id', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'Venue Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Venue master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updatevenuemasterstore(Request $request)
    {
        $permission = revokeopen(121813);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'venuemast';

        // return $request->input('updatecode');
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('code', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        $existingshortname = DB::table($tableName)
            ->where('shortname', $request->input('updateshortname'))
            ->whereNot('code', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Venue Master Name Already Exists!');
        }

        if ($existingshortname) {
            return back()->with('error', 'Venue Master Short Name Already Exists!');
        }

        if (!empty($request->file('uppicpath'))) {
            $itempic = $request->file('uppicpath');
            $itempicture = 'Venue Picture' . $this->propertyid . '.' . $itempic->getClientOriginalExtension();
            $folderPathp = 'public/property/venuepicture';
            Storage::makeDirectory($folderPathp);
            Storage::putFileAs($folderPathp, $itempic, $itempicture);
        } else {
            $itempicture = $request->input('olditemimage');
        }

        // return $request->input('updatecode');
        // return $request->input('updatename');

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                //'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
                'shortname' => $request->input('updateshortname') ?? '',
                'dimension' => $request->input('updatedimension') ?? '',
                'picpath' => $itempicture ?? '',
            ];
            DB::table($tableName)
                ->where('code', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);
            return back()->with('success', 'Venue Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }


    public function openbanqsundrysetting(Request $request)
    {
        $permission = revokeopen(121818);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtypes = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'BANQ' . $this->propertyid)->first();
        $data = DB::table('sundrytype')
            ->select('sundrytype.*', 'depart.name AS departname')
            ->leftJoin('depart', 'depart.dcode', '=', 'sundrytype.vtype')
            ->where('sundrytype.propertyid', '=', $this->propertyid)
            ->where('sundrytype.vtype', 'BANQ' . $this->propertyid)
            ->groupBy('sundrytype.vtype')
            ->get();

        return view('property.banqsundrysetting', [
            'vtypes' => $vtypes,
            'data' => $data
        ]);
    }

    public function banqsundrysettingsubmit(Request $request)
    {
        $permission = revokeopen(121818);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'applicablefrom' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'BANQ' . $this->propertyid)->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'BANQ' . $this->propertyid)->delete();
        }

        $prefixes = array('sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan');
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => 'BANQ' . $this->propertyid,
                    'appdate' => $request->input('applicablefrom'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (!empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }


            if (!$isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }
        return back()->with('message', 'Banquet Sundry Setting Submitted!');
    }

    public function updatebanquetsundrysetting(Request $request)
    {
        $permission = revokeopen(121818);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = base64_decode($request->input('vtype'));
        $data = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $vtype)->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $vtype)->where('field_type', 'C')
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();
        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $sundrytype = DB::table('sundrytypefix')->where('propertyid', $this->propertyid)->orderBy('id')->get();
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $vtype)->first();
        return view('property.banquetsundrysettingupdate', [
            'data' => $data,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
            'sundrytype' => $sundrytype,
            'depart' => $depart
        ]);
    }

    public function updatebanqsundry(Request $request)
    {
        $permission = revokeopen(121818);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'appdate' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->delete();
        }

        $prefixes = array('sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan');
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => $request->input('oldvtype'),
                    'appdate' => $request->input('appdate'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (!empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }


            if (!$isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }
        return redirect('banquetbillsundrysetting')->with('success', 'Banquet Sundry Setting Updated!');
    }

    public function openmenuitems(Request $request)
    {
        $permission = revokeopen(121817);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $itemmast = ItemMast::select(
            'itemmast.Name as itemname',
            'itemmast.Code',
            'itemmast.id',
            'itemmast.DispCode',
            'itemmast.Property_ID',
            'itemmast.HSNCode',
            'itemmast.DiscApp',
            'itemmast.RateEdit',
            'itemmast.ActiveYN',
            'unitmast.name as unitname',
            'itemgrp.Name as itemgrpname',
            'itemcatmast.Name As itemcatname',
            'itemmast.Dispcode',
            'depart_r.Name as Restaurant',
            'depart_r.dcode',
            'itemrate.Rate',
            'itemmast.ActiveYN',
            'itemmast.NType',
            'itemmast.Specification',
            'itemmast.RestCode',
            'depart_k.name as kitchenname'
        )
            ->leftJoin('itemgrp', function ($join) {
                $join->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($join) {
                $join->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_k', function ($join) {
                $join->on('depart_k.dcode', '=', 'itemmast.Kitchen')
                    ->where('depart_k.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                    ->where('itemrate.Property_ID', '=', $this->propertyid);
            })
            ->where('itemmast.Property_ID', '=', $this->propertyid)
            ->where('itemmast.RestCode', '=', 'BANQ' . $this->propertyid)
            ->groupBy('itemmast.Code')
            ->groupBy('itemmast.RestCode')
            ->get();


        $itemrate = DB::table('itemrate')
            ->where('Property_ID', $this->propertyid)
            ->where('itemrate.RestCode', '=', 'BANQ' . $this->propertyid)
            ->orderBy('ItemCode', 'ASC')
            ->get();

        $itemgrp = DB::table('itemgrp')->where('restcode', 'BANQ' . $this->propertyid)->where('property_id', $this->propertyid)->orderBy('name', 'ASC')->get();
        // $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $itemnames = DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $unit = DB::table('unitmast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $itemcatmast = DB::table('itemcatmast')->where('RestCode', 'BANQ' . $this->propertyid)->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $kitchen = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'Kitchen')->orderBy('name', 'ASC')->get();
        return view('property.menuitems', [
            'itemmast' => $itemmast,
            'itemrate' => $itemrate,
            'kitchen' => $kitchen,
            //'restaurentdata' => $restaurentdata,
            'itemgrp' => $itemgrp,
            'itemnames' => $itemnames,
            'unit' => $unit,
            'itemcatmast' => $itemcatmast
        ]);
    }
    public function getcurfinyear()
    {
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
        $formatted_currfinancial = date('Y-m-d', strtotime($currfinancial . '-01-04'));
        return json_encode($formatted_currfinancial);
    }

    public function getitemdata(Request $request)
    {
        $itemdata = DB::table('items')
            ->where('propertyid', $this->propertyid)
            ->where('icode', $request->input('icode'))
            ->first();
        return json_encode($itemdata);
    }

    public function getupdatemenuitems(Request $request)
    {
        $permission = revokeopen(121817);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $itemdata = DB::table('itemmast')
            ->select('itemmast.*', 'itemrate.Rate', 'itemrate.AppDate')
            ->join('itemrate', 'itemrate.ItemCode', '=', 'itemmast.Code')
            ->where('itemmast.property_id', $this->propertyid)
            ->where('itemmast.Code', $request->input('code'))
            ->where('itemmast.RestCode', '=', 'BANQ' . $this->propertyid)
            // ->where('itemmast.RestCode', $request->input('restcode'))
            ->first();
        // return $itemdata;
        // $itemgrp = $itemdata->ItemGroup;
        // $restcode = $itemdata->RestCode;
        $restcode = 'BANQ' . $this->propertyid;
        $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $restcode)->orderBy('name')->get();
        $itemcats = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $restcode)->orderBy('Name')->get();

        $data = [
            'itemgrps' => $itemgrps,
            'itemdata' => $itemdata,
            'itemcats' => $itemcats,
        ];
        return json_encode($data);
    }


    public function restxhr(Request $request)
    {
        $restcode = 'BANQ' . $this->propertyid;
        $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $restcode)->orderBy('name')->get();
        $itemcats = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $restcode)->orderBy('Name')->get();

        $data = [
            'itemgrps' => $itemgrps,
            'itemcats' => $itemcats,
        ];
        return json_encode($data);
    }

    public function submitmenuitems(Request $request)
    {
        $permission = revokeopen(121817);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'name' => 'required',
            'restcode' => 'required',
            'icode' => 'required',
            'unit' => 'required',
            'itemcatmast' => 'required',
            'itemgrp' => 'required',
            'kitchen' => 'required',
            'rateedit' => 'required',
        ];
        $tableName = 'itemmast';

        // $existingcode = DB::table($tableName)
        //     ->where('Property_ID', $this->propertyid)
        //     ->where('DispCode', $request->input('itemcode'))
        //     ->where('RestCode', $request->input('restcode'))
        //     ->first();
        // $maxcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('Code');
        // $code = ($maxcode === null) ? $this->propertyid . '1' : ($code = $this->propertyid . substr($maxcode, $this->ptlngth) + 1);

        // if ($existingcode) {
        //     return response()->json(['message' => 'Item Code already exists!'], 500);
        // }

        $existingname = DB::table($tableName)
            ->where('Property_ID', $this->propertyid)
            ->where('Code', $request->input('itemname'))
            //->where('RestCode', $request->input('restcode'))
            ->where('RestCode', '=', 'BANQ' .  $this->propertyid)

            ->first();

        if ($existingname) {
            return back()->with('error', 'Item Name already exists!');
        }


        $itemname = DB::table('items')->where('propertyid', $this->propertyid)->where('icode', $request->input('itemname'))->first();
        $restcode = 'BANQ' . $this->propertyid;
        try {
            $insertdata = [
                'Code' => $request->input('itemname'),
                'Name' => $itemname->name,
                'property_id' => $this->propertyid,
                'RestCode' => $restcode,
                'ItemGroup' => $request->input('itemgrp'),
                'dishtype' => '',
                'favourite' => '',
                'PurchRate' => '0',
                'MinStock' => '0',
                'MaxStock' => '0',
                'ReStock' => '0',
                'LPurRate' => '0',
                'LPurDate' => null,
                'DispCode' => $request->input('itemcode'),
                'ConvRatio' => '0',
                'IssueUnit' => '',
                'Specification' => $request->input('specification') ?? '',
                'LabelName' => '',
                'LabelQty' => '',
                'LabelRemark1' => '',
                'LabelRemark2' => '',
                'LabelRemark3' => '',
                'LabelRemark4' => '',
                'ItemType' => '',
                'NType' => '',
                'iempic' => $request->input('itempic') ?? '',
                'Unit' => $request->input('unit'),
                'RateEdit' => $request->input('rateedit'),
                'ItemCatCode' => $request->input('itemcatmast'),
                'BarCode' => '',
                'Type' => 'Finish',
                'HSNCode' => $request->input('hsncode') ?? '',
                'DiscApp' => $request->input('discappl'),
                'SChrgApp' => '',
                'RateIncTax' => '',
                'Kitchen' => $request->input('kitchen'),
                'created_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
                'ActiveYN' => $request->input('activeyn'),
            ];

            DB::table($tableName)->insert($insertdata);

            $itemratedata = [
                'Property_ID' => $this->propertyid,
                'ItemCode' => $request->input('itemname'),
                'RestCode' => $restcode,
                //'AppDate' => $request->input('applicabldate'),
                'Rate' => $request->input('salerate'),
                'Party' => '',
                'created_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
            ];

            DB::table('itemrate')->insert($itemratedata);

            return back()->with('success', 'Item Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item!' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function updatemenuitems(Request $request)
    {
        $permission = revokeopen(121817);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'upname' => 'required',
            'uprestcode' => 'required',
            'upicode' => 'required',
            'upunit' => 'required',
            'upitemcatmast' => 'required',
            'upitemgrp' => 'required',
            'upkitchen' => 'required',
            'uprateedit' => 'required',
        ];
        $tableName = 'itemmast';

        // $existingname = DB::table($tableName)
        //     ->where('Property_ID', $this->propertyid)
        //     ->where('itemcode', $request->input('upitemname'))
        //     ->where('Code', '!=', $request->input('upcode'))
        //     ->where('RestCode', $request->input('uprestcode'))
        //     ->first();

        // if ($existingname) {
        //     return response()->json(['message' => 'Item Name already exists!'], 500);
        // }

        // $itemname = DB::table('items')->where('propertyid', $this->propertyid)->where('icode', $request->input('upcode'))->first();

        try {
            $updatedata = [
                // 'Name' => $itemname->name,
                // 'itemcode' => $request->input('upitemname'),
                'RestCode' => $request->input('uprestcode'),
                'ItemGroup' => $request->input('upitemgrp'),
                'Unit' => $request->input('upunit'),
                'RateEdit' => $request->input('uprateedit'),
                'dishtype' => $request->input('updishtype'),
                'Specification' => $request->input('upspecification') ?? '',
                'favourite' => '',
                'ItemCatCode' => $request->input('upitemcatmast'),
                //'BarCode' => $request->input('upbarcode'),
                'HSNCode' => $request->input('uphsncode') ?? '',
                'DiscApp' => $request->input('updiscappl'),
                'SChrgApp' => $request->input('upservicecharge'),
                //'RateIncTax' => $request->input('uprateinctax'),
                'PurchRate' => $request->upsalerate,
                'Kitchen' => $request->input('upkitchen'),
                'u_updaedt' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'e',
                'ActiveYN' => $request->input('upactiveyn'),
            ];

            // return $request->input('upcode');

            DB::table($tableName)
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $request->input('upcode'))
                ->where('RestCode', $request->input('uprestcode'))
                ->update($updatedata);

            $itemratedata = [
                'Property_ID' => $this->propertyid,
                'RestCode' => $request->input('uprestcode'),
                'AppDate' => $request->input('upapplicabldate'),
                'Rate' => $request->input('upsalerate'),
                'Party' => '',
                'updated_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'e',
            ];

            DB::table('itemrate')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCode', $request->input('upcode'))
                ->where('RestCode', $request->input('uprestcode'))
                ->update($itemratedata);

            return back()->with('success', 'Item Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item!' . $e);
        }
    }

    public function deletemenuitems(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121817);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {

            $chkkot = Kot::where('propertyid', $this->propertyid)->where('item', $ucode)->first();
            if (!is_null($chkkot)) {
                return back()->with('error', 'Item used in KOT');
            }

            $chkstock = Stock::where('propertyid', $this->propertyid)->where('item', $ucode)->first();
            if (!is_null($chkstock)) {
                return back()->with('error', 'Item used in stock');
            }

            $delete1 = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('Code', base64_decode($request->input('ucode')))
                ->delete();

            $delete2 = DB::table('itemrate')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCode', base64_decode($request->input('ucode')))
                ->delete();

            if ($delete1) {
                return response()->json(['message' => 'Item Deleted Successfully']);
            } else {
                return response()->json(['message' => 'Unable to Delete Item!'], 500);
            }
        } catch (Exception $e) {
            return response()->json(['message' => 'Unable to Delete Item!'], 500);
        }
    }


    public function getmaxitemcode(Request $request)
    {
        $maxcode = DB::table('itemmast')->where('Property_ID', $this->propertyid)->max('DispCode');
        $code = ($maxcode === null) ? '1' : ($code = $maxcode + 1);
        return json_encode($code);
    }

    function submitmenugroup(Request $request)
    {
        $validate = [
            'name' => 'required',
            'type' => 'required',
        ];
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            //->where('restcode', $request->input('restcode'))
            ->where('restCode', '=', 'BANQ' . $this->propertyid)
            ->where('name', $request->input('name'))
            ->where('property_id', $this->propertyid)
            ->first();

        if ($existingname) {
            return response()->json(['message' => 'Menu Group already exists!'], 500);
        }

        $groupcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('code');
        $groupcode = substr($groupcode, 0, -$this->ptlngth);
        if (empty($groupcode)) {
            $groupcode = 1 . $this->propertyid;
        } else {
            $groupcode = $groupcode + 1 . $this->propertyid;
        }

        // $paydata = Paycharge::select('paycharge.*', 'roomocc.chkintime', 'roomocc.chkindate', '')

        try {
            $insertdata = [
                'code' => $groupcode,
                'name' => $request->input('name'),
                'property_id' => $this->propertyid,
                'restcode' => $request->input('restcode'),
                'type' => 'Finish',
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'activeyn' => $request->input('activeyn'),
            ];

            DB::table($tableName)->insert($insertdata);

            return response()->json(['message' => 'Menu Group Inserted successfully!']);
        } catch (Exception $e) {
            return response()->json(['message' => 'Unable to Insert Menu Group!' . $e->getMessage()], 500);
        }
    }

    public function openmenucat(Request $request)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('menucategory', 'Menu Category Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $itemcatmast = DB::table('itemcatmast')
            ->select('itemcatmast.*', 'depart.name as departname', 'taxstru.name as taxstruname', 'subgroup.name as subgrpname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemcatmast.restcode')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'itemcatmast.AcCode')
            ->where('itemcatmast.propertyid', $this->propertyid)
            ->where('itemcatmast.RestCode', 'BANQ' . $this->propertyid)
            ->groupBy('itemcatmast.Code')
            ->orderBy('itemcatmast.name', 'ASC')
            ->get();
        $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $subgroupdata = DB::table('subgroup')->where('propertyid', $this->propertyid)->whereIn('group_code', ['11' . $this->propertyid, '15' . $this->propertyid, '25' . $this->propertyid,])->orderBy('name', 'ASC')->get();
        // $subgroupdata = DB::table('subgroup')->where('propertyid', $this->propertyid)->whereIn('nature', ['Sale'])->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')->where('propertyid', $this->propertyid)
            ->distinct()
            ->get();

        //dd($itemcatmast); // check if this has data


        return view('property.menucat', [
            'data' => $itemcatmast,
            'restaurentdata' => $restaurentdata,
            'subgroupdata' => $subgroupdata,
            'taxstrudata' => $taxstrudata
        ]);
    }

    public function printMenuCategorys(Request $request)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $data = DB::table('itemcatmast')->select('itemcatmast.*', 'depart.name as departname', 'taxstru.name as taxstruname', 'subgroup.name as subgrpname')->leftJoin('depart', 'depart.dcode', '=', 'itemcatmast.restcode')->leftJoin('taxstru', 'taxstru.str_code', '=', 'itemcatmast.TaxStru')->leftJoin('subgroup', 'subgroup.sub_code', '=', 'itemcatmast.AcCode')->where('itemcatmast.propertyid', $this->propertyid)->where('itemcatmast.RestCode', 'BANQ' . $this->propertyid)->groupBy('itemcatmast.Code')->orderBy('itemcatmast.name', 'ASC')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.printmenucategorys', ['company' => $company, 'data' => $data])->setPaper('a4', 'landscape');
        return $pdf->stream('menu-categorys.pdf');
    }

    public function exportMenuCategorys(Request $request)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->view == 0) {
            abort(403, 'No permission');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $export = new \App\Exports\MenuCategorysExport($this->propertyid, $company->comp_name ?? '');
        return $export->download();
    }

    public function submitmenucat(Request $request)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'name' => 'required',
            'taxstru' => 'required',
        ]);

        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('RestCode', 'BANQ' . $this->propertyid)
            ->first();
        if ($existingname) {
            return back()->with('error', 'Menu Category Name already exists!');
        }
        function skipfirsti($string, $numToSkip)
        {
            return substr($string, $numToSkip) + 1;
        }
        $prefix = 'MT' . $this->propertyid;

        $latestCode = DB::table('itemcatmast')
            ->where('propertyid', $this->propertyid)
            ->where('Code', 'like', $prefix . '%')
            ->orderByDesc(DB::raw("CAST(SUBSTRING(Code, " . (strlen($prefix) + 1) . ") AS UNSIGNED)"))
            ->value('Code');

        $newNumber = $latestCode ? ((int)substr($latestCode, strlen($prefix))) + 1 : 1;
        $code = $prefix . $newNumber;

        // Safety check to prevent duplication
        $exists = DB::table('itemcatmast')
            ->where('propertyid', $this->propertyid)
            ->where('Code', $code)
            ->where('RestCode', 'BANQ' . $this->propertyid)
            ->exists();

        if ($exists) {
            return back()->with('error', 'Duplicate Menu Category Code exists!');
        }


        // if ($request->input('flag') == 'Charge') {
        //     $deskcode = $request->input('restcode');
        //     $field_type = 'C';
        // } else {
        //     $deskcode = '';
        //     $field_type = '';
        // }

        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'BANQ' . $this->propertyid)->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'BANQ' . $this->propertyid)->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';

        try {
            $insertdata = [
                'rev_code' => $code,
                'name' => $shortname . ' - ' . $request->input('name'),
                'short_name' => $shortname,
                'ac_code' => $request->input('AcCode'),
                'tax_stru' => $request->input('taxstru'),
                'type' => $request->input('flag') == 'Category' ? 'Dr' : $request->input('type'),
                'flag_type' => 'BAN',
                'Desk_code' => 'BANQ' . $this->propertyid,
                'field_type' => 'C',
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Code' => $code,
                'Name' => $request->input('name'),
                'RestCode' => 'BANQ' . $this->propertyid,
                'TaxStru' => $request->input('taxstru'),
                'AcCode' => $request->input('AcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('flag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('type'),
                'cattyper' => '',
                'DrCr' => $request->input('flag') == 'Category' ? 'Dr' : 'Cr',
                'RevCode' => $code,
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'ActiveYN' => 'Y',
            ];
            DB::table('revmast')->insert($insertdata);
            DB::table($tableName)->insert($itemcatmastdata);
            return back()->with('success', 'Menu Category Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Menu Category!' . $e);
        }
    }

    public function updatemenucat(Request $request)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $validate = $request->validate([
        //     'upname' => 'required',
        //     'uptaxstru' => 'required',
        // ]);
        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('Code', '!=', $request->input('upcode'))
            ->first();
        if ($existingname) {
            return back()->with('error', 'Category Name already exists!');
        }
        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'BANQ' . $this->propertyid)->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'BANQ' . $this->propertyid)->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';
        try {
            $updatedata = [
                'name' => $shortname . ' - ' . $request->input('upname'),
                'short_name' => $shortname,
                'ac_code' => $request->input('upAcCode'),
                'tax_stru' => $request->input('uptaxstru'),
                'type' => $request->input('upflag') == 'Category' ? 'Dr' : $request->input('uptype'),
                'flag_type' => 'BAN',
                'Desk_code' => 'BANQ' . $this->propertyid,
                'field_type' => 'C',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Name' => $request->input('upname'),
                'TaxStru' => $request->input('uptaxstru'),
                'AcCode' => $request->input('upAcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('upflag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('uptype'),
                'cattyper' => '',
                'DrCr' => $request->input('upflag') == 'Category' ? 'Dr' : 'Cr',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'ActiveYN' => 'Y',
            ];

            // return $request->input('uprestcode');
            DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $request->input('upcode'))->where('Desk_code', $request->input('uprestcode'))->update($updatedata);
            DB::table($tableName)->where('propertyid', $this->propertyid)->where('Code', $request->input('upcode'))->where('RestCode', $request->input('uprestcode'))->update($itemcatmastdata);
            return back()->with('success', 'Menu Category Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Menu Category!' . $e);
        }
    }
    public function deletemenucategory(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121816);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {

            $chkitemmast = ItemMast::where('Property_ID', $this->propertyid)->where('ItemCatCode', $ucode)->first();
            if (!is_null($chkitemmast)) {
                return response()->json([
                    'status' => 'info',
                    'message' => 'Category used in Menu Item'
                ]);
            }
            $deletingrec = DB::table('itemcatmast')
                ->where('propertyid', $this->propertyid)
                ->where('Code', $ucode)
                ->delete();

            $deletingrec2 = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $ucode)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Menu Category Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Menu Category!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Menu Category!');
        }
    }

    public function openprintfp(Request $request, $docid)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $companyfp = EnviroBanquet::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');
        $hallbookData = DB::table('hallbook as HB')
            ->select([
                'functiontype.name as functionname',
                'HB.*',
                DB::raw('0 AS SNo'),
                DB::raw("'' AS Item"),
                DB::raw('0 AS QtyIss'),
                DB::raw('0 AS Rate'),
                DB::raw('0 AS LineAmt'),
                DB::raw("'' AS Unit"),
                DB::raw('0 AS LineTaxPer'),
                DB::raw('0 AS TaxAmt'),
                DB::raw('0 AS LineDiscP'),
                DB::raw('0 AS LineDiscA'),
                DB::raw("'' AS Remarks"),
                DB::raw('0 AS LineTotal'),
                DB::raw("'' AS IName"),
                DB::raw("'' AS ItemGrpName")
            ])
            ->leftJoin('functiontype', function ($join) {
                $join->on('HB.func_name', '=', 'functiontype.code')
                    ->where('functiontype.propertyid', '=', $this->propertyid);
            })
            ->where('HB.docid', $docid)
            ->first();


        $venueData = DB::table('venueocc as VC')
            ->select([
                'VC.*',
                'D.name as VenuName'
            ])
            ->leftJoin('venuemast as D', 'VC.venucode', '=', 'D.code')
            ->where('VC.fpdocid', $docid)
            ->get();

        $advanceData = DB::table('paychargeh')
            ->select([
                DB::raw('(amtcr - amtdr) AS Adv'),
                'paytype',
                'vno',
                'vdate'
            ])
            ->whereIn('vtype', ['AD', 'AR'])
            ->where('contradocid', $docid)
            ->where('sno', '1')
            ->get();

        if ($advanceData->isEmpty()) {
            $rtno = '';
            $dates = '';
        }
        $rtno = $advanceData->pluck('vno')->implode(', ');
        $dates = $advanceData->pluck('vdate')->map(function ($date) {
            return date('d-m-Y', strtotime($date));
        })->implode(', ');
        $paymentModes = $advanceData
            ->groupBy('paytype')
            ->map(function ($payments, $mode) {
                return ($mode ?: 'Cash') . ': ' . number_format($payments->sum('Adv'), 2);
            })
            ->implode(', ');

        return view('property.printfp', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'hallbookData' => $hallbookData,
            'venueData' => $venueData,
            'advanceData' => $advanceData,
            'companyfp' => $companyfp,
            'rtno' => $rtno,
            'dates' => $dates,
            'paymentModes' => $paymentModes,
        ]);
    }

    public function opensalesregister(Request $request)
    {
        $comp = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');
        return view('property.salesregister', [
            'comp' => $comp,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
            'todate' => $this->ncurdate
        ]);
    }
    public function fetchsalesregister(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $status = $request->input('itemwise');

        $data = DB::table('hallsale1 as H')
            ->select([
                'H.docid',
                'H.vno',
                'H.vdate',
                'H.cgst',
                'H.sgst',
                'H.party',
                'H.noofpax',
                'H.rateperpax',
                DB::raw('H.total as TotalPerCover'),
                'H.discamt',
                'H.taxable',
                'H.nontaxable',
                'H.roundoff',
                DB::raw('H.netamt as Amount')
            ])
            ->where('H.restcode', 'BANQ' . $this->propertyid)
            ->whereBetween('H.vdate', [$fromdate, $todate])
            ->orderBy('H.vno', 'DESC')
            ->orderBy('H.vdate')
            ->get();

        $dataArr = [];

        foreach ($data as $value) {
            $row = [
                'docid' => $value->docid,
                'vno' => $value->vno,
                'vdate' => $value->vdate,
                'cgst' => $value->cgst,
                'sgst' => $value->sgst,
                'party' => $value->party,
                'noofpax' => $value->noofpax,
                'rateperpax' => $value->rateperpax,
                'TotalPerCover' => $value->TotalPerCover,
                'discamt' => $value->discamt,
                'taxable' => $value->taxable,
                'nontaxable' => $value->nontaxable,
                'roundoff' => $value->roundoff,
                'Amount' => $value->Amount,
            ];

            if ($status == 'yes') {
                // getHallStockData returns multiple records per docid
                $hallStockData = $this->getHallStockData($value->docid, $this->propertyid);

                // group all items under 'items' key
                $items = [];
                foreach ($hallStockData as $stock) {
                    $cgst = $stock->taxamt / 2;
                    $sgst = $stock->taxamt / 2;
                    $items[] = [
                        'isno' => $stock->sno,
                        'ivno' => $stock->vno,
                        'ivdate' => $stock->vdate,
                        'item' => $stock->item,
                        'iname' => $stock->Name,
                        'qtyiss' => $stock->qtyiss,
                        'rate' => $stock->rate,
                        'restcode' => $stock->restcode,
                        'taxamt' => $stock->taxamt,
                        'cgst' => $cgst,
                        'sgst' => $sgst,
                        'discamt' => $stock->discamt,
                    ];
                }

                $row['items'] = $items; // group items under single key
            }

            $dataArr[] = $row;
        }

        return response()->json(['data' => $dataArr, 'status' => $status]);
    }


    private function getHallStockData($docId, $propertyId)
    {
        $query =  DB::table('hallstock as HStk')
            ->leftJoin('itemmast as I', 'HStk.item', '=', 'I.Code')
            ->select(
                'HStk.docId',
                'HStk.sno',
                'HStk.vno',
                'HStk.vdate',
                'HStk.item',
                'I.Name',
                'HStk.qtyiss',
                'HStk.rate',
                'HStk.restcode',
                'HStk.taxamt',
                'HStk.discamt'
            )
            ->where('HStk.docId', $docId)
            ->where('HStk.propertyid', $propertyId)
            ->orderBy('I.Name')
            ->get();

        return $query;
    }


    public function banqsettlementsummary(Request $request)
    {
        $ncurdate = $this->ncurdate;
        $fromdate = $request->input('fromdate', $ncurdate);
        $todate = $request->input('todate', $ncurdate);
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $company = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name')->groupBy('sub_code')->get();
        //$departs = Depart::where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->groupBy('dcode')->orderBy('name', 'ASC')->get();

        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $comp->state_code)->value('name');
        $users = User::where('propertyid', $this->propertyid)->get();
        $revheading = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->get();

        return view('property.banq_settlementsummary', [
            'fromdate' => $ncurdate,
            'comp' => $comp,
            'company' => $company,
            //'departs' => $departs,
            'todate',
            'statename' => $statename,
            'users' => $users,
            'revheading' => $revheading
        ]);
    }
    public function stocksummary(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $godown = Depart::where('propertyid', $this->propertyid)->where('dcode', "PURC$this->propertyid")->get();

        $itemgrp = ItemGrp::where('property_id', $this->propertyid)->where('restcode', "PURC$this->propertyid")->where('activeyn', 'Y')->orderBy('name')->get();

        // return $itemgrp;

        return view('property.stocksummary', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'godown' => $godown,
            'itemgrp' => $itemgrp
        ]);
    }

    // Fetch Godown By Store Type
    public function fetchGodown(Request $request)
    {
        $storeType = $request->input('storetype');
        $godowns = []; // Initialize an empty array to store the godowns

        if ($storeType == 'main_store') {
            $value = 'PURC' . $this->propertyid;
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('dcode', 'LIKE', $value . '%')
                ->get();
        } elseif ($storeType == 'sub_store') {
            $value = 'Store';
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('nature', 'LIKE', $value . '%')
                ->get();
        } elseif ($storeType == 'house_keeping') {
            $value = 'House Keeping';
            $godowns = Depart::where('propertyid', $this->propertyid)
                ->where('nature', 'LIKE', $value . '%')
                ->get();
        }

        return response()->json($godowns);
    }

    public function getItems(Request $request)
    {
        $itemType = $request->input('item_type');

        $types = ($itemType === 'All' || empty($itemType))
            ? ['Raw Material', 'Finish', 'Semi-Finish', 'Consumable', 'Store Item']
            : [$itemType];

        $groupIds = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', 'PURC' . $this->propertyid)
            ->whereIn('type', $types)
            ->pluck('code')
            ->toArray();

        $groups = DB::table('itemgrp')
            ->whereIn('code', $groupIds)
            ->select('code as id', 'name')
            ->orderBy('name')
            ->get();

        $items = DB::table('itemmast')
            ->where('Property_ID', $this->propertyid)
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->whereIn('ItemGroup', $groupIds)
            ->select('Code as id', 'Name as iname', 'ItemGroup as group_id')
            ->get();

        return response()->json([
            'groups' => $groups,
            'items' => $items
        ]);
    }

    public function getactData(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allitems = $request->input('items');
        // 1. Fetch all distinct items with unit names
        $ditems = DB::table('stock as S')
            ->distinct()
            ->select([
                'S.item',
                'I.Name as ItemName',
                'u.name as unitname',
                'ui.name as issueunitname'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('unitmast as u', function ($join) {
                $join->on('u.ucode', '=', 'I.Unit')
                    ->where('u.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('unitmast as ui', function ($join) {
                $join->on('ui.ucode', '=', 'I.IssueUnit')
                    ->where('ui.propertyid', '=', $this->propertyid);
            })
            ->where('S.propertyid', $this->propertyid)
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->whereIn('I.Code', $allitems)
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('VT.ncat', [
                'PBC',
                'PBR',
                'PRR',
                'PRC',
                'STOP',
                'MRE',
                'RQI',
                'RQR',
                'BKREC',
                'BKISS',
                'KSREC',
                'KSISS',
                'KMREC',
                'KMISS'
            ])
            ->orderBy('I.Name')
            ->get();

        // 2. Initialize reportdata with items
        $reportdata = [];
        foreach ($ditems as $row) {
            $reportdata[$row->item] = [
                'item'        => $row->item,
                'itemname'    => $row->ItemName,
                'unitname'    => trim(($row->unitname ?? '') . ' / ' . ($row->issueunitname ?? '')),
                'opqty'       => 0.000,
                'opamt'       => 0,
                'opissuedqty' => 0.000,
                'opissuedamt' => 0,
                'transactions' => []
            ];
        }

        // 3. Opening Received
        $openingReceived = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.recdqty) as OpQty'),
                DB::raw('SUM(S.amount) as OpAmt'),
                'S.item'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'STOP', 'MRE', 'BKREC', 'KSREC', 'KMREC', 'RQI'])
            ->where('S.recdqty', '>', 0)
            ->whereIn('S.item', $allitems)
            ->groupBy('S.item')
            ->havingRaw('SUM(S.recdqty) > 0')
            ->get();

        foreach ($openingReceived as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opqty'] = $row->OpQty;
            $reportdata[$row->item]['opamt'] = $row->OpAmt;
        }

        // 4. Opening Issued
        // $openingIssued = DB::table('stock as S')
        //     ->select([
        //         DB::raw('SUM(S.issqty) as OpQty'),
        //         DB::raw('SUM(S.amount) as OpAmt'),
        //         'S.item',
        //         'I.Name'
        //     ])
        //     ->join('itemmast as I', function ($join) {
        //         $join->on('S.item', '=', 'I.Code')
        //             ->where('I.ItemType', '=', 'Store');
        //     })
        //     ->join('voucher_type as VT', function ($join) {
        //         $join->on('S.vtype', '=', 'VT.v_type')
        //             ->on('S.propertyid', '=', 'VT.propertyid');
        //     })
        //     ->where('S.propertyid', $this->propertyid)
        //     ->where('S.vdate', '<', $fromdate)
        //     ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
        //     ->whereIn('VT.ncat', ['PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS'])
        //     ->where('S.issqty', '>', 0)
        //     ->whereIn('S.item', $allitems)
        //     ->groupBy('S.item', 'I.Name')
        //     ->havingRaw('SUM(S.issqty) > 0')
        //     ->get();

        $openingIssued = DB::table('stock as S')
            ->select(
                DB::raw('SUM(S.RecdQty) AS OpQty'),
                DB::raw('SUM(S.RecdQty) AS OpAmt'),
                'S.item'
            )
            ->join('itemmast as I', function ($join) {
                $join->on('S.Item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.VType', '=', 'VT.V_Type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.VDate', '<', $todate)
            ->whereIn('S.GodownCode', ["PURC$this->propertyid"])
            ->where('S.RecdQty', '>', 0)
            ->whereIn('VT.NCAT', ['PBC', 'PBR', 'STOP', 'MRE', 'BKREC', 'KSREC', 'KMREC', 'RQI'])
            ->groupBy('S.Item')
            ->havingRaw('SUM(S.RecdQty) > 0')
            ->get();

        // return $openingIssued;

        foreach ($openingIssued as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => $row->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opissuedqty'] = $row->OpQty;
            $reportdata[$row->item]['opissuedamt'] = $row->OpAmt;
        }

        // 5. Transactions
        $transactions = DB::table('stock as S')
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                'S.amount',
                'S.item',
                'I.Name',
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                    THEN S.recdqty ELSE 0 
                END as QtyRec
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                    THEN S.issqty ELSE 0 
                END as QtyIss
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'PRR', 'PRC', 'MRE') 
                    THEN SG.name 
                    ELSE D.name 
                END as Particulars
            "),
                DB::raw("
                CASE 
                    WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                    THEN 'A' 
                    WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                    THEN 'B' 
                    ELSE 'C' 
                END as SeqNo
            ")
            ])
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->leftJoin('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
            ->leftJoin('stock as S1', function ($join) {
                $join->on('S.contradocid', '=', 'S1.docid')
                    ->on('S.contrasno', '=', 'S1.sno');
            })
            ->leftJoin('godown_mast as D', 'S1.godowncode', '=', 'D.scode')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->where('I.ItemType', 'Store')
            ->whereIn('I.Code', $allitems)
            ->orderBy('S.item')
            ->orderBy('S.vdate')
            ->orderBy('SeqNo')
            ->orderBy('S.vtype')
            ->orderBy('S.vno')
            ->get();

        foreach ($transactions as $txn) {
            $itemcode = $txn->item;
            if (!isset($reportdata[$itemcode])) {
                $reportdata[$itemcode] = [
                    'item' => $itemcode,
                    'itemname' => $txn->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }

            $reportdata[$itemcode]['transactions'][] = [
                'vdate'      => $txn->vdate,
                'vtype'      => $txn->vtype,
                'vno'        => $txn->vno,
                'amount'     => (float) $txn->amount,
                'qtyrec'     => (float) $txn->QtyRec,
                'qtyiss'     => (float) $txn->QtyIss,
                'particular' => $txn->Particulars,
                'seqno'      => $txn->SeqNo
            ];
        }

        return response()->json([
            'reportdata' => array_values($reportdata)
        ]);
    }

    public function getlprateData(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        // 1. Fetch all distinct items with unit names
        $ditems = DB::table('stock as S')
            ->distinct()
            ->select([
                'S.item',
                'I.Name as ItemName',
                'u.name as unitname',
                'ui.name as issueunitname'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('unitmast as u', function ($join) {
                $join->on('u.ucode', '=', 'I.Unit')
                    ->where('u.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('unitmast as ui', function ($join) {
                $join->on('ui.ucode', '=', 'I.IssueUnit')
                    ->where('ui.propertyid', '=', $this->propertyid);
            })
            ->where('S.propertyid', $this->propertyid)
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->whereIn('VT.ncat', [
                'PBC',
                'PBR',
                'PRR',
                'PRC',
                'STOP',
                'MRE',
                'RQI',
                'RQR',
                'BKREC',
                'BKISS',
                'KSREC',
                'KSISS',
                'KMREC',
                'KMISS'
            ])
            ->orderBy('I.Name')
            ->get();

        // 2. Initialize reportdata with items
        $reportdata = [];
        foreach ($ditems as $row) {
            $reportdata[$row->item] = [
                'item'        => $row->item,
                'itemname'    => $row->ItemName,
                'unitname'    => trim(($row->unitname ?? '') . ' / ' . ($row->issueunitname ?? '')),
                'opqty'       => 0.000,
                'opamt'       => 0,
                'opissuedqty' => 0.000,
                'opissuedamt' => 0,
                'transactions' => []
            ];
        }

        // 3. Opening Received (using LPurRate)
        $openingReceived = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.recdqty) as OpQty'),
                DB::raw('SUM(S.recdqty * I.LPurRate) as OpAmt'),
                'S.item'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'STOP', 'MRE', 'BKREC', 'KSREC', 'KMREC', 'RQI'])
            ->where('S.recdqty', '>', 0)
            ->groupBy('S.item')
            ->havingRaw('SUM(S.recdqty) > 0')
            ->get();

        foreach ($openingReceived as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opqty'] = $row->OpQty;
            $reportdata[$row->item]['opamt'] = $row->OpAmt;
        }

        // 4. Opening Issued (using LPurRate)
        $openingIssued = DB::table('stock as S')
            ->select([
                DB::raw('SUM(S.issqty) as OpQty'),
                DB::raw('SUM(S.issqty * I.LPurRate) as OpAmt'),
                'S.item',
                'I.Name'
            ])
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $this->propertyid)
            ->where('S.vdate', '<', $fromdate)
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->whereIn('VT.ncat', ['PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS'])
            ->where('S.issqty', '>', 0)
            ->groupBy('S.item', 'I.Name')
            ->havingRaw('SUM(S.issqty) > 0')
            ->get();

        foreach ($openingIssued as $row) {
            if (!isset($reportdata[$row->item])) {
                $reportdata[$row->item] = [
                    'item' => $row->item,
                    'itemname' => $row->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }
            $reportdata[$row->item]['opissuedqty'] = $row->OpQty;
            $reportdata[$row->item]['opissuedamt'] = $row->OpAmt;
        }

        // 5. Transactions (using LPurRate)
        $transactions = DB::table('stock as S')
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN S.recdqty * I.LPurRate
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN S.issqty * I.LPurRate
                        ELSE 0 
                    END as amount
                "),
                'S.item',
                'I.Name',
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN S.recdqty ELSE 0 
                    END as QtyRec
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN S.issqty ELSE 0 
                    END as QtyIss
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'PRR', 'PRC', 'MRE') 
                        THEN SG.name 
                        ELSE D.name 
                    END as Particulars
                "),
                DB::raw("
                    CASE 
                        WHEN VT.ncat IN ('PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC') 
                        THEN 'A' 
                        WHEN VT.ncat IN ('PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS') 
                        THEN 'B' 
                        ELSE 'C' 
                    END as SeqNo
                ")
            ])
            ->leftJoin('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->leftJoin('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
            ->leftJoin('stock as S1', function ($join) {
                $join->on('S.contradocid', '=', 'S1.docid')
                    ->on('S.contrasno', '=', 'S1.sno');
            })
            ->leftJoin('godown_mast as D', 'S1.godowncode', '=', 'D.scode')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->whereIn('S.godowncode', ['PURC' . $this->propertyid])
            ->where('I.ItemType', 'Store')
            ->orderBy('S.item')
            ->orderBy('S.vdate')
            ->orderBy('SeqNo')
            ->orderBy('S.vtype')
            ->orderBy('S.vno')
            ->get();

        foreach ($transactions as $txn) {
            $itemcode = $txn->item;
            if (!isset($reportdata[$itemcode])) {
                $reportdata[$itemcode] = [
                    'item' => $itemcode,
                    'itemname' => $txn->Name ?? '',
                    'unitname' => '',
                    'opqty' => 0.000,
                    'opamt' => 0,
                    'opissuedqty' => 0.000,
                    'opissuedamt' => 0,
                    'transactions' => []
                ];
            }

            $reportdata[$itemcode]['transactions'][] = [
                'vdate'      => $txn->vdate,
                'vtype'      => $txn->vtype,
                'vno'        => $txn->vno,
                'amount'     => (float) $txn->amount,
                'qtyrec'     => (float) $txn->QtyRec,
                'qtyiss'     => (float) $txn->QtyIss,
                'particular' => $txn->Particulars,
                'seqno'      => $txn->SeqNo
            ];
        }

        return response()->json([
            'reportdata' => array_values($reportdata)
        ]);
    }

    public function fetchValuation(Request $request)
    {
        $valuation = $request->input('valuation');

        if ($valuation == 'Actual') {
            return $this->getactData($request);
        } elseif ($valuation == 'LastPurchaseRate') {
            return $this->getlprateData($request);
        } else {
            return response()->json(['error' => 'Invalid valuation valuation'], 400);
        }
    }

    public function stockinhand(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $godown = Depart::where('propertyid', $this->propertyid)->where('dcode', "PURC$this->propertyid")->get();

        $itemgrp = ItemGrp::where('property_id', $this->propertyid)->where('restcode', "PURC$this->propertyid")->where('activeyn', 'Y')->orderBy('name')->get();

        // return $itemgrp;

        return view('property.stockinhand', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'godown' => $godown,
            'itemgrp' => $itemgrp
        ]);
    }

    public function fetchstockingodown(Request $request)
    {
        $storeType = $request->input('storetype');
        $propertyId = $this->propertyid;

        $query = Depart::where('propertyid', $propertyId);

        if ($storeType == 'main_store') {
            $query->where('dcode', 'LIKE', 'PURC' . $propertyId . '%');
        } elseif ($storeType == 'sub_store') {
            $query->where('nature', 'LIKE', 'Store%');
        } elseif ($storeType == 'house_keeping') {
            $query->where('nature', 'LIKE', 'House Keeping%');
        }

        return response()->json($query->get());
    }

    public function stockInHandFinal(Request $request)
    {
        $propertyId    = $this->propertyid;
        $toDate        = $request->input('to_date');
        $fromDate      = $request->input('from_date');
        $godown        = $request->input('godown');
        $selectedItems = $request->input('items');

        if (is_string($selectedItems)) {
            $selectedItems = explode(',', $selectedItems);
        }

        $ncatCodes = ['PBC', 'PBR', 'MRE', 'RQI', 'KSREC', 'KSISS', 'STOP', 'HKISS', 'RQR', 'KMREC'];

        $query = DB::table('stock as S')
            ->join('itemmast as I', 'S.Item', '=', 'I.Code')
            ->join('unitmast as U', 'S.unit', '=', 'U.ucode')
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.VType', '=', 'VT.V_Type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $propertyId)
            ->where('S.delflag', '!=', 'Y')
            ->where('S.VDate', '>=', $fromDate)
            ->where('S.VDate', '<=', $toDate)
            ->where('S.GODOWNCODE', $godown)
            ->whereIn('VT.NCAT', $ncatCodes)

            ->when(!empty($selectedItems), function ($q) use ($selectedItems) {
                $q->whereIn('S.item', $selectedItems);
            })

            ->select(
                'I.Name as item_name',
                'U.name as unit',
                DB::raw('(SUM(S.RecdQty) - SUM(S.issqty)) AS curr_stock'),
                DB::raw('SUM(S.amount) AS value')
            )
            ->groupBy('S.Item', 'I.Name', 'U.name')
            ->havingRaw('(SUM(S.RecdQty) - SUM(S.issqty)) != 0')
            ->orderBy('I.Name')
            ->get();

        $result = [];
        foreach ($query as $row) {
            $result[] = [
                'item'       => $row->item_name,
                'unit'       => $row->unit ?? 'N/A',
                'curr_stock' => round($row->curr_stock, 3),
                'value'      => round($row->value, 2),
            ];
        }

        return response()->json($result);
    }

    public function issuechecklist(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $godown = Depart::where('propertyid', $this->propertyid)
            ->whereNotIn('nature', ['Outlet', 'Room Service'])
            ->get();

        $itemmast = ItemMast::where('Property_ID', $this->propertyid)
            ->distinct()
            ->orderBy('Name')
            ->pluck('Name');

        return view('property.issuechecklist', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'godown' => $godown,
            'itemmast' => $itemmast
        ]);
    }
    public function getItemsByType(Request $request)
    {
        $type = $request->type;
        $propertyId = $this->propertyid;

        $query = ItemMast::where('Property_ID', $propertyId);
        if (!empty($type) && strtolower($type) !== 'all') {
            $query->where('Type', $type);
        }

        try {
            $items = $query->distinct()
                ->orderBy('Name', 'asc')
                ->pluck('Name');

            return response()->json($items);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function stockreporttrade(Request $request)
    {
        $permission = revokeopen(161211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $godown = Depart::where('propertyid', $this->propertyid)->where('nature', 'Kitchen')->get(['dcode', 'name']);;
        // $itemgrp = ItemGrp::where('property_id', $this->propertyid)->where('restcode', "PURC$this->propertyid")->where('activeyn', 'Y')->orderBy('name')->get();

        // return $itemgrp;

        return view('property.stockreporttrade', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'godown' => $godown,
        ]);
    }

    public function getdepartbytype(Request $request)
    {
        $storetype = $request->input('storetype', 'Liquor');

        $itemgrp = DB::table('itemgrp')
            ->select(
                'code as Code',
                'name as Name'
            )
            ->where('property_id', $this->propertyid)
            ->where('cattype', $storetype)
            ->orderBy('name', 'ASC')
            ->get();

        return response()->json(['itemgrp' => $itemgrp]);
    }

    public function getitemsbygrouptread(Request $request)
    {
        $groupcodes = $request->input('checkedgroupcode');

        $itemmast = DB::table('itemmast')->select('itemmast.*', 'depart.name as depname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemmast.RestCode')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->whereIn('itemmast.ItemGroup', $groupcodes)
            ->where('itemmast.ActiveYN', 'Y')
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        return response()->json(['reportdata' => $itemmast]);
    }

    public function getitemsbygrouptreadstocktrade(Request $request)
    {
        $groupcodes = $request->input('checkedgroupcode');
        $storetype = $request->input('storetype');
        $dept = $request->input('dept');


        $itemmast = DB::table('itemmast')->select('*')
            // ->leftJoin('depart', 'depart.dcode', '=', 'itemmast.RestCode')
            ->where('itemmast.Property_ID', $this->propertyid)
            // ->where('itemmast.RestCode', 'PURC' . $this->propertyid)
            ->whereIn('itemmast.ItemGroup', $groupcodes)
            // ->where('itemmast.NType', $storetype)
            // ->whereIn('itemmast.Kitchen', $dept)
            ->where('itemmast.ActiveYN', 'Y')
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        return response()->json(['reportdata' => $itemmast]);
    }

    public function gettradeitemslist(Request $request)
    {
        $storetype = $request->input('storetype', 'Trade Item');

        $itemmast = DB::table('itemmast')->select('*')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.NType', $storetype)
            ->where('itemmast.ActiveYN', 'Y')
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        return response()->json(['reportdata' => $itemmast]);
    }

    public function getreportstocktradetype(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $allitems = $request->input('items', '');
        $storetype = $request->input('storetype', '');
        $kitchen = $request->input('kitchen', null);
        // $godowncodes = $request->input('godowncodes', []);
        $allitemgroup = $request->input('itemgrps', []);

        $finalData = [];

        if ($storetype == 'Liquor') {
            $reportdata = $this->getFilteredStockReport(
                $fromdate,
                $todate,
                'Liquor',
                $allitems,
                $allitemgroup,
                $kitchen
            );

            // Get opening stock data
            $openingData = $this->getOpeningStockReport($fromdate);

            // Group reportdata by ParentItemCode to insert opening row for each item
            $groupedData = collect($reportdata)->groupBy('ParentItemCode');

            foreach ($groupedData as $itemCode => $transactions) {
                // Find opening stock for this item
                $openingStock = $openingData->firstWhere('PurchaseItemCode', $itemCode);

                // Add opening row if opening stock exists and is not zero
                if ($openingStock && $openingStock->OpeningStock != 0) {
                    $firstTransaction = $transactions->first();
                    $finalData[] = (object)[
                        'VDate' => $fromdate,
                        'VType' => 'Opening',
                        'VNo' => '',
                        'Item' => $itemCode,
                        'wtqty' => $openingStock->wtqty ?? $firstTransaction->wtqty ?? 0,
                        'ConvRatio' => $openingStock->ConvRatio ?? $firstTransaction->ConvRatio ?? 750,
                        'ParentItemCode' => $itemCode,
                        'Name' => $openingStock->PurchaseItemName,
                        'qtyrec' => $openingStock->OpeningStock,
                        'qtyiss' => 0,
                        'Amount' => 0,
                        'opening' => $openingStock->OpeningStock
                    ];
                }

                foreach ($transactions as $transaction) {
                    $transaction->opening = 0;
                    $finalData[] = $transaction;
                }
            }
        } elseif ($storetype == 'Trade Item') {
            $reportdata = $this->getTradeStockReport(
                $fromdate,
                $todate,
                $allitems,
                $kitchen
            );

            // Get opening stock data
            $openingData = $this->getTradeOpeningStock($fromdate);

            // Group reportdata by Item to insert opening row for each item
            $groupedData = collect($reportdata)->groupBy('Item');

            // return $groupedData;

            foreach ($groupedData as $itemCode => $itemData) {
                $openingStock = $openingData->where('Item', $itemCode)->first();

                if ($openingStock) {
                    $finalData[] = (object)[
                        'Item' => $itemCode,
                        'Name' => $openingStock->ItemName,
                        'OpeningStock' => $openingStock->OpeningStock,
                        'TotalRec' => $openingStock->TotalRec,
                        'TotalIss' => $openingStock->TotalIss,
                        'VDate' => $fromdate,
                        'VType' => 'Opening',
                        'VNo' => '',
                        'QtyRec' => $openingStock->OpeningStock,
                        'QtyIss' => 0,
                        'Amount' => 0,
                    ];
                }
                foreach ($itemData as $transaction) {
                    $transaction->OpeningStock = 0;
                    $finalData[] = $transaction;
                }
            }
        } elseif ($storetype == 'Manufactured Item') {

            // Step 1: Get received rows (KSREC/PBPC/PBPB) for kitchen
            $receivedRows = $this->getManufacturedItemStockReport($fromdate, $todate, $kitchen);

            // Step 2: For each unique received item, find its child component codes
            //         then fetch consumption rows for those components
            $parentCodes = collect($receivedRows)->pluck('item')->unique()->values()->toArray();

            // Get child component codes for all parent items
            $componentMap = [];  // parentCode => [childCode, ...]
            if (!empty($parentCodes)) {
                $components = DB::table('itemmast')
                    ->whereIn('Pitemcode', $parentCodes)
                    ->where('Property_ID', $this->propertyid)
                    ->where('NType', 'Manufactured Item')
                    ->groupBy('Code')
                    ->select(['Code', 'Pitemcode', 'Name'])
                    ->get();

                foreach ($components as $comp) {
                    $componentMap[$comp->Pitemcode][] = $comp->Code;
                }
            }

            // All child codes across all parents
            $allChildCodes = collect($componentMap)->flatten()->unique()->values()->toArray();

            // Step 3: Get consumption rows for child components
            $consumptionRows = collect([]);
            if (!empty($allChildCodes)) {
                $consumptionRows = DB::table('stock as S')
                    ->leftJoin('itemmast as I', 'S.item', '=', 'I.Code')
                    ->where('S.propertyid', $this->propertyid)
                    ->whereBetween('S.vdate', [$fromdate, $todate])
                    ->where('S.delflag', '!=', 'Y')
                    ->when(!empty($kitchen), function ($q) use ($kitchen) {
                        $q->where('S.departcode', $kitchen);
                    })
                    ->whereIn('S.item', $allChildCodes)
                    ->select([
                        'S.vdate',
                        'S.vtype',
                        'S.vno',
                        'S.item',
                        'I.Name as con_item_name',
                        'I.wtqty',
                        'S.qtyiss',
                        DB::raw('S.qtyiss * I.wtqty as con_qty'),
                        'I.Pitemcode as parent_code',
                    ])
                    ->groupBy('S.id')
                    ->orderBy('S.vdate')
                    ->get();
            }

            // Step 4: Build merged finalData â€” group by parent item name
            // For each parent item, combine received + consumption rows sorted by date
            // then calculate running balance

            // Group received by item code
            $receivedByParent = collect($receivedRows)->groupBy('item');
            // Group consumption by parent_code
            $consumptionByParent = $consumptionRows->groupBy('parent_code');

            $allParentItems = collect($receivedRows)
                ->unique('item')
                ->keyBy('item');

            foreach ($allParentItems as $parentCode => $parentItem) {
                $received    = $receivedByParent->get($parentCode, collect([]));
                $consumption = $consumptionByParent->get($parentCode, collect([]));

                // Merge and sort by date
                $allRows = collect();

                foreach ($received as $r) {
                    $allRows->push([
                        'vdate'        => $r->vdate,
                        'vtype'        => $r->vtype,
                        'vno'          => $r->vno,
                        'item_name'    => $r->name,
                        'rec_qty'      => floatval($r->qtyrec),
                        'con_item'     => '',
                        'con_qty'      => 0,
                        'row_type'     => 'received',
                        'groupingName' => $r->name,
                        'amount'       => $r->amount,
                    ]);
                }

                foreach ($consumption as $c) {
                    $allRows->push([
                        'vdate'        => $c->vdate,
                        'vtype'        => $c->vtype,
                        'vno'          => $c->vno,
                        'item_name'    => $parentItem->name,
                        'rec_qty'      => 0,
                        'con_item'     => $c->con_item_name,
                        'con_qty'      => floatval($c->con_qty),
                        'row_type'     => 'consumption',
                        'groupingName' => $parentItem->name,
                        'amount'       => 0,
                    ]);
                }

                // Sort by date
                $allRows = $allRows->sortBy('vdate')->values();

                // Calculate running balance
                $balance = 0;
                foreach ($allRows as $row) {
                    $balance += $row['rec_qty'];
                    $balance -= $row['con_qty'];

                    $finalData[] = (object) [
                        'VDate'        => $row['vdate'],
                        'VType'        => $row['vtype'],
                        'VNo'          => $row['vno'],
                        'Name'         => $row['item_name'],
                        'recdqty'      => $row['rec_qty'] > 0 ? $row['rec_qty'] : 0,
                        'con_item'     => $row['con_item'],
                        'con_qty'      => $row['con_qty'] > 0 ? $row['con_qty'] : 0,
                        'balance'      => round($balance, 3),
                        'Amount'       => $row['amount'],
                        'groupingName' => $row['groupingName'],
                        // unused but needed for JS map compatibility
                        'Item'         => $parentCode,
                        'ParentItemCode' => 0,
                        'Code'         => $parentCode,
                        'ConvRatio'    => 1,
                        'wtqty'        => 0,
                        'qtyiss'       => 0,
                        'purchaseQty'  => 0,
                        'openingQty'   => 0,
                        'sellQty'      => 0,
                        'balanceQty'   => 0,
                        'opening'      => 0,
                        'department_name' => '',
                    ];
                }
            }
        }

        return response()->json(['reportdata' => $finalData, 'type' => $storetype]);
    }

    public function getOpeningStockReport($fromdate)
    {
        $propertyId = $this->propertyid;
        $purccode   = 'PURC' . $propertyId;

        $result = DB::table(DB::raw("(
    SELECT
      CASE
        WHEN (s.restcode IS NOT NULL AND s.restcode <> '' AND s.restcode <> '{$purccode}')
        THEN sim.Pitemcode
        ELSE s.item
      END AS PurchaseItemCode,

      CASE
        WHEN (
          (s.itemrestcode = '{$purccode}' OR s.restcode = '{$purccode}' OR s.departcode = '{$purccode}')
          AND s.vtype NOT IN ('KSISS','KSREC')
          AND IFNULL(s.qtyrec,0) > 0
        )
        THEN IFNULL(s.qtyrec,0) * IFNULL(pim_item.ConvRatio, 1)
        ELSE 0
      END AS RecValue,

      CASE
        WHEN (
          (s.itemrestcode = '{$purccode}' OR s.restcode = '{$purccode}' OR s.departcode = '{$purccode}')
          AND s.vtype NOT IN ('KSISS','KSREC')
          AND IFNULL(s.qtyiss,0) > 0
        )
        THEN IFNULL(s.qtyiss,0) * IFNULL(pim_item.ConvRatio, 1)

        WHEN (s.restcode IS NOT NULL AND s.restcode <> '' AND s.restcode <> '{$purccode}')
        THEN IFNULL(s.qtyiss,0) * IFNULL(sim.wtqty, 1)

        ELSE 0
      END AS IssValue

    FROM stock s

    LEFT JOIN (
      SELECT im.*
      FROM itemmast im
      JOIN (
        SELECT Property_ID, Code, MAX(id) AS max_sn
        FROM itemmast
        WHERE Property_ID = {$propertyId}
          AND RestCode = '{$purccode}'
          AND cattype = 'Liquor'
        GROUP BY Property_ID, Code
      ) t
        ON t.Property_ID = im.Property_ID
       AND t.Code = im.Code
       AND t.max_sn = im.sn
    ) pim_item
      ON pim_item.Property_ID = {$propertyId}
     AND pim_item.Code = s.item

    LEFT JOIN (
      SELECT im.*
      FROM itemmast im
      JOIN (
        SELECT Property_ID, Code, RestCode, MAX(id) AS max_sn
        FROM itemmast
        WHERE Property_ID = {$propertyId}
          AND RestCode IS NOT NULL AND RestCode <> ''
          AND cattype <> 'Liquor'
          AND Pitemcode <> '0'
        GROUP BY Property_ID, Code, RestCode
      ) t
        ON t.Property_ID = im.Property_ID
       AND t.Code = im.Code
       AND t.RestCode = im.RestCode
       AND t.max_sn = im.sn
    ) sim
      ON sim.Property_ID = {$propertyId}
     AND sim.Code = s.item
     AND sim.RestCode = s.restcode

    WHERE s.propertyid = {$propertyId}
      AND s.vdate < '{$fromdate}'  
       AND s.delflag != 'Y' 
) as x"))

            ->join(DB::raw("(
    SELECT im.*
    FROM itemmast im
    JOIN (
      SELECT Property_ID, Code, MAX(id) AS max_sn
      FROM itemmast
      WHERE Property_ID = {$propertyId}
        AND RestCode = '{$purccode}'
        AND cattype = 'Liquor'
      GROUP BY Property_ID, Code
    ) t
      ON t.Property_ID = im.Property_ID
     AND t.Code = im.Code
     AND t.max_sn = im.sn
) as pim2"), function ($join) use ($propertyId) {
                $join->on('pim2.Code', '=', 'x.PurchaseItemCode')
                    ->where('pim2.Property_ID', '=', $propertyId);
            })

            ->selectRaw("
    x.PurchaseItemCode,
    pim2.Name AS PurchaseItemName,
    SUM(x.RecValue) AS TotalQtyRec,
    SUM(x.IssValue) AS TotalQtyIss,
    SUM(x.RecValue) - SUM(x.IssValue) AS OpeningStock,
    pim2.ConvRatio
")

            ->groupBy('x.PurchaseItemCode', 'pim2.Name', 'pim2.ConvRatio')
            ->orderBy('pim2.Name')
            ->get();

        return $result;
    }

    public function getFilteredStockReport(
        string $fromDate,
        string $toDate,
        string $storetype = 'Liquor',
        array $allitems = [],
        array $itemGroups = [],
        $kitchen = null
    ) {
        $propertyId = $this->propertyid;

        $query = DB::table('stock as S')
            ->leftJoin('itemmast as IM', function ($join) use ($propertyId) {
                $join->on('IM.Code', '=', 'S.Item')
                    ->where('IM.Property_ID', '=', $propertyId);
            })
            ->leftJoin('itemmast as PIM', function ($join) use ($propertyId) {
                $join->on('PIM.Code', '=', DB::raw("
                CASE
                    WHEN IM.PItemCode IS NOT NULL AND IM.PItemCode <> 0
                    THEN IM.PItemCode
                    ELSE IM.Code
                END
            "))
                    ->where('PIM.Property_ID', '=', $propertyId);
            })
            ->where('S.propertyid', $propertyId)
            ->whereBetween('S.vdate', [$fromDate, $toDate])
            ->where('S.delflag', '!=', 'Y')
            ->where(function ($q) {
                $q->where('IM.NType', 'Liquor')
                    ->orWhere('IM.cattype', 'Liquor');
            })
            ->select([
                'S.VDate',
                'S.VType',
                'S.VNo',
                'S.Item as StockItemCode',
                'S.qtyrec as QtyRec',
                'S.qtyiss as QtyIss',
                'S.Amount',
                DB::raw("
                CASE
                    WHEN IM.PItemCode IS NOT NULL AND IM.PItemCode <> 0
                    THEN IM.PItemCode
                    ELSE IM.Code
                END AS ParentItemCode
            "),
                DB::raw("COALESCE(PIM.Name, IM.Name) AS Name"),
                DB::raw("COALESCE(IM.wtqty, 50) as wtqty"),
                DB::raw("COALESCE(PIM.ConvRatio, IM.ConvRatio, 750) as ConvRatio")
            ]);

        if (!empty($kitchen)) {
            $query->where('S.departcode', $kitchen);
        }

        return $query
            ->orderBy('Name')
            ->orderBy('S.VDate')
            ->get();
    }

    public function getTradeOpeningStock($beforeDate)
    {
        $propertyid = $this->propertyid;
        // Subquery for itemmast grouped data
        $itemSub = DB::table('itemmast')
            ->selectRaw('
                Code,
                MAX(Name) as ItemName,
                MAX(NType) as NType,
                MAX(ItemType) as ItemType
            ')
            ->groupBy('Code');

        return DB::table('stock as S')
            ->leftJoinSub($itemSub, 'IM', function ($join) {
                $join->on('IM.Code', '=', 'S.Item');
            })

            ->selectRaw('
                S.VDate,
                S.Item,
                IM.ItemName,
                SUM(IFNULL(S.recdqty,0)) as TotalRec,
                SUM(IFNULL(S.qtyiss,0)) as TotalIss,
                SUM(IFNULL(S.recdqty,0) - IFNULL(S.qtyiss,0)) as OpeningStock
            ')

            ->where('S.propertyid', $propertyid)
            ->where('S.delflag', '!=', 'Y')
            ->where('S.VDate', '<', $beforeDate)
            ->where(function ($q) {
                $q->where('IM.NType', 'Trade Item')
                    ->orWhere('IM.ItemType', 'Store');
            })

            ->whereNotIn('S.vtype', ['KSREC', 'RQI', 'RQR', 'KSISS'])
            ->groupBy('S.Item', 'IM.ItemName')
            ->orderBy('IM.ItemName')
            ->get();
    }

    public function getTradeStockReport(
        $fromDate,
        $toDate,
        $item = [],
        $kitchen = null
    ) {
        $propertyid = $this->propertyid;

        $itemSub = DB::table('itemmast')
            ->selectRaw('
            Code,
            MAX(Name) as Name,
            MAX(NType) as NType,
            MAX(ItemType) as ItemType
        ')
            ->groupBy('Code');

        return DB::table('stock as S')
            ->leftJoinSub($itemSub, 'I', function ($join) {
                $join->on('S.Item', '=', 'I.Code');
            })
            ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
            ->leftJoin('depart as D', 'D.dcode', '=', 'S.departcode')

            ->select([
                'S.docid',
                'S.sno',
                'S.VDate',
                'S.VType',
                'S.VNo',
                'S.Amount',
                'S.Item',
                'I.Code',
                'I.Name',
                'S.recdqty as QtyRec',
                'S.qtyiss as QtyIss',
                'D.name as department_name'
            ])

            ->where('S.propertyid', $propertyid)
            ->where('S.delflag', '!=', 'Y')
            ->whereBetween('S.VDate', [$fromDate, $toDate])

            ->when(!empty($item), function ($q) use ($item) {
                $q->whereIn('S.Item', $item);
            })

            ->where(function ($q) {
                $q->where('I.NType', 'Trade Item')
                    ->orWhere('I.ItemType', 'Store');
            })

            ->when(!empty($kitchen), function ($q) use ($kitchen) {
                $q->where('S.departcode', $kitchen);
            })

            ->whereNotIn('S.vtype', [
                'KSREC',
                'RQI',
                'RQR',
                'KSISS'
            ])

            ->groupBy(
                'S.docid',
                'S.sno',
                'S.VDate',
                'S.VType',
                'S.VNo',
                'S.Amount',
                'S.Item',
                'I.Code',
                'I.Name',
                'S.recdqty',
                'S.qtyiss',
                'D.name'
            )

            ->orderBy('S.Item')
            ->orderBy('S.VDate')
            ->orderBy('S.VType')
            ->orderBy('S.VNo')
            ->get();
    }

    // public function getTradeStockReport(
    //     $fromDate,
    //     $toDate,
    //     $item = [],
    //     $kitchen = null
    // ) {
    //     $propertyid = $this->propertyid;
    //     $nType = 'Trade Item';
    //     $itemType = 'Store';
    //     $excludeVtypes = ['KSREC', 'RQI', 'RQR', 'KSISS'];
    //     return DB::table('stock as S')
    //         ->select([
    //             'S.VDate',
    //             'S.VType',
    //             'S.VNo',
    //             'S.Amount',
    //             'I.Name',
    //             'S.Item',
    //             'I.Code',
    //             'S.recdqty as qtyrec',
    //             'S.qtyiss',
    //             'D.name as department_name'
    //         ])

    //         ->leftJoin('itemmast as I', function ($join) use ($nType) {
    //             $join->on('S.Item', '=', 'I.Code')
    //                 ->where('I.NType', '=', $nType);
    //         })
    //         ->leftJoin('subgroup as SG', 'S.partycode', '=', 'SG.sub_code')
    //         ->leftJoin('stock as S1', function ($join) {
    //             $join->on('S.contradocid', '=', 'S1.docid')
    //                 ->on('S.ContraSno', '=', 'S1.Sno');
    //         })
    //         ->leftJoin('depart as D', 'D.dcode', '=', 'S.departcode')
    //         ->where('S.propertyid', $propertyid)
    //         ->where('S.delflag', '!=', 'Y')
    //         // Item Wish Filter
    //         ->whereIn('S.Item', $item)
    //         ->whereBetween('S.VDate', [$fromDate, $toDate])
    //         ->where(function ($q) use ($nType, $itemType) {
    //             $q->where('I.NType', $nType)
    //                 ->orWhere('I.ItemType', $itemType);
    //         })
    //         ->when(!empty($kitchen), function ($q) use ($kitchen) {
    //             $q->where('S.departcode', $kitchen);
    //         })
    //         ->when(!empty($excludeVtypes), function ($q) use ($excludeVtypes) {
    //             $q->whereNotIn('S.vtype', $excludeVtypes);
    //         })
    //         ->orderBy('S.Item')
    //         ->orderBy('S.VDate')
    //         ->orderBy('S.VType')
    //         ->orderBy('S.VNo')
    //         ->get();
    // }

    public function getManufacturedItemStockReport($fromDate, $toDate, $kitchen = null)
    {
        $propertyid = $this->propertyid;

        $query = DB::table('stock as S')
            ->leftJoin('itemmast as I', 'S.item', '=', 'I.Code')
            ->leftJoin('unitmast as U', 'S.unit', '=', 'U.ucode')
            ->leftJoin('depart as D', 'S.departcode', '=', 'D.dcode')
            ->where('S.propertyid', $propertyid)
            ->whereBetween('S.vdate', [$fromDate, $toDate])
            ->where('S.delflag', '!=', 'Y')
            // Only consider receipt vtypes for manufactured finished-item receipts
            ->whereIn('S.vtype', ['PBPC', 'PBPB', 'KSREC'])
            ->when(!empty($kitchen), function ($q) use ($kitchen) {
                $q->where('S.departcode', $kitchen);
            })
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                'I.name',
                'S.item',
                'U.name as unit_name',
                'S.qtyrec',
                'S.rate',
                'S.amount',
                'I.wtqty',
                'D.name as department_name'
            ])
            ->groupBy('S.id')
            ->orderBy('S.vdate')
            ->get();

        return $query;
    }

    // Return components/recipe items for a given parent finished item (Pitemcode)
    public function getManufacturedComponents(Request $request)
    {
        $pitem = $request->input('pitemcode');

        if (empty($pitem)) {
            return response()->json(['components' => []]);
        }

        $components = DB::table('itemmast')
            ->select('Code', 'Pitemcode', 'Name')
            ->where('Property_ID', $this->propertyid)
            ->where('Pitemcode', $pitem)
            ->where('ActiveYN', 'Y')
            ->groupBy('Code')
            ->orderBy('Name')
            ->get();

        return response()->json(['components' => $components]);
    }

    // Return finished item variants for a given parent Pitemcode
    public function getFinishedItemsByParent(Request $request)
    {
        $pitem = $request->input('pitemcode');

        if (empty($pitem)) {
            return response()->json(['finished' => []]);
        }

        $items = DB::table('itemmast')
            ->select('Code', 'Pitemcode', 'Name')
            ->where('Property_ID', $this->propertyid)
            ->where('Pitemcode', $pitem)
            ->where('ActiveYN', 'Y')
            ->groupBy('Code')
            ->orderBy('Name')
            ->get();

        return response()->json(['finished' => $items]);
    }

    // Receipts for manufactured finished items filtered by kitchen and date range
    public function getManufacturedReceipts(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $kitchen = $request->input('kitchen', null);
        $item = $request->input('item', null);

        $query = DB::table('stock as S')
            ->leftJoin('itemmast as I', 'S.item', '=', 'I.Code')
            ->leftJoin('unitmast as U', 'S.unit', '=', 'U.ucode')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->where('S.delflag', '!=', 'Y')
            ->whereIn('S.vtype', ['PBPC', 'PBPB', 'KSREC'])
            ->when(!empty($kitchen), function ($q) use ($kitchen) {
                $q->where('S.departcode', $kitchen);
            })
            ->when(!empty($item), function ($q) use ($item) {
                $q->where('S.item', $item);
            })
            ->select([
                'S.vdate',
                'S.vtype',
                'I.name',
                'S.item',
                'U.name as unit_name',
                'S.qtyrec',
                'S.rate',
                'S.amount',
                'S.id'
            ])
            ->groupBy('S.id')
            ->orderBy('S.vdate')
            ->get();

        return response()->json(['reportdata' => $query]);
    }

    // Consumption for manufactured item components by kitchen
    public function getManufacturedConsumption(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');
        $kitchen = $request->input('kitchen', null);
        $parent = $request->input('parent', null); // parent finished item
        $items = $request->input('items', []);

        // If parent provided, fetch its components
        if (!empty($parent)) {
            $items = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('Pitemcode', $parent)
                ->where('ActiveYN', 'Y')
                ->groupBy('Code')
                ->pluck('Code')
                ->toArray();
        }

        if (empty($items)) {
            return response()->json(['reportdata' => []]);
        }

        $query = DB::table('stock as S')
            ->leftJoin('itemmast as I', 'S.item', '=', 'I.Code')
            ->where('S.propertyid', $this->propertyid)
            ->whereBetween('S.vdate', [$fromdate, $todate])
            ->where('S.delflag', '!=', 'Y')
            ->when(!empty($kitchen), function ($q) use ($kitchen) {
                $q->where('S.departcode', $kitchen);
            })
            ->whereIn('S.item', $items)
            ->select([
                'S.vdate',
                'S.vtype',
                'S.vno',
                'I.name',
                'I.wtqty',
                'S.item',
                'S.qtyiss',
                DB::raw('S.qtyiss * I.wtqty as ConQty'),
                'S.rate',
                'S.amount',
                'S.id'
            ])
            ->groupBy('S.id')
            ->orderBy('S.vdate')
            ->get();

        return response()->json(['reportdata' => $query]);
    }


    public function getStockReport(Request $request)
    {
        // dd($request->all());

        $propertyId = $this->propertyid;
        $fromDate = $request->fromdate;
        $toDate = $request->todate;
        $rateType = $request->rate_type;
        $selectedGodowns = $request->godowns;

        $query = DB::table('stock as S')
            ->join('itemmast as I', function ($join) {
                $join->on('S.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })
            ->join('itemgrp as IG', function ($join) {
                $join->on('I.ItemGroup', '=', 'IG.code')
                    ->on('I.RestCode', '=', 'IG.restcode');
            })
            ->leftJoin('depart as D', 'S.godowncode', '=', 'D.dcode')
            ->leftJoin('unitmast as U', function ($join) use ($propertyId) {
                $join->on('S.recdunit', '=', 'U.ucode')
                    ->where('U.propertyid', '=', $propertyId);
            })
            ->leftJoin('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->where('S.propertyid', $propertyId)
            ->where('S.delflag', '!=', 'Y')
            ->whereBetween('S.vdate', [$fromDate, $toDate])
            ->whereIn('S.godowncode', $selectedGodowns)
            ->whereIn('VT.ncat', ['KSREC', 'KMREC', 'RQI'])
            ->groupBy('S.godowncode', 'S.item', 'S.recdunit')
            ->havingRaw('SUM(S.recdqty) > 0');

        if ($rateType === 'Actual') {
            $query->select([
                'S.item as Code',
                DB::raw('MAX(I.Name) as Item'),
                'S.godowncode',
                DB::raw('MAX(D.name) as Department'),
                DB::raw('SUM(S.RecdQty) as Qty'),
                DB::raw('CASE WHEN SUM(S.recdqty) = 0 THEN 0 ELSE SUM(S.amount) / SUM(S.recdqty) END AS Rate'),
                DB::raw('SUM(S.amount) as Amount'),
                DB::raw('MAX(U.name) as Unit'),
                DB::raw('MAX(IG.name) as ItemGrpName'),
                DB::raw('MAX(I.ItemGroup) as ItemGrpCode')
            ]);
        } else {
            $query->where('S.godowncode', '!=', 'PURC103');

            if ($rateType === 'Max') {
                $query->select([
                    DB::raw('MAX(S.item) as Code'),
                    DB::raw('MAX(I.Name) as Item'),
                    'S.godowncode',
                    DB::raw('MAX(D.name) as Department'),
                    DB::raw('SUM(S.recdqty) as Qty'),
                    DB::raw('IFNULL(MAX(S.rate), 0) as Rate'),
                    DB::raw('SUM(S.recdqty) * IFNULL(MAX(S.rate), 0) as Amount'),
                    DB::raw('MAX(U.name) as Unit'),
                    DB::raw('MAX(IG.name) as ItemGrpName'),
                    DB::raw('MAX(I.ItemGroup) as ItemGrpCode')
                ]);
            } elseif ($rateType === 'Average') {
                $query->select([
                    DB::raw('MAX(S.item) as Code'),
                    DB::raw('MAX(I.Name) as Item'),
                    'S.Godowncode',
                    DB::raw('MAX(D.name) as Department'),
                    DB::raw('SUM(S.recdqty) as Qty'),
                    DB::raw('CASE WHEN SUM(S.recdqty) = 0 THEN 0 ELSE IFNULL(SUM(S.amount), 0) / SUM(S.recdqty) END AS Rate'),
                    DB::raw('SUM(S.recdqty) * IFNULL(AVG(S.rate), 0) as Amount'),
                    DB::raw('MAX(U.name) as Unit'),
                    DB::raw('MAX(IG.name) as ItemGrpName'),
                    DB::raw('MAX(I.ItemGroup) as ItemGrpCode')
                ]);
            } elseif ($rateType === 'LastPurchase') {
                $query->select([
                    DB::raw('MAX(S.item) as Code'),
                    DB::raw('MAX(I.Name) as Item'),
                    'S.godowncode',
                    DB::raw('MAX(D.name) as Department'),
                    DB::raw('SUM(S.recdqty) as Qty'),
                    DB::raw('IFNULL(MAX(I.LPurRate), 0) as Rate'),
                    DB::raw('SUM(S.recdqty) * IFNULL(MAX(I.LPurRate), 0) as Amount'),
                    DB::raw('MAX(U.name) as Unit'),
                    DB::raw('MAX(IG.name) as ItemGrpName'),
                    DB::raw('MAX(I.ItemGroup) as ItemGrpCode')
                ]);
            }
        }

        $results = $query->orderBy('S.godowncode')
            ->orderBy('ItemGrpName')
            ->orderBy('Item')
            ->get();

        return response()->json($results);
    }
    public function purchaseregister(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            abort(404, 'Company not found');
        }

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $subgroups = DB::table('subgroup as SG')
            ->join('purch1 as P', function ($join) {
                $join->on('P.Party', '=', 'SG.sub_code')
                    ->on('P.propertyid', '=', 'SG.propertyid');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('P.vtype', '=', 'VT.v_type')
                    ->on('P.propertyid', '=', 'VT.propertyid');
            })
            ->whereIn('VT.category', ['PurchBill'])
            ->where('P.delflag', '<>', 'D')
            ->where('SG.propertyid', $this->propertyid)
            ->groupBy('SG.sub_code', 'SG.name')
            ->orderBy('SG.name', 'ASC')
            ->get(['name', 'sub_code']);

        $itemmast = ItemMast::where('Property_ID', $this->propertyid)
            // ->distinct()
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->orderBy('Name')
            ->get(['Name', 'Code']);
        $taxNames = DB::table('itemcatmast as ICM')
            ->join('taxstru as TS', 'ICM.TaxStru', '=', 'TS.str_code')
            ->where('ICM.propertyid', $this->propertyid)
            ->where('ICM.restcode', 'PURC' . $this->propertyid)
            ->distinct()
            ->get(['TS.name', 'ICM.TaxStru']);

        return view('property.purchaseregister', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'subgroups' => $subgroups,
            'itemmast' => $itemmast,
            'taxNames' => $taxNames
        ]);
    }

    public function finalpurchaseregister(Request $request)
    {
        $fromDate = $request->fromdate;
        $toDate   = $request->todate;

        $purchase_type = collect($request->purchase_type)->values()->all();
        $party         = collect($request->party)->values()->all();
        $item          = collect($request->items)->values()->all();

        $cashpurchac = inventoryparameter()->cashpurchaseac;

        $query = DB::table('purch1 as P')

            ->join('voucher_type as VT', function ($join) {
                $join->on('P.vtype', '=', 'VT.v_type')
                    ->on('P.propertyid', '=', 'VT.propertyid');
            })

            ->join('purch2 as P2', 'P.docid', '=', 'P2.docid')

            ->join('itemmast as I', function ($join) {
                $join->on('P2.item', '=', 'I.Code')
                    ->where('I.ItemType', '=', 'Store');
            })

            ->join('itemgrp as IG', 'I.ItemGroup', '=', 'IG.code')

            ->leftJoin('subgroup as SG1', 'SG1.sub_code', '=', 'P2.accode')

            ->leftJoin('subgroup as SG', function ($join) use ($cashpurchac) {
                $join->on(
                    DB::raw("
                    CASE 
                        WHEN P.vtype = 'PBC' THEN '{$cashpurchac}'
                        ELSE P.Party
                    END
                "),
                    '=',
                    'SG.sub_code'
                );
            })

            ->leftJoin('unitmast as U', 'U.ucode', '=', 'P2.recdunit')

            ->select(
                'P.docid',
                'P.vtype',
                'P.vno',

                DB::raw("CASE 
                WHEN P.vtype IN ('PBPC','EXPC') THEN P.gstno 
                ELSE IFNULL(SG.GSTIN, '') 
            END AS GSTNO"),

                DB::raw("DATE_FORMAT(P.vdate, '%d-%m-%Y') AS vdate"),
                'P.total',
                'P.addamt AS Addition',
                'P.dedamt AS Deduction',
                'P.discamt',
                'P.tax AS TaxAmt',
                'P.igst',
                'P.cgst',
                'P.sgst',
                'P.servicecharge AS SurAmt',
                'P.netamt',
                'P.partybillno',

                'I.Name AS Item',
                'IG.name AS ItemGroup',
                'SG1.name AS AcName',
                'SG.name AS PartyName',

                'P2.sno',
                'P2.qtyrec as qty',
                'U.name as recdunit',
                'P2.itemrate AS Rate',
                'P2.amount',

                'VT.ncat'
            )

            ->whereIn('VT.ncat', $purchase_type)
            ->where('P.propertyid', $this->propertyid)
            ->whereIn('I.Code', $item)
            ->where('P.delflag', '!=', 'Y')
            ->whereBetween('P.vdate', [$fromDate, $toDate]);

        if (!empty($party)) {
            $query->whereIn('P.Party', $party);
        }

        $results = $query->orderBy('P.vdate')
            ->orderBy('P.docid')
            ->get();



        return response()->json($results);
    }

    public function purchasesummary(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            abort(404, 'Company not found');
        }

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $subgroups = DB::table('subgroup as SG')
            ->join('purch1 as P', function ($join) {
                $join->on('P.Party', '=', 'SG.sub_code')
                    ->on('P.propertyid', '=', 'SG.propertyid');
            })
            ->join('voucher_type as VT', function ($join) {
                $join->on('P.vtype', '=', 'VT.v_type')
                    ->on('P.propertyid', '=', 'VT.propertyid');
            })
            ->whereIn('VT.category', ['PurchBill'])
            ->where('P.delflag', '<>', 'D')
            ->where('SG.propertyid', $this->propertyid)
            ->groupBy('SG.sub_code', 'SG.name')
            ->orderBy('SG.name')
            ->get(['name', 'sub_code']);

        $itemmast = ItemMast::where('Property_ID', $this->propertyid)
            // ->distinct()
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->orderBy('Name')
            ->get(['Name', 'Code']);

        // Godowns used in purchases for this property
        $godowns = DB::table('purch2 as P2')
            ->join('depart as D', 'P2.godcode', '=', 'D.dcode')
            ->join('purch1 as P1', 'P2.docid', '=', 'P1.docid')
            ->where('P1.propertyid', $this->propertyid)
            ->where('P1.delflag', '<>', 'D')
            ->whereNotNull('P2.godcode')
            ->where('P2.godcode', '<>', '')
            ->groupBy('P2.godcode', 'D.name')
            ->orderBy('D.name')
            ->get(['P2.godcode', 'D.name']);

        return view('property.purchasesummary', [
            'ncurdate'  => $this->ncurdate,
            'company'   => $company,
            'statename' => $statename,
            'subgroups' => $subgroups,
            'itemmast'  => $itemmast,
            'godowns'   => $godowns,
        ]);
    }

    public function finalpurchasesummary(Request $request)
    {
        $fromDate = $request->fromdate;
        $toDate   = $request->todate;

        $purchase_type = $request->purchase_type ? array_filter((array)$request->purchase_type) : [];
        $party         = $request->party ? array_filter((array)$request->party) : [];
        $items         = $request->items ? array_filter((array)$request->items) : [];
        $godowns       = $request->godowns ? array_filter((array)$request->godowns) : [];

        $data = DB::table('purch1 as P')
            ->select(
                'P.docid',
                'P.vtype',
                'P.vno',
                DB::raw("DATE_FORMAT(P.vdate, '%d-%m-%Y') AS vdate"),
                'P.Party',
                'P.netamt',
                'P.partybillno',
                'VT.ncat',
                'P.cashparty as PartyName',
                DB::raw("IFNULL(PG.ItemGroup,'') as ItemGroup"),
                DB::raw("IFNULL(PG.ItemGroupName,'') as ItemGroupName"),
                DB::raw("IFNULL(PG.ItemGroupTotal,0) as ItemGroupTotal"),
                DB::raw("IFNULL(SG.name, P.cashparty) as PartyName"),
            )

            // join voucher_type
            ->join('voucher_type as VT', function ($join) {
                $join->on('P.vtype', '=', 'VT.v_type')
                    ->on('P.propertyid', '=', 'VT.propertyid');
            })

            // join subquery (PG)
            ->joinSub(
                DB::table('purch2')
                    ->select(
                        'purch2.docid',
                        'itemgrp.name as ItemGroupName',
                        DB::raw('MAX(itemgrp.code) as ItemGroup'),
                        DB::raw('SUM(IFNULL(purch2.amount,0) - IFNULL(purch2.discamt,0)) as ItemGroupTotal')
                    )
                    ->join('itemmast', function ($join) {
                        $join->on('itemmast.Code', '=', 'purch2.item')
                            ->where('itemmast.ItemType', '=', 'Store');
                    })
                    ->join('itemgrp', 'itemmast.ItemGroup', '=', 'itemgrp.code')
                    ->when(!empty($items), function ($query) use ($items) {
                        return $query->whereIn('purch2.item', $items);
                    })
                    ->when(!empty($godowns), function ($query) use ($godowns) {
                        return $query->whereIn('purch2.godcode', $godowns);
                    })
                    ->groupBy('purch2.docid', 'itemgrp.name'),
                'PG',
                function ($join) {
                    $join->on('PG.docid', '=', 'P.docid');
                }
            )

            // join subgroup
            ->join('subgroup as SG', 'P.Party', '=', 'SG.sub_code')

            // where conditions
            ->whereIn('VT.category', ['PurchBill'])
            ->where('P.delflag', '<>', 'D')
            ->where('P.propertyid', $this->propertyid)
            ->whereBetween('P.vdate', [$fromDate, $toDate])
            ->when(!empty($purchase_type), function ($query) use ($purchase_type) {
                return $query->whereIn('P.vtype', $purchase_type);
            })
            ->when(!empty($party), function ($query) use ($party) {
                return $query->whereIn('P.Party', $party);
            })
            // order by
            ->orderBy('P.vdate')
            ->orderBy('P.cashparty')
            ->orderBy('P.vno')
            ->get();

        return response()->json($data);
    }
    public function pendingindent(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            abort(404, 'Company not found');
        }

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $depart = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            // ->where('activeYN', 'Y')
            // ->whereNotNull('rest_type')
            ->whereNotIn('nature', [
                'Outlet',
                'Room Service',
            ])
            ->pluck('name');




        $itemmast = ItemMast::where('ActiveYN', 'Y')
            ->where('Property_ID', $this->propertyid)
            ->distinct()
            ->pluck('Name');

        return view('property.pendingindent', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'depart' => $depart,
            'itemmast' => $itemmast,
        ]);
    }
    public function finalpendingindent(Request $request)
    {
        $fromDate = $request->fromdate ?? Carbon::now()->subMonth()->format('Y-m-d');
        $toDate   = $request->todate   ?? Carbon::now()->format('Y-m-d');

        $departments = $request->depart ?? [];
        $items       = $request->items ?? [];

        $query = DB::table('indent as I')
            ->join('indent1 as I1', 'I.docid', '=', 'I1.docid')
            ->join('depart as D', 'I.department', '=', 'D.dcode')
            ->join('itemmast as IM', function ($join) {
                $join->on('I1.item', '=', 'IM.Code')
                    ->where('IM.ItemType', 'Store');
            })
            ->join('unitmast as U', 'I1.unit', '=', 'U.ucode')
            ->select(
                'I.vno as IndNo',
                DB::raw("DATE_FORMAT(I.vdate,'%d/%m/%Y') as Date"),
                'I.remarks as Remark',
                'D.name as Department',
                'IM.Name as ItemName',
                'I1.specification as Specification',
                'I1.qty as Qty',
                'U.name as Unit',
                'I1.rate as Rate',
                'I1.amount as Amount'
            )
            ->where('I.propertyid', $this->propertyid)
            ->whereBetween('I.vdate', [$fromDate, $toDate])
            ->whereNotExists(function ($q) {
                $q->select(DB::raw(1))
                    ->from('porder1 as P')
                    ->whereColumn('P.indentdocid', 'I1.docid')
                    ->whereColumn('P.indentsno', 'I1.sno');
            })
            ->whereIn('I.vtype', function ($q) {
                $q->select('v_type')
                    ->from('voucher_type')
                    ->where('ncat', 'PIND');
            });

        if (!empty($departments)) {
            $query->whereIn('D.name', $departments);
        }

        if (!empty($items)) {
            $query->whereIn('IM.Name', $items);
        }

        return response()->json($query->orderBy('I.vno')->get());
    }
    public function printpendingindent(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $fromDate = $request->query('fromdate', Carbon::now()->subMonth()->format('Y-m-d'));
        $toDate   = $request->query('todate', Carbon::now()->format('Y-m-d'));

        $departments = $request->query('depart', []);
        $items       = $request->query('items', []);

        $query = DB::table('indent as I')
            ->join('indent1 as I1', 'I.docid', '=', 'I1.docid')
            ->join('depart as D', 'I.department', '=', 'D.dcode')
            ->join('itemmast as IM', function ($join) {
                $join->on('I1.item', '=', 'IM.Code')
                    ->where('IM.ItemType', 'Store');
            })
            ->join('unitmast as U', 'I1.unit', '=', 'U.ucode')
            ->select(
                'I.vno as IndNo',
                DB::raw("DATE_FORMAT(I.vdate,'%d/%m/%Y') as Date"),
                'I.remarks as Remark',
                'D.name as Department',
                'IM.Name as ItemName',
                'I1.specification as Specification',
                'I1.qty as Qty',
                'U.name as Unit',
                'I1.rate as Rate',
                'I1.amount as Amount'
            )
            ->where('I.propertyid', $this->propertyid)
            ->whereBetween('I.vdate', [$fromDate, $toDate])
            ->whereNotExists(function ($q) {
                $q->select(DB::raw(1))
                    ->from('porder1 as P')
                    ->whereColumn('P.indentdocid', 'I1.docid')
                    ->whereColumn('P.indentsno', 'I1.sno');
            })
            ->whereIn('I.vtype', function ($q) {
                $q->select('v_type')
                    ->from('voucher_type')
                    ->where('ncat', 'PIND');
            });

        if (!empty($departments)) {
            $query->whereIn('D.name', $departments);
        }

        if (!empty($items)) {
            $query->whereIn('IM.Name', $items);
        }

        $reportData = $query->orderBy('I.vno')->get();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.pendingindent', [
            'company'    => $company,
            'reportData' => $reportData,
            'fromDate'   => $fromDate,
            'toDate'     => $toDate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('pending-indent-report.pdf');
    }

    public function pendingpurchaseorder(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            abort(404, 'Company not found');
        }

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $subgroups = DB::table('subgroup')
            ->where('nature', 'supplier')
            ->where('propertyid', $this->propertyid)
            ->get(['name', 'sub_code']);

        $itemmast = ItemMast::where('Property_ID', $this->propertyid)
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->orderBy('Name')
            ->pluck('Name', 'Code'); // First arg is Value, second is Key

        return view('property.pendingpurchaseorder', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
            'subgroups' => $subgroups,
            'itemmast' => $itemmast,
        ]);
    }
    public function finalpendingpurchaseorder(Request $request)
    {
        try {
            $fromDate = $request->fromdate ?? Carbon::now()->subMonth()->format('Y-m-d');
            $toDate   = $request->todate   ?? Carbon::now()->format('Y-m-d');

            $partyCodes = $request->party ?? [];
            $itemCodes  = $request->items ?? [];

            $query = DB::table('porder as PO')
                ->select(
                    'PO.vno as PONo',
                    'PO.vdate',
                    'PO.exp_delivery',
                    'S.name as PartyName',
                    'I.Name as ItemName',
                    'PO1.specification as Specification',
                    'PO1.qty as Qty',
                    'U.name as UnitName',
                    'PO1.rate as Rate',
                    'PO1.amount as Amount'
                )
                ->join('porder1 as PO1', 'PO.docid', '=', 'PO1.docid')
                ->join('unitmast as U', 'PO1.unit', '=', 'U.ucode')
                ->join('itemmast as I', function ($join) {
                    $join->on('PO1.itemcode', '=', 'I.Code')
                        ->where('I.ItemType', 'Store');
                })
                ->join('subgroup as S', 'PO.partycode', '=', 'S.sub_code')
                ->where('PO.propertyid', $this->propertyid)
                ->whereBetween('PO.vdate', [$fromDate, $toDate])
                ->whereNotExists(function ($sub) {
                    $sub->select(DB::raw(1))
                        ->from('stock as ST')
                        ->whereColumn('ST.contradocid', 'PO1.docid')
                        ->whereColumn('ST.contrasno', 'PO1.sno');
                });

            // ðŸ”¹ Party filter
            if (!empty($partyCodes)) {
                $query->whereIn('S.sub_code', $partyCodes);
            }

            // ðŸ”¹ Item filter
            if (!empty($itemCodes)) {
                $query->whereIn('I.Code', $itemCodes);
            }

            $data = $query
                ->orderBy('PO.vno')
                ->get();

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json([
                'error'   => $e->getMessage(),
                'sql'     => isset($query) ? $query->toSql() : '',
            ], 500);
        }
    }

    public function printpendingpurchaseorder(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            return redirect()->back()->with('error', 'Company not found');
        }

        $fromDate   = $request->query('fromdate', Carbon::now()->subMonth()->format('Y-m-d'));
        $toDate     = $request->query('todate',   Carbon::now()->format('Y-m-d'));
        $partyCodes = $request->query('party', []);
        $itemCodes  = $request->query('items', []);

        // Ensure arrays
        if (!is_array($partyCodes)) $partyCodes = explode(',', $partyCodes);
        if (!is_array($itemCodes))  $itemCodes  = explode(',', $itemCodes);
        $partyCodes = array_filter($partyCodes);
        $itemCodes  = array_filter($itemCodes);

        $query = DB::table('porder as PO')
            ->select(
                'PO.vno as PONo',
                'PO.vdate',
                'PO.exp_delivery',
                'S.name as PartyName',
                'I.Name as ItemName',
                'PO1.specification as Specification',
                'PO1.qty as Qty',
                'U.name as UnitName',
                'PO1.rate as Rate',
                'PO1.amount as Amount'
            )
            ->join('porder1 as PO1', 'PO.docid', '=', 'PO1.docid')
            ->join('unitmast as U', 'PO1.unit', '=', 'U.ucode')
            ->join('itemmast as I', function ($join) {
                $join->on('PO1.itemcode', '=', 'I.Code')
                    ->where('I.ItemType', 'Store');
            })
            ->join('subgroup as S', 'PO.partycode', '=', 'S.sub_code')
            ->where('PO.propertyid', $this->propertyid)
            ->whereBetween('PO.vdate', [$fromDate, $toDate])
            ->whereNotExists(function ($sub) {
                $sub->select(DB::raw(1))
                    ->from('stock as ST')
                    ->whereColumn('ST.contradocid', 'PO1.docid')
                    ->whereColumn('ST.contrasno', 'PO1.sno');
            });

        if (!empty($partyCodes)) {
            $query->whereIn('S.sub_code', $partyCodes);
        }
        if (!empty($itemCodes)) {
            $query->whereIn('I.Code', $itemCodes);
        }

        $reportData = $query->orderBy('PO.vno')->get();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView(
            'property.print.printpendingpurchaseorder',
            [
                'company'    => $company,
                'reportData' => $reportData,
                'fromDate'   => $fromDate,
                'toDate'     => $toDate,
            ]
        )->setPaper('a4', 'landscape');

        return $pdf->stream('pending-purchase-order.pdf');
    }

    public function printsupplierwisepurchase()
    {
        $ncurdate    = Carbon::parse($this->ncurdate);
        $year        = (int) $ncurdate->format('Y');
        $month       = (int) $ncurdate->format('m');
        $fyStartYear = ($month >= 4) ? $year : $year - 1;
        $startOfYear = $fyStartYear . '-04-01';
        $today       = Carbon::today()->toDateString();

        $months = [];
        $cursor = Carbon::parse($startOfYear)->startOfMonth();
        $end    = Carbon::parse($today)->startOfMonth();
        while ($cursor->lte($end)) {
            $months[] = $cursor->format('Y-m');
            $cursor->addMonth();
        }
        $months = array_reverse($months);

        $rows = DB::table('purch1 as P')
            ->join('subgroup as S', 'P.party', '=', 'S.sub_code')
            ->where('P.propertyid', $this->propertyid)
            ->whereIn('P.delflag', ['N', ''])
            ->whereDate('P.vdate', '>=', $startOfYear)
            ->whereDate('P.vdate', '<=', $today)
            ->groupBy('S.name', DB::raw("DATE_FORMAT(P.vdate, '%Y-%m')"))
            ->select(
                'S.name as SupplierName',
                DB::raw("DATE_FORMAT(P.vdate, '%Y-%m') as Month"),
                DB::raw('SUM(P.netamt) as TotalAmt'),
                DB::raw('COUNT(DISTINCT P.vno) as NoofBills')
            )
            ->get();

        $pivoted = [];
        foreach ($rows as $row) {
            $pivoted[$row->SupplierName][$row->Month] = [
                'amt'   => $row->TotalAmt,
                'bills' => $row->NoofBills,
            ];
        }
        ksort($pivoted);

        $company = \App\Models\Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.supplierwisepurchase', [
            'company'     => $company,
            'pivoted'     => $pivoted,
            'months'      => $months,
            'startOfYear' => $startOfYear,
            'today'       => $today,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('supplier-wise-purchase.pdf');
    }

    public function printminiusstock()
    {
        $today = Carbon::parse($this->ncurdate)->toDateString();

        $data = DB::table('stock as S')
            ->join('itemmast as I', 'S.item', '=', 'I.Code')
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->join('unitmast as U', 'S.unit', '=', 'U.ucode')  // unit name ke liye
            ->where('S.propertyid', $this->propertyid)
            ->whereDate('S.vdate', '<=', $today)
            ->where('I.ItemType', 'Store')
            ->where('S.godowncode', 'PURC' . $this->propertyid)
            ->whereIn('S.delflag', ['N', ''])
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'PRR', 'PRC', 'STOP', 'MRE', 'RQI', 'RQR', 'KSREC', 'KSISS', 'KMREC', 'KMISS'])
            ->groupBy('S.item', 'I.Name', 'U.name')
            ->select('I.Name', DB::raw('(SUM(S.recdqty) - SUM(S.issqty)) as BalQty'), 'U.name as UnitName')
            ->havingRaw('(SUM(S.recdqty) - SUM(S.issqty)) < 0')
            ->orderBy('I.Name')
            ->get();

        $company = \App\Models\Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('property.print.miniusstock', [
            'company' => $company,
            'data'    => $data,
            'today'   => $today,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('minus-stock-report.pdf');
    }

    public function supplierwisepurchase()
    {
        // Financial year start directly calculate karo (April 1)
        $ncurdate    = Carbon::parse($this->ncurdate);
        $year        = (int) $ncurdate->format('Y');
        $month       = (int) $ncurdate->format('m');
        // Agar current month April (4) ya baad ka hai to financial year isi saal April 1 se shuru
        // Agar January-March hai to pichle saal April 1 se shuru
        $fyStartYear = ($month >= 4) ? $year : $year - 1;
        $startOfYear = $fyStartYear . '-04-01';   // e.g. 2026-04-01

        $today = Carbon::today()->toDateString();  // actual system date (May 29, 2026)

        // Generate list of months from financial year start to today
        $months = [];
        $cursor = Carbon::parse($startOfYear)->startOfMonth();
        $end    = Carbon::parse($today)->startOfMonth();
        while ($cursor->lte($end)) {
            $months[] = $cursor->format('Y-m');   // e.g. "2026-04", "2026-05"
            $cursor->addMonth();
        }
        $months = array_reverse($months);
        // Fetch raw data: supplier + month + totals
        $rows = DB::table('purch1 as P')
            ->join('subgroup as S', 'P.party', '=', 'S.sub_code')
            ->where('P.propertyid', $this->propertyid)
            ->whereIn('P.delflag', ['N', ''])
            ->whereDate('P.vdate', '>=', $startOfYear)
            ->whereDate('P.vdate', '<=', $today)
            ->groupBy('S.name', DB::raw("DATE_FORMAT(P.vdate, '%Y-%m')"))
            ->select(
                'S.name as SupplierName',
                DB::raw("DATE_FORMAT(P.vdate, '%Y-%m') as Month"),
                DB::raw('SUM(P.netamt) as TotalAmt'),
                DB::raw('COUNT(DISTINCT P.vno) as NoofBills')
            )
            ->get();

        // Pivot: [ SupplierName => [ 'YYYY-MM' => ['amt'=>x, 'bills'=>y], ... ] ]
        $pivoted = [];
        foreach ($rows as $row) {
            $pivoted[$row->SupplierName][$row->Month] = [
                'amt'   => $row->TotalAmt,
                'bills' => $row->NoofBills,
            ];
        }
        ksort($pivoted);  // sort suppliers alphabetically

        $company   = \App\Models\Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = \App\Models\States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code ?? '')
            ->value('name');

        return view('property.supplierwisepurchase', compact('pivoted', 'months', 'startOfYear', 'company', 'statename'));
    }

    public function miniusstock()
    {
        $today = Carbon::parse($this->ncurdate)->toDateString();

        $data = DB::table('stock as S')
            ->join('itemmast as I', 'S.item', '=', 'I.Code')
            ->join('voucher_type as VT', function ($join) {
                $join->on('S.vtype', '=', 'VT.v_type')
                    ->on('S.propertyid', '=', 'VT.propertyid');
            })
            ->join('unitmast as U', 'S.unit', '=', 'U.ucode')  // unit name ke liye
            ->where('S.propertyid', $this->propertyid)
            ->whereDate('S.vdate', '<=', $today)          // aaj tak (current date)
            ->where('I.ItemType', 'Store')
            ->where('S.godowncode', 'PURC' . $this->propertyid)
            ->whereIn('S.delflag', ['N', ''])
            ->whereIn('VT.ncat', ['PBC', 'PBR', 'PRR', 'PRC', 'STOP', 'MRE', 'RQI', 'RQR', 'KSREC', 'KSISS', 'KMREC', 'KMISS'])
            ->groupBy('S.item', 'I.Name', 'U.name')
            ->select(
                'I.Name',
                DB::raw('(SUM(S.recdqty) - SUM(S.issqty)) as BalQty'),
                'U.name as UnitName'
            )
            ->havingRaw('(SUM(S.recdqty) - SUM(S.issqty)) < 0')  // sirf minus/negative stock
            ->orderBy('I.Name')
            ->get();

        $company   = \App\Models\Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = \App\Models\States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code ?? '')
            ->value('name');

        return view('property.miniusstock', compact('data', 'company', 'statename', 'today'));
    }

    public function printrequistionslip(Request $request, $docid)
    {
        // Permission check (optional)
        // $permission = $this->revokeopen(161117);
        // if (is_null($permission) || $permission->print == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        // Sir ki query - Requisition slip data fetch
        $requisitionData = DB::table('indent as I1')
            ->select([
                'I1.vtime',
                'I1.vdate',
                'I1.remarks as Remark',
                'G.name AS Location',
                'I1.vno as SlipNo',
                'itemmast.Name',
                'indent1.qty',
                'unitmast.name as unit',
                'indent1.sno',
                'G1.name AS Godown',
                'indent1.rate',
                'indent1.amount',
                'indent1.balqty as stock'
            ])
            ->leftJoin('indent1', 'I1.docid', '=', 'indent1.docid')
            ->leftJoin('godown_mast as G', 'G.scode', '=', 'I1.department')
            ->leftJoin('godown_mast as G1', 'G1.scode', '=', 'I1.godown')
            ->leftJoin('itemmast', function ($join) {
                $join->on('indent1.item', '=', 'itemmast.Code')
                    ->where('itemmast.ItemType', '=', 'Store');
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('indent1.unit', '=', 'unitmast.ucode')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->where('I1.propertyid', $this->propertyid)
            ->where('I1.docid', $docid)
            ->orderBy('indent1.sno')
            ->get();

        // Company details for header
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Logo path logic (same as daily report)
        $logoPath = null;
        if (!empty($company->logo) && Storage::disk('public')->exists('admin/property_logo/' . $company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $company->logo);
        }

        // Return print view
        return view('property.printrequistionslip', [
            'requisitionData' => $requisitionData,
            'comp' => $company,
            'statename' => $statename,
            'logoPath' => $logoPath,
            'username' => Auth::user()->name ?? ''
        ]);
    }

    public function printstockissuerequisition(Request $request, $docid)
    {
        // Permission check (optional)
        // $permission = $this->revokeopen(161119);
        // if (is_null($permission) || $permission->print == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        // Stock Issue Requisition data fetch from stock table (vtype='RQR')
        $stockIssueData = DB::table('stock as rqr')
            ->select([
                'rqr.docid',
                'rqr.vno as IssueNo',
                'rqr.vdate as IssueDate',
                'rqr.vtime',
                'rqr.vtype',
                'rqr.remarks as Remark',
                'gfrom.name AS FromGodown',
                'gto.name AS ToLocation',
                'itemmast.Name as ItemName',
                'rqr.qtyiss as IssuedQty',
                'unitmast.name as Unit',
                'rqr.rate as Rate',
                'rqr.amount as Amount',
                'rqr.sno'
            ])
            ->leftJoin('godown_mast as gfrom', function ($join) {
                $join->on('rqr.godowncode', '=', 'gfrom.scode')
                    ->on('gfrom.propertyid', '=', 'rqr.propertyid');
            })
            ->leftJoin('godown_mast as gto', function ($join) {
                $join->on('rqr.departcode', '=', 'gto.scode')
                    ->on('gto.propertyid', '=', 'rqr.propertyid');
            })
            ->leftJoin('itemmast', function ($join) {
                $join->on('rqr.item', '=', 'itemmast.Code')
                    ->where('itemmast.ItemType', '=', 'Store');
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('rqr.unit', '=', 'unitmast.ucode')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->where('rqr.propertyid', $this->propertyid)
            ->where('rqr.vtype', 'RQR')
            ->where('rqr.docid', $docid)
            ->where('rqr.delflag', '!=', 'Y')
            ->orderBy('rqr.sno')
            ->get();

        // Check if data exists
        if ($stockIssueData->isEmpty()) {
            return redirect()->back()->with('error', 'No Data Found - Stock Issue Requisition data not available for this document.');
        }

        // Company details for header
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Logo path logic
        $logoPath = null;
        if (!empty($company->logo) && Storage::disk('public')->exists('admin/property_logo/' . $company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $company->logo);
        }

        // Return print view
        return view('property.printstockissuerequisition', [
            'stockIssueData' => $stockIssueData,
            'comp' => $company,
            'statename' => $statename,
            'logoPath' => $logoPath,
            'username' => Auth::user()->name ?? ''
        ]);
    }

    public function printstocktransfer(Request $request, $vno)
    {
        // Permission check (optional)
        // $permission = $this->revokeopen(161116);
        // if (is_null($permission) || $permission->print == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        // Stock Transfer data fetch from stock table (vtype='KSREC' and 'KSISS')
        $stockTransferData = DB::table('stock as rec')
            ->select([
                'rec.vno as TransferNo',
                'rec.vdate as TransferDate',
                'rec.vtime',
                'rec.vtype',
                'gfrom.name AS FromGodown',
                'gto.name AS ToLocation',
                'itemmast.Name as ItemName',
                'rec.qtyrec as ReceivedQty',
                'iss.qtyiss as IssuedQty',
                'unitmast.name as Unit',
                'rec.rate as Rate',
                'rec.amount as Amount',
                'rec.sno',
                'rec.remarks as Remark',
                'rec.delflag'
            ])
            ->join('stock as iss', function ($join) {
                $join->on('rec.vno', '=', 'iss.vno')
                    ->on('rec.propertyid', '=', 'iss.propertyid')
                    ->on('rec.sno', '=', 'iss.sno')
                    ->where('rec.vtype', '=', 'KSREC')
                    ->where('iss.vtype', '=', 'KSISS');
            })

            ->leftJoin('godown_mast as gfrom', function ($join) {
                $join->on('iss.departcode', '=', 'gfrom.scode')
                    ->on('gfrom.propertyid', '=', 'rec.propertyid');
            })
            ->leftJoin('godown_mast as gto', function ($join) {
                $join->on('rec.godowncode', '=', 'gto.scode')
                    ->on('gto.propertyid', '=', 'rec.propertyid');
            })
            ->leftJoin('itemmast', function ($join) {
                $join->on('rec.item', '=', 'itemmast.Code')
                    ->where('itemmast.ItemType', '=', 'Store');
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('rec.unit', '=', 'unitmast.ucode')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->where('rec.propertyid', $this->propertyid)
            ->where('rec.vno', $vno)
            // ->where('rec.delflag', 'N')
            // ->where('iss.delflag', 'N')
            ->orderBy('rec.sno')
            ->get();

        // Check if data exists
        if ($stockTransferData->isEmpty()) {
            return redirect()->back()->with('error', 'No Data Found - Stock Transfer data not available for this voucher.');
        }

        // Company details for header
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Logo path logic
        $logoPath = null;
        if (!empty($company->logo) && Storage::disk('public')->exists('admin/property_logo/' . $company->logo)) {
            $logoPath = storage_path('app/public/admin/property_logo/' . $company->logo);
        }

        // Return print view
        return view('property.printstocktransfer', [
            'stockTransferData' => $stockTransferData,
            'comp' => $company,
            'statename' => $statename,
            'logoPath' => $logoPath,
            'username' => Auth::user()->name ?? ''
        ]);
    }



    public function stockmovementreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.stockmovementreport', [
            'ncurdate'  => $this->ncurdate,
            'company'   => $company,
            'statename' => $statename,
        ]);
    }

    public function getstockmovementdata(Request $request)
    {
        $fromdate  = $request->input('fromdate');
        $todate    = $request->input('todate');
        $itemsearch = $request->input('itemsearch', '');
        $propertyid = $this->propertyid;

        $data = DB::select(
            "
            SELECT
                S.VDate,
                S.VType,
                S.VNo,
                S.Item,
                I.Name AS ItemName,
                CASE
                    WHEN S.VType IN ('RQR','BBA','KSISS') THEN D.Name
                    ELSE NULL
                END AS FromDepartment,
                CASE
                    WHEN S.VType = 'RQR' THEN (
                        SELECT D2.Name
                        FROM stock S2
                        LEFT JOIN depart D2 ON S2.DepartCode = D2.DCode AND S2.PropertyID = D2.PropertyID
                        WHERE S2.PropertyID = S.PropertyID
                          AND S2.VType = 'RQI'
                          AND S2.VNo = S.VNo
                          AND S2.Item = S.Item
                        LIMIT 1
                    )
                    WHEN S.VType IN ('PBPC','PBPB','KSREC') THEN D.Name
                    ELSE NULL
                END AS ToDepartment,
                CASE
                    WHEN S.VType IN ('PBPC','PBPB','KSREC') THEN IFNULL(S.QtyRec, 0)
                    
                    ELSE 0
                END AS InQty,
                CASE
                    WHEN S.VType IN ('RQR','BBA','KSISS') THEN IFNULL(S.QtyIss, 0)
                    ELSE 0
                END AS OutQty,
                SUM(
                    CASE
                        WHEN S.VType IN ('PBPC','PBPB','KSREC') THEN IFNULL(S.QtyRec, 0)
                        WHEN S.VType IN ('RQR','BBA','KSISS')   THEN -IFNULL(S.QtyIss, 0)
                        ELSE 0
                    END
                ) OVER (
                    PARTITION BY S.Item
                    ORDER BY S.VDate, S.VNo, S.Sno
                ) AS TotalRunningBalance,
                SUM(
                    CASE
                        WHEN S.VType IN ('PBPC','PBPB','KSREC') THEN IFNULL(S.QtyRec, 0)
                        WHEN S.VType IN ('RQR','BBA','KSISS')   THEN -IFNULL(S.QtyIss, 0)
                        ELSE 0
                    END
                ) OVER (
                    PARTITION BY S.Item, S.DepartCode
                    ORDER BY S.VDate, S.VNo, S.Sno
                ) AS DepartmentBalance
            FROM stock S
            LEFT JOIN itemmast I  ON S.Item = I.Code AND S.PropertyID = I.Property_ID
            LEFT JOIN depart D    ON S.DepartCode = D.DCode AND S.PropertyID = D.PropertyID
            WHERE S.PropertyID = ?
              AND S.delflag != 'Y'
              AND S.VType <> 'RQI'
              AND S.VDate BETWEEN ? AND ?
              " . ($itemsearch ? "AND I.Name LIKE ?" : "") . "
            GROUP BY S.id
            HAVING InQty > 0 OR OutQty > 0
            ORDER BY I.Name, S.VDate, S.VNo, S.Sno
        ",
            $itemsearch
                ? [$propertyid, $fromdate, $todate, "%$itemsearch%"]
                : [$propertyid, $fromdate, $todate]
        );

        return response()->json($data);
    }


    // METHOD 1: taxreportinv()
    // ------------------------------------------------------------------------

    public function taxreportinv(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        if (!$company) {
            abort(404, 'Company not found');
        }

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $itemgrp = DB::table('subgroup')
            ->where('nature', 'supplier')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name')
            ->get(['name', 'sub_code']);

        return view('property.taxreportinv', [
            'company'   => $company,
            'statename' => $statename,
            'ncurdate'  => $this->ncurdate,
            'itemgrp'   => $itemgrp,
        ]);
    }

    // ------------------------------------------------------------------------
    // // METHOD 2: taxreportinvtaxcodes()
    // ------------------------------------------------------------------------

    public function taxreportinvtaxcodes(Request $request)
    {
        // kept for route compatibility â€” not used anymore
        return response()->json([]);
    }

// ------------------------------------------------------------------------
// // METHOD 3: taxreportinvdata()
// ------------------------------------------------------------------------

    /**
     * Purchase Tax Report â€” one row per purch2 item line.
     *
     * Tax split logic (purch2.taxper based â€” works for ALL properties):
     *   taxper = 2.5  â†’ 5%  slab  (CGST 2.5  + SGST 2.5)
     *   taxper = 6    â†’ 12% slab  (CGST 6    + SGST 6)
     *   taxper = 9    â†’ 18% slab  (CGST 9    + SGST 9)
     *   taxper = 14   â†’ 28% slab  (CGST 14   + SGST 14)
     *   taxper = 20   â†’ 40% slab  (CGST 14   + SGST 14 + Cess 12)
     *
     * purch2.taxamt stores ONE side (CGST = SGST), so:
     *   CGST amt = taxamt, SGST amt = taxamt, Total tax = taxamt * 2
     *   Exception: 40% slab â€” taxamt * 14/20 = CGST/SGST, taxamt * 12/20 = Cess
     */
    public function taxreportinvdata(Request $request)
    {
        $fromdate   = $request->fromdate;
        $todate     = $request->todate;
        $itemtype   = $request->itemtype ?? 'All';
        $parties    = $request->parties  ?? [];
        $propertyid = $this->propertyid;
        $restcode   = 'PURC' . $propertyid;

        // ItemType filter
        $itemTypeCondition = '';
        if ($itemtype === 'Taxable') {
            $itemTypeCondition = 'AND P2.taxamt > 0';
        } elseif ($itemtype === 'NonTaxable') {
            $itemTypeCondition = 'AND (P2.taxamt = 0 OR P2.taxamt IS NULL)';
        }

        // Party filter
        $partyCondition = '';
        $partyBindings  = [];
        if (!empty($parties)) {
            $placeholders   = implode(',', array_fill(0, count($parties), '?'));
            $partyCondition = "AND P.Party IN ($placeholders)";
            $partyBindings  = array_values($parties);
        }

        $sql = "
            SELECT
                P.DocId,
                P.vno                                                                       AS TaxInvoiceNo,
                DATE_FORMAT(P.vdate, '%d/%m/%Y')                                            AS DateOfTaxInvoice,
                P.PartyBillNo,
                DATE_FORMAT(P.PartyBillDT, '%d/%m/%Y')                                     AS PartyBillDT,
                IM.Name                                                                     AS ItemName,
                IM.HSNCode                                                                  AS CommodityCode,
                CONCAT(CAST(P2.QtyRec AS CHAR), ' ', IFNULL(U.name,''))                    AS QtyMeasure,
                P2.SNo,
                -- item level amounts
                P2.amount                                                                   AS ItemAmount,
                P2.taxamt                                                                   AS ItemTaxAmt,
                P2.taxper                                                                   AS ItemTaxPer,
                -- bill header fields (shown once per bill in frontend)
                P.Taxable                                                                   AS BillTaxable,
                P.NonTaxable                                                                AS BillNonTaxable,
                P.Total                                                                     AS BillTotal,
                P.Tax                                                                       AS BillTax,
                P.RoundOff                                                                  AS BillRoundOff,
                P.NetAmt                                                                    AS BillNetAmt,
                S.Name                                                                      AS VendorName,
                CONCAT(RTRIM(IFNULL(S.Address,'')), ', ', RTRIM(IFNULL(C.CityName,'')))    AS VendorAddress,
                C.CityName                                                                  AS City,
                ST.Name                                                                     AS State,
                S.Pin,
                CASE WHEN P.VTYPE = 'PBPC' THEN P.GSTNO ELSE S.GSTIN END                   AS Tin,

                -- 5% slab (taxper = 2.5)
                SUM(CASE WHEN P2.taxper = 2.5 THEN P2.amount  ELSE 0 END)                  AS taxable_5,
                SUM(CASE WHEN P2.taxper = 2.5 THEN P2.taxamt  ELSE 0 END)                  AS cgst_2_5,
                SUM(CASE WHEN P2.taxper = 2.5 THEN P2.taxamt  ELSE 0 END)                  AS sgst_2_5,
                SUM(CASE WHEN P2.taxper = 2.5 THEN P2.taxamt * 2 ELSE 0 END)               AS tax_5_total,

                -- 12% slab (taxper = 6)
                SUM(CASE WHEN P2.taxper = 6   THEN P2.amount  ELSE 0 END)                  AS taxable_12,
                SUM(CASE WHEN P2.taxper = 6   THEN P2.taxamt  ELSE 0 END)                  AS cgst_6,
                SUM(CASE WHEN P2.taxper = 6   THEN P2.taxamt  ELSE 0 END)                  AS sgst_6,
                SUM(CASE WHEN P2.taxper = 6   THEN P2.taxamt * 2 ELSE 0 END)               AS tax_12_total,

                -- 18% slab (taxper = 9)
                SUM(CASE WHEN P2.taxper = 9   THEN P2.amount  ELSE 0 END)                  AS taxable_18,
                SUM(CASE WHEN P2.taxper = 9   THEN P2.taxamt  ELSE 0 END)                  AS cgst_9,
                SUM(CASE WHEN P2.taxper = 9   THEN P2.taxamt  ELSE 0 END)                  AS sgst_9,
                SUM(CASE WHEN P2.taxper = 9   THEN P2.taxamt * 2 ELSE 0 END)               AS tax_18_total,

                -- 28% slab (taxper = 14)
                SUM(CASE WHEN P2.taxper = 14  THEN P2.amount  ELSE 0 END)                  AS taxable_28,
                SUM(CASE WHEN P2.taxper = 14  THEN P2.taxamt  ELSE 0 END)                  AS cgst_14,
                SUM(CASE WHEN P2.taxper = 14  THEN P2.taxamt  ELSE 0 END)                  AS sgst_14,
                SUM(CASE WHEN P2.taxper = 14  THEN P2.taxamt * 2 ELSE 0 END)               AS tax_28_total,

                -- 40% slab (taxper = 20) â€” 14 CGST + 14 SGST + 12 Cess
                SUM(CASE WHEN P2.taxper = 20  THEN P2.amount  ELSE 0 END)                  AS taxable_40,
                SUM(CASE WHEN P2.taxper = 20  THEN ROUND(P2.taxamt * 14/20, 2) ELSE 0 END) AS cgst_14_40,
                SUM(CASE WHEN P2.taxper = 20  THEN ROUND(P2.taxamt * 14/20, 2) ELSE 0 END) AS sgst_14_40,
                SUM(CASE WHEN P2.taxper = 20  THEN ROUND(P2.taxamt * 12/20, 2) ELSE 0 END) AS cess_12,
                SUM(CASE WHEN P2.taxper = 20  THEN P2.taxamt * 2 ELSE 0 END)               AS tax_40_total

            FROM purch1 P
            INNER JOIN purch2 P2
                ON P.DocId       = P2.DocId
                AND P2.propertyid = P.propertyid
                AND P2.delflag   = 'N'
            INNER JOIN itemmast IM
                ON IM.Code       = P2.Item
                AND IM.ItemType  = 'Store'
            LEFT JOIN unitmast U
                ON U.ucode       = P2.RecdUnit
            LEFT JOIN subgroup S
                ON P.Party       = S.sub_code
            LEFT JOIN cities C
                ON S.citycode    = C.city_code
            LEFT JOIN states ST
                ON C.state       = ST.state_code
            INNER JOIN voucher_type VT
                ON P.VType       = VT.V_Type
                AND P.propertyid = VT.propertyid
            WHERE VT.NCAT NOT IN ('PRR','PRC')
                AND P.propertyid = ?
                AND P.Restcode   = ?
                AND P.DelFlag    = 'N'
                AND P.VDate BETWEEN ? AND ?
                {$partyCondition}
                {$itemTypeCondition}
            GROUP BY
                P.DocId, P.vno, P.vdate,
                P.PartyBillNo, P.PartyBillDT,
                IM.Name, IM.HSNCode, P2.SNo, P2.QtyRec,
                P2.amount, P2.taxamt, P2.taxper,
                P.Taxable, P.NonTaxable, P.Total, P.Tax,
                P.RoundOff, P.DedAmt, P.AddAmt, P.DiscAmt, P.NetAmt,
                S.Name, S.Address, C.CityName, ST.Name, S.Pin,
                P.VTYPE, P.GSTNO, S.GSTIN,
                U.name
            ORDER BY P.Vdate, P.vno, P2.SNo
        ";

        $bindings = array_merge(
            [$propertyid, $restcode, $fromdate, $todate],
            $partyBindings
        );

        $rows = DB::select($sql, $bindings);

        if (empty($rows)) {
            return response()->json(['data' => []]);
        }

        $data = array_map(function ($r) {
            $isFirstItem = intval($r->SNo) === 1;
            return [
                'TaxInvoiceNo'            => $r->TaxInvoiceNo,
                'DateOfTaxInvoice'        => $r->DateOfTaxInvoice,
                'PartyBillNo'             => $r->PartyBillNo,
                'PartyBillDT'             => $r->PartyBillDT,
                'ItemName'                => $r->ItemName,
                'CommodityCode'           => $r->CommodityCode,
                'QtyMeasure'              => $r->QtyMeasure,
                // item level
                'ItemAmount'              => floatval($r->ItemAmount  ?? 0),
                'ItemTaxAmt'              => floatval($r->ItemTaxAmt  ?? 0),
                'ItemTaxPer'              => floatval($r->ItemTaxPer  ?? 0),
                // bill header â€” only on first item row, blank on rest
                'TaxableValueOfGoods'     => $isFirstItem ? floatval($r->BillTaxable    ?? 0) : '',
                'NonTaxable'              => $isFirstItem ? floatval($r->BillNonTaxable  ?? 0) : '',
                'Total'                   => $isFirstItem ? floatval($r->BillTotal       ?? 0) : '',
                'AmountOfTaxCharged'      => $isFirstItem ? floatval($r->BillTax         ?? 0) : '',
                'RoundOff'                => $isFirstItem ? floatval($r->BillRoundOff    ?? 0) : '',
                'TotalAmountOfTaxInvoice' => $isFirstItem ? floatval($r->BillNetAmt      ?? 0) : '',
                'VendorName'              => $isFirstItem ? ($r->VendorName ?? '')              : '',
                'VendorAddress'           => $isFirstItem ? ($r->VendorAddress ?? '')           : '',
                'City'                    => $isFirstItem ? ($r->City ?? '')                    : '',
                'Pin'                     => $isFirstItem ? ($r->Pin ?? '')                     : '',
                'State'                   => $isFirstItem ? ($r->State ?? '')                   : '',
                'Tin'                     => $isFirstItem ? ($r->Tin ?? '')                     : '',

                // 5% slab
                'taxable_5'   => floatval($r->taxable_5),
                'cgst_2_5'    => floatval($r->cgst_2_5),
                'sgst_2_5'    => floatval($r->sgst_2_5),
                'tax_5_total' => floatval($r->tax_5_total),

                // 12% slab
                'taxable_12'   => floatval($r->taxable_12),
                'cgst_6'       => floatval($r->cgst_6),
                'sgst_6'       => floatval($r->sgst_6),
                'tax_12_total' => floatval($r->tax_12_total),

                // 18% slab
                'taxable_18'   => floatval($r->taxable_18),
                'cgst_9'       => floatval($r->cgst_9),
                'sgst_9'       => floatval($r->sgst_9),
                'tax_18_total' => floatval($r->tax_18_total),

                // 28% slab
                'taxable_28'   => floatval($r->taxable_28),
                'cgst_14'      => floatval($r->cgst_14),
                'sgst_14'      => floatval($r->sgst_14),
                'tax_28_total' => floatval($r->tax_28_total),

                // 40% slab
                'taxable_40'   => floatval($r->taxable_40),
                'cgst_14_40'   => floatval($r->cgst_14_40),
                'sgst_14_40'   => floatval($r->sgst_14_40),
                'cess_12'      => floatval($r->cess_12),
                'tax_40_total' => floatval($r->tax_40_total),
            ];
        }, $rows);

        return response()->json(['data' => $data]);
    }
}
