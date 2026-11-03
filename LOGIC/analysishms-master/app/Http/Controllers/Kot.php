<?php

namespace App\Http\Controllers;

use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroPos;
use App\Models\ItemMast;
use App\Models\Kot as KotModal;
use App\Models\KotLog;
use App\Models\RoomMast;
use App\Models\Stock;
use App\Models\Stocklog;
use App\Models\UserPermission;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class Kot extends Controller
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
    }

    public function showheader()
    {
        $username = Auth::user()->name;

        return view('property.layouts.header', ['data' => $username]);
    }

    public function revokeopen($colname)
    {
        // $value = DB::table('userpermission')->where('propertyid', $this->propertyid)->where('u_name', Auth::user()->name)->value($colname);
        // return $value;
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

    public function kotentry(Request $request)
    {
        // $permission = revokeopen(172011);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $dcode = $request->query('dcode');
        $roomone = $request->query('roomno') ?? '';

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

        $menugroup = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->whereIn('restcode', $restcodes)
            ->where('activeyn', 'Y')
            ->orderBy('name', 'ASC')
            ->get();

        if (strtolower($departdata->nature) == 'room service') {
            $roomno = DB::table('roomocc')
                ->leftJoin('paycharge', function ($join) {
                    $join->on('paycharge.roomno', '=', 'roomocc.roomno')
                        ->on('paycharge.sno1', '=', 'roomocc.sno1')
                        ->where('paycharge.propertyid', $this->propertyid)
                        ->where(function ($query) {
                            $query->where('paycharge.vtype', '=', 'BRS')
                                ->orWhereNull('paycharge.vtype');
                        });
                })
                ->leftJoin('fombilldetails', function ($join) {
                    $join->on('fombilldetails.folionodocid', '=', 'roomocc.docid')
                        ->on('fombilldetails.sno1', '=', 'roomocc.sno1')
                        ->where('fombilldetails.propertyid', $this->propertyid)
                        ->where('fombilldetails.status', 'settle');
                })
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->where('guestfolio.nochargepost', 'N');
                })
                ->select(
                    'paycharge.id',
                    'roomocc.roomno',
                    'roomocc.name',
                    DB::raw('COALESCE(fombilldetails.billno, 0) AS billno')
                )
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('guestfolio.nochargepost', 'N')
                ->whereNull('roomocc.type')
                ->where('fombilldetails.billno', null)
                ->groupBy('roomocc.roomno', 'roomocc.sno1')
                ->get();

            $label = 'Room No.';
        } else {
            $roomno = RoomMast::select('rcode as roomno')
                ->where('rest_code', $dcode)
                ->where('propertyid', $this->propertyid)
                ->where('type', 'TB')
                ->orderBy('rcode', 'ASC')
                ->get();
            $label = 'Table No.';
        }

        $nctype = DB::table('nctype_mast')->where('propertyid', $this->propertyid)->get();
        $server_mast = DB::table('server_mast')->where('propertyid', $this->propertyid)->where('activeYN', 'Y')->get();
        $outletdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])->get();
        $envpos = EnviroPos::where('propertyid', $this->propertyid)->first();
        $curusername = $this->username;
        $adminuname = Companyreg::where('propertyid', $this->propertyid)->orderBy('id', 'ASC')->first();

        // return $roomno;

        if (! empty($roomone)) {
            $roomcheck = false;
            foreach ($roomno as $room) {
                if ($room->roomno == $roomone) {
                    $roomcheck = true;
                    break;
                }
            }
            if (! $roomcheck) {
                return redirect()->back()->with('error', 'Room No.: '.$roomone.' Guest bill already printed!');
            }
        }

        $pendings = [
            'pvno' => $request->query('pvno'),
            'pdocid' => $request->query('pdocid'),
            'proomno' => $request->query('proomno'),
        ];

        return view('property.kotentry', [
            'menudata' => $menugroup,
            'roomno' => $roomno,
            'depart' => $departdata,
            'nctype' => $nctype,
            'servermast' => $server_mast,
            'outletdata' => $outletdata,
            'label' => $label,
            'roomone' => $roomone,
            'envpos' => $envpos,
            'curusername' => $curusername,
            'adminuname' => $adminuname,
            'pendings' => $pendings,
            'visiblebell' => true,
        ]);
    }

    public function getmaxkrsno(Request $request)
    {
        $shortname = $request->input('shortname');
        $data = DB::table('voucher_prefix')->where('v_type', 'K'.$shortname)->where('propertyid', $this->propertyid)->max('start_srl_no') + 1;

        return json_encode($data);
    }

    public function getmaxnrsno(Request $request)
    {
        $shortname = $request->input('shortname');
        $data = DB::table('voucher_prefix')->where('v_type', 'N'.$shortname)->where('propertyid', $this->propertyid)->max('start_srl_no') + 1;

        return json_encode($data);
    }

    public function getsessionmast(Request $request)
    {
        $curtime = $request->input('curtime');
        $fetch = DB::table('session_mast')->where('propertyid', $this->propertyid)->where('from_time', '<=', $curtime)->where('to_time', '>=', $curtime)->value('name') ?? '';

        return json_encode($fetch);
    }

    public function fetchpendingkot(Request $request)
    {
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

        $data = DB::table('kot')
            ->select(
                'kot.vno',
                'kot.docid',
                'kot.vdate',
                'kot.vtime',
                'kot.roomno',
                'kot.qty',
                'server_mast.name AS waiterbhai',
                'itemmast.Name AS itemnaam',
                'kot.voidyn'
            )
            ->join('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->LeftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
            ->where('kot.propertyid', '=', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.nckot', '=', 'N')
            ->where('kot.vdate', '=', $this->ncurdate)
            ->where('kot.pending', 'Y')
            ->orderByDesc('kot.vno')
            ->get();

        return json_encode($data);
    }

    public function pendingitemsfortable(Request $request)
    {
        $dcode = $request->input('restcode');
        $roomno = $request->input('roomno');

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

        $data = DB::table('kot')
            ->select(
                'kot.vno',
                'kot.docid',
                'kot.vdate',
                'kot.vtime',
                'kot.roomno',
                'kot.qty',
                'server_mast.name AS waiterbhai',
                'itemmast.Name AS itemnaam',
                'kot.voidyn'
            )
            ->join('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->LeftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
            ->where('kot.propertyid', '=', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.roomno', '=', $roomno)
            ->where('kot.nckot', '=', 'N')
            ->where('kot.vdate', $this->ncurdate)
            ->where('kot.pending', 'Y')
            ->orderByDesc('kot.vno')
            ->get();

        if ($data->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No pending items found for the specified table.',
            ]);
        }

        return response()->json([
            'success' => true,
            'items' => $data,
        ]);
    }

    public function fetchitemdetailsbbyvno(Request $request)
    {
        $docid = $request->docid;

        $chkmerged = KotModal::where('docid', $docid)->where('propertyid', $this->propertyid)->value('mergedwith');

        $datatmp = DB::table('itemmast')
            ->join('kot', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->select(
                'itemmast.Name',
                'kot.description',
                'kot.docid',
                'kot.qty',
                'kot.rate',
                'kot.voidyn',
                'kot.item',
                'kot.vno',
                'kot.sno',
                'kot.roomno',
                'kot.waiter',
                'kot.remarks',
                'kot.pax',
                'kot.docid',
                'kot.vtype',
                'kot.restcode'
            )
            ->where('kot.propertyid', $this->propertyid)
            ->orderBy('kot.sno');

        if (! empty($chkmerged)) {
            $mergedocid = $chkmerged;
            $data = $datatmp->whereIn('kot.docid', explode(',', $mergedocid))->get();
        } else {
            $data = $datatmp->where('kot.docid', $docid)->get();
        }

        return json_encode($data);
    }

    public function fetchncpreviouskot(Request $request)
    {
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

        $data = DB::table('kot')
            ->select('kot.vno', 'kot.vdate', 'kot.docid', 'kot.vtime', 'kot.roomno', 'kot.qty', 'server_mast.name AS waiterbhai', 'itemmast.Name AS itemnaam')
            ->join('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->join('server_mast', 'server_mast.scode', '=', 'kot.waiter')
            ->where('kot.propertyid', '=', $this->propertyid)
            ->whereIn('kot.restcode', $restcodes)
            ->where('kot.nckot', '=', 'Y')
            // ->where('kot.vtype', 'N' . $departdata->short_name)
            ->where('kot.vdate', $this->ncurdate)
            ->orderByDesc('kot.vno')
            ->get();

        return json_encode($data);
    }

    public function oldwaitername(Request $request)
    {
        $roomno = $request->input('roomno');
        $restcode = $request->input('restcode');

        $waitercode = KotModal::where('propertyid', $this->propertyid)->where('restcode', $restcode)->where('roomno', $roomno)
            ->where('pending', 'Y')->select('waiter')->first();
        $ordertype = 'New Order';
        if (! is_null($waitercode)) {
            $chk = KotModal::whereNot('docid', $waitercode->docid)->where('propertyid', $this->propertyid)->where('roomno', $roomno)->first();

            if (is_null($chk)) {
                $ordertype = 'New Order';
            } else {
                $ordertype = 'Running Order';
            }
        }

        if ($waitercode) {
            $data = [
                'ordertype' => $ordertype,
                'waiter' => $waitercode,
            ];

            return json_encode($data);
        } else {
            $data = [
                'ordertype' => $ordertype,
                'waiter' => '',
            ];

            return json_encode($data);
        }
    }

    public function submitkotentry(Request $request)
    {
        // $permission = revokeopen(172011);
        // if (is_null($permission) || $permission->ins == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $validate = $request->validate([
            'roomno' => 'required',
            'pax' => 'required',
            'waiter' => 'required',
            'fixrestcode' => 'required',
        ]);

        try {
            DB::beginTransaction();
            $fixrestcode = $request->input('fixrestcode');
            $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $fixrestcode)->first();
            $totalitems = $request->totalitems;

            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $depart->dcode)
                ->pluck('associatedrestcode');

            $associate = false;
            for ($i = 0; $i <= $totalitems; $i++) {
                $itemcode = $request->input('itemcode'.$i);
                $itemmast = ItemMast::where('Code', $itemcode)->where('Property_ID', $this->propertyid)
                    ->whereIn('RestCode', $associatedrestcode)->first();
                if ($itemmast) {
                    $associate = true;
                    break;
                }
            }

            if ($associatedrestcode->isNotEmpty()) {
                $chkroommast = RoomMast::where('propertyid', $this->propertyid)
                    ->whereIn('rest_code', $associatedrestcode)
                    ->where('rcode', $request->roomno)
                    ->first();

                if (is_null($chkroommast) && $associate) {
                    return response()->json([
                        'status' => 'error',
                        'docid' => '',
                        'message' => "Room No.: $request->roomno Not Found for related Outlet!",
                    ]);
                }
            }

            $ncurdate = $this->ncurdate;
            $nckotreason = $request->input('nckotreason') ?? '';
            $roomoccdata = RoomMast::where('propertyid', $this->propertyid)->where('rcode', $request->input('roomno'))->first();
            $olddocidpendingkot = $request->input('olddocidpendingkot');
            if (! empty($olddocidpendingkot)) {

                try {
                    $chkmerged = KotModal::where('docid', $olddocidpendingkot)->where('propertyid', $this->propertyid)->value('mergedwith');
                    $kotlogdatatmp = KotModal::where('propertyid', $this->propertyid)->orderBy('sno', 'ASC');

                    if (! empty($chkmerged)) {
                        $kotlogdata = $kotlogdatatmp->whereIn('docid', explode(',', $chkmerged))->get();
                    } else {
                        $kotlogdata = $kotlogdatatmp->where('docid', $olddocidpendingkot)->get();
                    }

                    // Log::info('Preparin KOT LOG Data: ' . json_encode($kotlogdata));

                    foreach ($kotlogdata as $data) {
                        $kotlogindata = [
                            'propertyid' => $data->propertyid,
                            'docid' => $data->docid,
                            'sno' => $data->sno,
                            'pax' => $data->pax,
                            'vno' => $data->vno,
                            'itemrestcode' => $data->itemrestcode,
                            'item' => $data->item,
                            'description' => $data->description,
                            'qty' => $data->qty,
                            'rate' => $data->rate,
                            'amount' => $data->amount,
                            'voidyn' => $data->voidyn,
                            'vtype' => $data->vtype,
                            'vdate' => $data->vdate,
                            'vtime' => $data->vtime,
                            'vprefix' => $data->vprefix,
                            'roomcat' => $data->roomcat,
                            'restcode' => $data->restcode,
                            'waiter' => $data->waiter,
                            'pending' => $data->pending,
                            'delflag' => $data->delflag,
                            'contradocid' => $data->contradocid,
                            'contrsno' => $data->contrsno,
                            'reasons' => $data->reasons,
                            'ncreason' => $nckotreason,
                            'remarks' => $data->remarks,
                            'roomtype' => $data->roomtype,
                            'roomno' => $data->roomno,
                            'created_at' => $this->currenttime,
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'a',
                            'nckot' => $data->nckot,
                            'nctype' => $data->nctype,
                            'freesno' => $data->freesno,
                            'printed' => $data->printed,
                            'schemecode' => $data->schemecode,
                            'tokenno' => $data->tokenno,
                            'printflag' => $data->printflag,
                            'mergedwith' => $data->mergedwith,
                        ];

                        // Log::info('Kot Data Array: ' . json_encode($kotlogindata));
                        $inserted = DB::table('kotlog')->insert($kotlogindata);
                        // Log::info('KOTLOG Insert Result: ' . ($inserted ? 'Success' : 'Failed'));
                    }

                    if (! empty($chkmerged)) {
                        KotModal::where('propertyid', $this->propertyid)->whereIn('docid', explode(',', $chkmerged))->delete();
                    } else {
                        KotModal::where('propertyid', $this->propertyid)->where('docid', $olddocidpendingkot)->delete();
                    }

                    $chkmergedstock = null;

                    if ($request->input('nctypecheckbox') == 'on') {
                        $chkmergedstock = Stock::where('docid', $olddocidpendingkot)->where('propertyid', $this->propertyid)->value('mergedwith');
                        $stocklogdatatmp = Stock::where('propertyid', $this->propertyid)->orderBy('sno', 'ASC');

                        if (! empty($chkmergedstock)) {
                            $stocklogdata = $stocklogdatatmp->whereIn('stock.docid', explode(',', $chkmerged))->get();
                        } else {
                            $stocklogdata = $stocklogdatatmp->where('stock.docid', $olddocidpendingkot)->get();
                        }

                        foreach ($stocklogdata as $row) {
                            $stockdata = [
                                'propertyid' => $this->propertyid,
                                'docid' => $row->docid,
                                'sno' => $row->sno,
                                'vno' => $row->vno,
                                'itemrestcode' => $row->itemrestcode,
                                'item' => $row->item,
                                'qtyiss' => $row->qtyiss,
                                'qtyrec' => $row->qtyiss,
                                'taxper' => $row->taxper,
                                'taxamt' => $row->taxamt,
                                'discper' => $row->discper,
                                'discamt' => $row->discamt,
                                'kotdocid' => $row->kotdocid,
                                'kotsno' => $row->kotsno,
                                'total' => $row->total,
                                'discapp' => $row->discapp,
                                'roundoff' => $row->roundoff,
                                'partycode' => $row->partycode,
                                'departcode' => $row->departcode,
                                'godowncode' => $row->godowncode,
                                'chalqty' => $row->chalqty,
                                'recdqty' => $row->recdqty,
                                'accqty' => $row->acqty ?? '',
                                'rejqty' => $row->rejqty,
                                'recdunit' => $row->recdunit,
                                'specification' => $row->specification,
                                'itemrate' => $row->itemrate,
                                'delflag' => $row->delflag,
                                'landval' => $row->landval,
                                'convratio' => $row->convratio,
                                'indentdocid' => $row->indentdocid,
                                'indentsno' => $row->indentsno,
                                'issqty' => $row->issqty,
                                'issueunit' => $row->issueunit,
                                'freesno' => $row->freesno,
                                'schemecode' => $row->schemecode,
                                'seqno' => $row->seqno,
                                'company' => $row->company,
                                'schrgapp' => $row->schrgapp,
                                'schrgper' => $row->schrgper,
                                'schrgamt' => $row->schrgamt,
                                'refdocid' => $row->refdocid,
                                'rate' => $row->rate,
                                'amount' => $row->amount,
                                'voidyn' => $row->voidyn,
                                'vtype' => $row->vtype,
                                'vdate' => $row->vdate,
                                'vtime' => $row->vtime,
                                'vprefix' => $row->vprefix,
                                'roomcat' => $row->roomcat,
                                'restcode' => $row->restcode,
                                'contradocid' => $row->contradocid,
                                'contrasno' => $row->contrasno,
                                'remarks' => $row->remarks,
                                'roomtype' => $row->roomtype,
                                'roomno' => $row->roomno,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                            ];

                            Stocklog::insert($stockdata);
                        }

                        if (! empty($chkmergedstock)) {
                            Stock::where('propertyid', $this->propertyid)->whereIn('docid', explode(',', $chkmergedstock))->delete();
                        } else {
                            Stock::where('propertyid', $this->propertyid)->where('docid', $olddocidpendingkot)->delete();
                        }
                    }

                    // ✅ NEW: fallback reference rows — jab koi item screen pe naya add kiya gaya ho
                    // (uska kotdocidrow{i} empty hoga), to isi pending KOT ke context (docid/vno/vtype/
                    // vprefix/roomtype/roomno waghera) use karke usko same KOT me merge karenge.
                    $refKotlogQuery = KotLog::where('propertyid', $this->propertyid);
                    if (! empty($chkmerged)) {
                        $refKotlogQuery->whereIn('docid', explode(',', $chkmerged));
                    } else {
                        $refKotlogQuery->where('docid', $olddocidpendingkot);
                    }
                    $refKotlog = $refKotlogQuery->orderBy('sno', 'ASC')->first();

                    $refStocklog = null;
                    if ($request->input('nctypecheckbox') == 'on') {
                        $refStocklogQuery = Stocklog::where('propertyid', $this->propertyid);
                        if (! empty($chkmergedstock)) {
                            $refStocklogQuery->whereIn('docid', explode(',', $chkmergedstock));
                        } else {
                            $refStocklogQuery->where('docid', $olddocidpendingkot);
                        }
                        $refStocklog = $refStocklogQuery->orderBy('sno', 'ASC')->first();
                    }

                    $groupedItems = [];
                    $generatedDocIDs = [];

                    for ($i = 1; $i <= $totalitems; $i++) {
                        $itemcode = $request->input('itemcode'.$i);
                        $restcodeitem = $request->input('itemrestcode'.$i);
                        $groupedItems[$associatedrestcode->isNotEmpty() ? $restcodeitem : $fixrestcode][] = ['i' => $i, 'itemcode' => $itemcode];
                    }

                    foreach ($groupedItems as $restcode => $items) {

                        $nckotyn = $request->input('nctypecheckbox') == 'on' ? 'Y' : 'N';
                        $nckot = $nckotyn == 'Y' ? $request->input('nctype') : '';
                        $pending = $nckotyn == 'Y' ? 'N' : 'Y';

                        if ($request->input('nctypecheckbox') == 'on') {
                            foreach ($items as $data) {
                                $itemmasttbl = ItemMast::where('Code', $data['itemcode'])->where('Property_ID', $this->propertyid)
                                    ->where('RestCode', $restcode)->first();

                                $i = $data['i'];
                                $qty = $request->input('quantity'.$i);
                                $rate = $request->input('rate'.$i);

                                $stocklog = Stocklog::where('propertyid', $this->propertyid)->where('docid', $request->input('kotdocidrow'.$i))->first();

                                // ✅ NEW: naya item — fallback pe switch
                                if (! $stocklog) {
                                    $stocklog = $refStocklog;
                                }

                                if (! $stocklog) {
                                    DB::rollBack();

                                    return response()->json([
                                        'status' => 'error',
                                        'docid' => '',
                                        'message' => "Unable to resolve Stock reference for item row $i",
                                    ]);
                                }

                                $stockdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $stocklog->docid,
                                    'sno' => $i,
                                    'vno' => $stocklog->vno,
                                    'itemrestcode' => $restcode,
                                    'item' => $data['itemcode'],
                                    'qtyiss' => $qty,
                                    'qtyrec' => '',
                                    'taxper' => '',
                                    'taxamt' => '',
                                    'discper' => '',
                                    'discamt' => '',
                                    'kotdocid' => '',
                                    'kotsno' => '',
                                    'total' => '',
                                    'discapp' => '',
                                    'roundoff' => '',
                                    'partycode' => '',
                                    'departcode' => $itemmasttbl->Kitchen ?? '',
                                    'godowncode' => $itemmasttbl->Kitchen ?? '',
                                    'chalqty' => '',
                                    'recdqty' => '',
                                    'accqty' => '',
                                    'rejqty' => '',
                                    'recdunit' => '',
                                    'specification' => '',
                                    'itemrate' => '',
                                    'delflag' => 'N',
                                    'landval' => '',
                                    'convratio' => '',
                                    'indentdocid' => '',
                                    'indentsno' => '',
                                    'issqty' => '',
                                    'issueunit' => '',
                                    'freesno' => '',
                                    'schemecode' => '',
                                    'seqno' => '',
                                    'company' => '',
                                    'schrgapp' => '',
                                    'schrgper' => '',
                                    'schrgamt' => '',
                                    'refdocid' => '',
                                    'rate' => $rate,
                                    'amount' => $qty * $rate,
                                    'voidyn' => $request->input('voidyn'.$i),
                                    'vtype' => $stocklog->vtype,
                                    'vdate' => $stocklog->vdate,
                                    'vtime' => $stocklog->vtime,
                                    'vprefix' => $stocklog->vprefix,
                                    'roomcat' => $stocklog->roomcat,
                                    'restcode' => $restcode,
                                    'contradocid' => '',
                                    'contrasno' => '',
                                    'remarks' => $request->input('kotremark') ?? '',
                                    'roomtype' => $roomoccdata->type,
                                    'roomno' => $request->input('roomno'),
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'e',
                                ];

                                Stock::insert($stockdata);
                            }
                        }

                        foreach ($items as $data) {

                            $i = $data['i'];
                            $qty = $request->input('quantity'.$i);
                            $rate = $request->input('rate'.$i);

                            $kotlog = KotLog::where('propertyid', $this->propertyid)->where('docid', $request->input('kotdocidrow'.$i))->first();

                            // ✅ NEW: naya item — fallback pe switch
                            if (! $kotlog) {
                                $kotlog = $refKotlog;
                            }

                            if (! $kotlog) {
                                DB::rollBack();

                                return response()->json([
                                    'status' => 'error',
                                    'docid' => '',
                                    'message' => "Unable to resolve KOT reference for item row $i",
                                ]);
                            }

                            $generatedDocIDs[] = $kotlog->docid;
                            $kotdata = [
                                'propertyid' => $this->propertyid,
                                'docid' => $kotlog->docid,
                                'sno' => $i,
                                'pax' => $request->input('pax'),
                                'vno' => $kotlog->vno,
                                'itemrestcode' => $restcode,
                                'item' => $data['itemcode'],
                                'description' => $request->input('description'.$i) ?? '',
                                'qty' => $qty,
                                'rate' => $rate,
                                'amount' => $qty * $rate,
                                'voidyn' => $request->input('voidyn'.$i),
                                'vtype' => $kotlog->vtype,
                                'vdate' => $kotlog->vdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $kotlog->vprefix,
                                'roomcat' => $roomoccdata->room_cat,
                                'restcode' => $restcode,
                                'waiter' => $request->input('waiter'),
                                'pending' => $pending,
                                'delflag' => '',
                                'contradocid' => '',
                                'contrsno' => '',
                                'reasons' => $request->input('editingreasons') ?? '',
                                'ncreason' => $nckotreason,
                                'remarks' => $request->input('kotremark') ?? '',
                                'roomtype' => $kotlog->roomtype,
                                'roomno' => $kotlog->roomno,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'e',
                                'nckot' => $nckotyn,
                                'nctype' => $nckot,
                                'freesno' => $kotlog->freesno,
                                'printed' => $kotlog->printed,
                                'schemecode' => $kotlog->schemecode,
                                'tokenno' => $kotlog->tokenno,
                                'printflag' => $kotlog->printflag,
                                'mergedwith' => $kotlog->mergedwith,
                            ];
                            DB::table('kot')->insert($kotdata);
                        }
                    }

                    $uniqueDocIDs = array_unique($generatedDocIDs);

                    DB::commit();

                    return response()->json([
                        'status' => 'success',
                        'docid' => $uniqueDocIDs,
                        'message' => 'Kot Entry Updated!',
                    ]);
                } catch (Exception $e) {
                    return response()->json([
                        'status' => 'error',
                        'docid' => '',
                        'message' => 'Unknown Error Occured: '.$e->getMessage().' On Line: '.$e->getLine(),
                    ], 500);
                }
            }
            $groupedItems = [];
            $generatedDocIDs = [];

            for ($i = 1; $i <= $totalitems; $i++) {
                $itemcode = $request->input('itemcode'.$i);
                // $restcodeitem = DB::table('itemmast')->where('Property_ID', $this->propertyid)
                //     ->where('Code', $itemcode)->value('RestCode');
                $restcodeitem = $request->input('itemrestcode'.$i);
                $groupedItems[$associatedrestcode->isNotEmpty() ? $restcodeitem : $fixrestcode][] = ['i' => $i, 'itemcode' => $itemcode];
            }

            foreach ($groupedItems as $restcode => $items) {
                $dprow = Depart::where('propertyid', $this->propertyid)->where('dcode', $restcode)->first();
                $desc = $dprow->short_name.($request->input('nctypecheckbox') == 'on' ? ' N.C. KOT Entry' : ' KOT Entry');
                $vtype = VoucherType::where('propertyid', $this->propertyid)->where('restcode', $restcode)->where('description', $desc)->value('v_type');
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)->whereDate('date_to', '>=', $ncurdate)->first();

                $vprefix = $chkvpf->prefix;
                $vno = $chkvpf->start_srl_no + 1;
                $docid = $this->propertyid.$vtype.'‎ ‎ '.$vprefix.'‎ ‎ ‎ ‎ '.$vno;
                $generatedDocIDs[] = $docid;

                $nckotyn = $request->input('nctypecheckbox') == 'on' ? 'Y' : 'N';
                $nckot = $nckotyn == 'Y' ? $request->input('nctype') : '';
                $pending = $nckotyn == 'Y' ? 'N' : 'Y';
                $sno1 = 1;
                $snokot = 1;
                if ($request->input('nctypecheckbox') == 'on') {
                    foreach ($items as $data) {
                        $itemmasttbl = ItemMast::where('Code', $data['itemcode'])->where('Property_ID', $this->propertyid)
                            ->where('RestCode', $restcode)->first();

                        // Log::info('itemmast:' . json_encode($itemmasttbl));

                        $i = $data['i'];
                        $qty = $request->input('quantity'.$i);
                        $rate = $request->input('rate'.$i);
                        $stockdata = [
                            'propertyid' => $this->propertyid,
                            'docid' => $docid,
                            'sno' => $sno1++,
                            'vno' => $vno,
                            'itemrestcode' => $restcode,
                            'item' => $data['itemcode'],
                            'qtyiss' => $qty,
                            'qtyrec' => '',
                            'taxper' => '',
                            'taxamt' => '',
                            'discper' => '',
                            'discamt' => '',
                            'kotdocid' => '',
                            'kotsno' => '',
                            'total' => '',
                            'discapp' => '',
                            'roundoff' => '',
                            'partycode' => '',
                            'departcode' => $itemmasttbl->Kitchen ?? '',
                            'godowncode' => $itemmasttbl->Kitchen ?? '',
                            'chalqty' => '',
                            'recdqty' => '',
                            'accqty' => '',
                            'rejqty' => '',
                            'recdunit' => '',
                            'specification' => '',
                            'itemrate' => '',
                            'delflag' => 'N',
                            'landval' => '',
                            'convratio' => '',
                            'indentdocid' => '',
                            'indentsno' => '',
                            'issqty' => '',
                            'issueunit' => '',
                            'freesno' => '',
                            'schemecode' => '',
                            'seqno' => '',
                            'company' => '',
                            'schrgapp' => '',
                            'schrgper' => '',
                            'schrgamt' => '',
                            'refdocid' => '',
                            'rate' => $rate,
                            'amount' => $qty * $rate,
                            'voidyn' => $request->input('voidyn'.$i),
                            'vtype' => $vtype,
                            'vdate' => $ncurdate,
                            'vtime' => date('H:i:s'),
                            'vprefix' => $vprefix,
                            'roomcat' => $roomoccdata->room_cat,
                            'restcode' => $restcode,
                            'contradocid' => '',
                            'contrasno' => '',
                            'remarks' => $request->input('kotremark') ?? '',
                            'roomtype' => $roomoccdata->type,
                            'roomno' => $request->input('roomno'),
                            'created_at' => $this->currenttime,
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'a',
                        ];
                        DB::table('stock')->insert($stockdata);
                    }
                }

                foreach ($items as $data) {
                    $i = $data['i'];
                    $qty = $request->input('quantity'.$i);
                    $rate = $request->input('rate'.$i);
                    $kotdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'sno' => $snokot++,
                        'pax' => $request->input('pax'),
                        'vno' => $vno,
                        'itemrestcode' => $restcode,
                        'item' => $data['itemcode'],
                        'description' => $request->input('description'.$i) ?? '',
                        'qty' => $qty,
                        'rate' => $rate,
                        'amount' => $qty * $rate,
                        'voidyn' => $request->input('voidyn'.$i),
                        'vtype' => $vtype,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'roomcat' => $roomoccdata->room_cat,
                        'restcode' => $restcode,
                        'waiter' => $request->input('waiter'),
                        'pending' => $pending,
                        'delflag' => '',
                        'contradocid' => '',
                        'contrsno' => '',
                        'reasons' => $request->input('editingreasons') ?? '',
                        'ncreason' => $nckotreason,
                        'remarks' => $request->input('kotremark') ?? '',
                        'roomtype' => $roomoccdata->type,
                        'roomno' => $request->input('roomno'),
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                        'nckot' => $nckotyn,
                        'nctype' => $nckot,
                        'freesno' => '',
                        'printed' => '',
                        'schemecode' => '',
                        'tokenno' => '',
                        'printflag' => '',
                    ];
                    DB::table('kot')->insert($kotdata);
                }

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            $uniqueDocIDs = array_unique($generatedDocIDs);

            if (count($uniqueDocIDs) > 1) {
                $merged = implode(',', $uniqueDocIDs);

                DB::table('kot')
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('docid', $uniqueDocIDs)
                    ->update(['mergedwith' => $merged]);

                DB::table('stock')
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('docid', $uniqueDocIDs)
                    ->update(['mergedwith' => $merged]);
            }

            DB::commit();

            return response()->json([
                'status' => 'success',
                'docid' => $uniqueDocIDs,
                'message' => 'Kot Entry Submitted!',
            ]);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json([
                'status' => 'error',
                'docid' => '',
                'message' => 'Unknown Error Occured: '.$e->getMessage().' On Line: '.$e->getLine(),
            ], 500);
        }
    }

    public function kottransfer(Request $request)
    {
        // $permission = revokeopen(172015);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        $dcode = $request->query('dcode');
        $departdata = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();
        if (strtolower($departdata->nature) == 'room service') {
            $label = 'Room No';
        } else {
            $label = 'Table No';
        }
        $vnos = KotModal::select('vno', 'vprefix', 'restcode', 'vtype', 'roomno', 'docid')
            ->where('propertyid', $this->propertyid)
            ->where('restcode', $dcode)
            ->where('nckot', 'N')
            ->where('pending', 'Y')
            ->where('contradocid', '')
            ->where('voidyn', 'N')
            ->where('delflag', '')
            ->orderBy('vno')
            ->groupBy('vno')
            ->get();

        return view('property.kottransfer', [
            'vnos' => $vnos,
            'dcode' => $dcode,
            'label' => $label,
        ]);
    }

    public function vnoxhr(Request $request)
    {
        $docid = $request->input('docid');
        $vno = $request->input('vno');
        $vtype = $request->input('vtype');
        $restcode = $request->input('restcode');
        $vprefix = $request->input('vprefix');
        $roomno = $request->input('roomno');
        $dcode = $request->input('dcode');

        $restrooms = RoomMast::select(
            'room_mast.rcode as roomno',
            'kot.docid as docid'
        )
            ->leftJoin('kot', function ($join) use ($dcode, $docid) {
                $join->on('room_mast.propertyid', '=', 'kot.propertyid')
                    ->where('kot.restcode', $dcode)
                    ->where('kot.nckot', 'N')
                    ->where('kot.docid', '!=', $docid)
                    ->where('kot.pending', 'Y');
            })
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.rest_code', $dcode)
            ->groupBy('room_mast.rcode')
            ->orderBy('room_mast.rcode', 'asc')
            ->get();

        $oneroom = KotModal::select('roomno', 'docid')
            ->where('propertyid', $this->propertyid)
            ->where('restcode', $dcode)
            ->where('nckot', 'N')
            ->where('pending', 'Y')
            ->where('docid', $docid)
            ->orderBy('roomno')
            ->first();

        if ($oneroom) {
            $restrooms = $restrooms->reject(function ($room) use ($oneroom) {
                return $room->roomno == $oneroom->roomno;
            })->values();
        }

        $data = [
            'restrooms' => $restrooms,
            'oneroom' => $oneroom,
        ];

        return json_encode($data);
    }

    public function kottransferstore(Request $request)
    {
        // $permission = revokeopen(172015);
        // if (is_null($permission) || $permission->ins == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $vno = $request->input('vno');
        $dcode = $request->input('dcode');
        $roomno = $request->input('roomno');
        $docid = $request->input('docid');

        $departdata = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
            ->where('departcode', $departdata->dcode)
            ->pluck('associatedrestcode')
            ->toArray();

        $restcodes = array_merge([$departdata->dcode], $associatedrestcode);

        $data = [
            'roomno' => $roomno,
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
        ];

        $vnos = KotModal::where('propertyid', $this->propertyid)
            ->whereIn('restcode', $restcodes)
            ->where('nckot', 'N')
            ->where('pending', 'Y')
            ->where('contradocid', '')
            ->where('voidyn', 'N')
            ->where('delflag', '')
            ->where('vno', $vno)
            ->first();

        if (! empty($vnos->mergedwith)) {
            KotModal::where('propertyid', $this->propertyid)
                ->where('nckot', 'N')
                ->where('pending', 'Y')
                ->where('contradocid', '')
                ->where('voidyn', 'N')
                ->where('delflag', '')
                ->where('mergedwith', $vnos->mergedwith)
                ->update($data);
        } else {
            KotModal::where('propertyid', $this->propertyid)
                ->where('restcode', $vnos->restcode)
                ->where('nckot', 'N')
                ->where('pending', 'Y')
                ->where('contradocid', '')
                ->where('voidyn', 'N')
                ->where('delflag', '')
                ->where('vno', $vno)
                ->update($data);
        }

        // return $vnos;

        // get all vno for updating in use of WHereIn condition
        // foreach ($vnos as $row) {
        //     KotModal::where('propertyid', $this->propertyid)
        //         ->where('restcode', $row->restcode)
        //         ->where('nckot', 'N')
        //         ->where('pending', 'Y')
        //         ->where('vno', $row->vno)
        //         ->update($data);
        // }

        // KotModal::where('propertyid', $this->propertyid)
        //     ->where('restcode', $dcode)
        //     ->where('nckot', 'N')
        //     ->where('pending', 'Y')
        //     ->where('docid', $docid)
        //     ->update($data);

        return back()->with('success', 'Kot Transfered Successfully');
    }

    public function quickitemmasters(Request $request)
    {
        $restcode = $request->restcode;

        // Unit master
        $units = DB::table('unitmast')
            ->where('propertyid', $this->propertyid)
            ->where(function ($q) {
                $q->where('activeYN', 'Y')->orWhereNull('activeYN')->orWhere('activeYN', '');
            })
            ->select('ucode as code', 'name')
            ->orderBy('name')
            ->get();

        // Item group (wahi table jo kotentry me use hota hai)
        $groups = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', $restcode)
            ->where('activeyn', 'Y')
            ->select('code', 'name')
            ->orderBy('name')
            ->get();

        // Item category master (outlet ke hisaab se)
        $categories = DB::table('itemcatmast')
            ->where('propertyid', $this->propertyid)
            ->where('RestCode', $restcode)
            ->where('ActiveYN', 'Y')
            ->select('Code as code', 'Name as name')
            ->orderBy('Name')
            ->get();

        // Kitchen = godown_mast (scode)
        $kitchens = DB::table('godown_mast')
            ->where('propertyid', $this->propertyid)
            ->select('scode as code', 'name')
            ->orderBy('name')
            ->get();

        return response()->json(compact('units', 'groups', 'categories', 'kitchens'));
    }

    public function quickitemstore(Request $request)
    {
        $request->validate([
            'name' => 'required|max:100',
            'unit' => 'required|max:6',
            'itemgroup' => 'required|integer',
            'itemcatcode' => 'required|max:9',
            'salerate' => 'required|numeric|min:0',
            'restcode' => 'required',
            'dishtype' => 'nullable|in:1,2,3',
            'discapp' => 'nullable|in:Y,N',
            'schrgapp' => 'nullable|in:Y,N',
            'rateinctax' => 'nullable|in:Y,N',
        ]);

        try {
            DB::beginTransaction();

            $name = strtoupper(trim($request->name));

            $exists = ItemMast::where('Property_ID', $this->propertyid)
                ->where('RestCode', $request->restcode)
                ->where('Name', $name)
                ->exists();

            if ($exists) {
                DB::rollBack();

                return response()->json(['message' => 'This item already exists!'], 422);
            }

            $plen = strlen((string) $this->propertyid);

            $maxseqMast = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->whereRaw('CAST(Code AS CHAR) LIKE ?', ['%'.$this->propertyid])
                ->lockForUpdate()
                ->selectRaw('MAX(CAST(SUBSTRING(CAST(Code AS CHAR), 1, CHAR_LENGTH(CAST(Code AS CHAR)) - ?) AS UNSIGNED)) AS mx', [$plen])
                ->value('mx');

            $maxseqItems = DB::table('items')
                ->where('propertyid', $this->propertyid)
                ->whereRaw('CAST(icode AS CHAR) LIKE ?', ['%'.$this->propertyid])
                ->lockForUpdate()
                ->selectRaw('MAX(CAST(SUBSTRING(CAST(icode AS CHAR), 1, CHAR_LENGTH(CAST(icode AS CHAR)) - ?) AS UNSIGNED)) AS mx', [$plen])
                ->value('mx');

            $code = (int) ((max((int) $maxseqMast, (int) $maxseqItems) + 1).$this->propertyid);

            
            DB::table('itemmast')->insert([
                'Property_ID' => $this->propertyid,
                'Code' => $code,
                'codeold' => '',
                'Name' => $name,
                'itemcodeold' => '',
                'Unit' => $request->unit,
                'Type' => 'Finish',
                'cattype' => '',
                'dishtype' => $request->dishtype ?: null,
                'favourite' => 0,
                'ItemGroup' => (int) $request->itemgroup,
                'RestCode' => $request->restcode,
                'PurchRate' => 0,
                'MinStock' => 0,
                'MaxStock' => 0,
                'ReStock' => 0,
                'DiscApp' => $request->discapp ?? 'Y',
                'RateEdit' => 'N',
                'U_Name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'U_AE' => 'A',
                'ItemCatCode' => $request->itemcatcode,
                'DispCode' => 9999,
                'Kitchen' => $request->kitchen ?? '',
                'ConvRatio' => 0,
                'IssueUnit' => '',
                'SChrgApp' => $request->schrgapp ?? 'N',
                'Specification' => '',
                'RateIncTax' => $request->rateinctax ?? 'N',
                'ActiveYN' => 'Y',
                'NType' => '',
                'ItemType' => '',
                'BarCode' => '',
                'HSNCode' => '',
                'LabelName' => '',
                'LabelQty' => '',
                'LabelRemark1' => '',
                'LabelRemark2' => '',
                'LabelRemark3' => '',
                'LabelRemark4' => '',
                'iempic' => '',
            ]);

            DB::table('itemrate')->insert([
                'Property_ID' => $this->propertyid,
                'ItemCode' => (string) $code,
                'itemcodeold' => '',
                'RestCode' => $request->restcode,
                'Rate' => $request->salerate,
                'AppDate' => $this->ncurdate,
                'Party' => '',
                'U_Name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'updated_at' => null,
                'U_AE' => 'A',
            ]);

            $itemsExists = DB::table('items')
                ->where('propertyid', $this->propertyid)
                ->where('icode', (string) $code)
                ->exists();

            if (! $itemsExists) {
                DB::table('items')->insert([
                    'propertyid' => $this->propertyid,
                    'icode' => (string) $code,
                    'name' => $name,
                    'barcode' => (string) $code,
                    'hsncode' => '996331',
                    'itempic' => null,
                    'u_name' => Auth::user()->u_name,
                    'created_at' => $this->currenttime,
                    'updated_at' => null,
                    'u_ae' => 'a',
                ]);
            }

            DB::commit();

            return response()->json([
                'message' => 'Item added successfully!',
                'code' => $code,
                'name' => $name,
            ]);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['message' => 'Error: '.$e->getMessage()], 500);
        }
    }
}
