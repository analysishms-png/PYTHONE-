<?php

namespace App\Http\Controllers\purchaseorder;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\GodownMast;
use App\Models\ItemMast;
use App\Models\EnviroInventory;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use App\Models\VoucherPrefix;
use App\Models\Companyreg;
use App\Models\Indent;
use App\Models\Indent1;
use App\Models\States;
use App\Models\SubGroup;
use App\Models\UnitMast;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class PurchaseOrderController extends Controller
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

    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        return $ncurdate;
    }

    public function pendingindentitems(Request $request)
    {
        $indentdocid = $request->indentno;

        $indent = Indent::where('propertyid', $this->propertyid)
            ->where('docid', $indentdocid)
            ->where('refdocId', '')
            ->where('delflag', 'N')
            ->first();

        if (is_null($indent)) {
            return response()->json([
                'success' => false,
                'message' => "Indent Not Found"
            ]);
        }

        $indet1 = Indent1::where('propertyid', $this->propertyid)
            ->where('docid', $indent->docid)
            ->orderBy('sno')
            ->get();

        return response([
            'success' => true,
            'message' => "Data Found",
            'data' => $indet1
        ]);
    }

    public function purchaseorder()
    {

        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = PurchaseOrder::select(
            'porder.*',
            'subgroup.name as subname',
            DB::raw('COUNT(porder1.docid) as itemcount'),
            DB::raw('porder1.docid')
        )
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'porder.partycode')
            ->leftJoin('porder1', 'porder.docid', '=', 'porder1.docid')
            ->where('porder.propertyid', $this->propertyid)
            ->groupBy('porder.docid', 'subgroup.name')
            ->get();

        $maxvno = PurchaseOrder::where('propertyid', $this->propertyid)->max('vno');
        if (isset($maxvno)) {
            $mrno = $maxvno + 1;
        } else {
            $mrno = 1;
        }
        $godown = GodownMast::where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $items = ItemMast::where('Property_ID', $this->propertyid)->where('RestCode', 'PURC' . $this->propertyid)->orderBy('Name', 'ASC')->get();
        $enviroinv = EnviroInventory::where('propertyid', $this->propertyid)->first();
        $superwiser = Auth::user()->superwiser;
        $partydatamain = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('group_code', '27' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();

        $indents = Indent::where('propertyid', $this->propertyid)
            ->where('refdocId', '')
            ->where('delflag', 'N')
            ->orderByDesc('vno')
            ->get();

        return view('property.purchaseorder.purchaseorder', [
            'data' => $data,
            'ncurdate' => $this->ncurdate,
            'mrno' => $mrno,
            'godown' => $godown,
            'items' => $items,
            'enviroinv' => $enviroinv,
            'superwiser' => $superwiser,
            'partydatamain' => $partydatamain,
            'indents' => $indents
        ]);
    }

    // Submit Purchase Order
    public function purchaseordersubmit(Request $request)
    {
        $validate = $request->validate([
            'pono' => 'required',
            'vdate' => 'required',
            'vtype' => 'required',
        ]);

        $vtype = $request->input('vtype');
        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $request->input('vdate'))
            ->whereDate('date_to', '>=', $request->input('vdate'))
            ->first();

        $vno = ($chkvpf->start_srl_no ?? 0) + 1;
        $vprefix = $chkvpf->prefix ?? date('Y');

        $docid = $this->propertyid . $vtype . ' ' . $vprefix . ' ' . $vno;

        $indentnos = $request->input('indentnos');

        DB::beginTransaction();
        try {
            if (!empty($indentnos)) {
                Indent::where('propertyid', $this->propertyid)
                    ->where('docid', $indentnos)
                    ->update(['refdocId' => $docid]);
                $indentbl = Indent1::where('propertyid', $this->propertyid)
                    ->where('docid', $indentnos)
                    ->first();
            }

            $indata = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $vno,
                'vtype' => $vtype,
                'vprefix' => $vprefix,
                'vdate' => $request->input('vdate'),
                'partycode' => $request->input('party'),
                'quotno' => $request->input('pono'),
                'quotdate' => date('Y-m-d', strtotime($request->input('podate'))),
                'exp_delivery' => date('Y-m-d', strtotime($request->input('exp_delivery'))),
                'remark' => $request->input('remark') ?? '',
                'dispatchmode' => $request->input('dispmode') ?? '',
                'despatchthru' => $request->input('despthru') ?? '',
                'paymentterms' => $request->input('payterms') ?? '',
                'packcharge' => $request->input('packcharge') ?? 0,
                'forwardcharges' => $request->input('fwdcharge') ?? 0,
                'discper' => $request->input('discount') ?? 0,
                'taxper' => $request->input('gst') ?? 0,
                'u_name' => Auth::user()->u_name ?? $this->username,
                'u_ae' => 'a',
                'created_at' => $this->currenttime,
            ];

            PurchaseOrder::insert($indata);

            $totalitem = $request->input('totalitem');
            $gstRate = $request->input('gst') ?? 0;
            $discountRate = $request->input('discount') ?? 0;

            for ($i = 1; $i <= $totalitem; $i++) {
                $qty = $request->input('wtqty' . $i);
                $rate = $request->input('itemrate' . $i);
                $amount = $request->input('amount' . $i);

                // Calculate tax amount
                $taxamt = ($amount * $gstRate) / 100;
                $total = $request->input('total' . $i);

                $stock = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'sno' => $i,
                    'vno' => $vno,
                    'vdate' => $request->input('vdate'),
                    'vtype' => $vtype,
                    'vprefix' => $vprefix,
                    'partycode' => $request->input('party'),
                    'itemcode' => $request->input('item' . $i),
                    'qty' => $qty,
                    'instock' => $request->input('instock' . $i) ?? 0,
                    'unit' => $request->input('unit' . $i),
                    'rate' => $rate,
                    'amount' => $amount,
                    'indentdocid' => $indentnos ?? '',
                    'indentsno' => $indentbl->vno ?? '',
                    'specification' => $request->input('specification' . $i) ?? '',
                    'taxstru' => $gstRate,
                    'taxamt' => $taxamt,
                    'total' => $total,
                    'u_name' => Auth::user()->u_name ?? $this->username,
                    'created_at' => $this->currenttime,
                ];

                PurchaseOrderItem::insert($stock);
            }

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');

            DB::commit();
            return back()->with('success', 'Purchase Order Entry Submitted');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('error', 'An error occurred while submitting the purchase order: ' . $e->getMessage());
        }
    }

    // Delete Purchase Order
    public function deletepurchaseorder(Request $request, $docid)
    {
        PurchaseOrder::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->delete();
        PurchaseOrderItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->delete();

        return back()->with('success', 'Purchase Order Entry Deleted');
    }

    // Get Purchase Order Print
    public function purchaseorderprint(Request $request, $docid)
    {
        $data = PurchaseOrder::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();

        // return $data;

        $companyname = SubGroup::where('propertyid', $this->propertyid)
            ->where('propertyid', $this->propertyid)
            ->where('sub_code', $data->partycode)
            ->value('name');

            // return $companyname;

        if (!$data) {
            return view('property.purchaseorder.purchaseorderprinting', [
                'data' => null,
                'comp' => null,
                'statename' => null
            ]);
        }

        $items = PurchaseOrderItem::where('porder1.propertyid', $this->propertyid)
            ->where('porder1.docid', $docid)
            ->leftJoin('itemmast', function ($join) {
                $join->on('itemmast.Code', '=', 'porder1.itemcode')
                    ->whereColumn('itemmast.Property_ID', 'porder1.propertyid');
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'porder1.unit')
                    ->whereColumn('unitmast.propertyid', 'porder1.propertyid');
            })
            ->select(
                'porder1.*',
                'itemmast.Name as ItemName',
                'unitmast.name as UnitName'
            )
            ->get();

        $comp = Companyreg::where('propertyid', $this->propertyid)->first();

        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $comp->state_code)
            ->value('name');

        return view('property.purchaseorder.purchaseorderprinting', compact(
            'data',
            'comp',
            'statename',
            'companyname',
            'items'
        ));
    }

    // Open Update Purchase Order
    public function updatepurchaseorder(Request $request, $docid)
    {
        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = PurchaseOrder::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();
        $items = PurchaseOrderItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->get();
        $godown = GodownMast::where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $itemmast = ItemMast::where('Property_ID', $this->propertyid)->where('RestCode', 'PURC' . $this->propertyid)->orderBy('Name', 'ASC')->get();
        $partydatamain = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('group_code', '27' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $units = UnitMast::where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        // $value = [
        //             'docid' => $docid,
        //             'data' => $data,
        //             'items' => $items,
        //             'propertyid' => $this->propertyid,
        //             'godown' => $godown,
        //             'itemmast' => $itemmast,
        //             'partydatamain' => $partydatamain,
        //             'units' => $units,

        // ];

        // echo "<pre>";
        // print_r($value);
        // echo "</pre>";
        // die();
        return view('property.purchaseorder.updatepurchaseorder', compact('data',  'godown', 'itemmast', 'partydatamain', 'items', 'units'));
    }

    // Update Purchase Order
    public function purchaseorderupdate(Request $request)
    {
        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $docid = $request->input('docid');
        $vtype = $request->input('vtype');
        $vprefix = $request->input('vprefix');
        $vno = $request->input('pono');
        $vdate = $request->input('vdate');
        $party = $request->input('party');
        $gstRate = $request->input('gst') ?? 0;
        $updatedata = [
            'vdate' => $vdate,
            'partycode' => $party,
            'remark' => $request->input('remark') ?? '',
            'exp_delivery' => date('Y-m-d', strtotime($request->input('exp_delivery'))),
            'dispatchmode' => $request->input('dispmode') ?? '',
            'despatchthru' => $request->input('despthru') ?? '',
            'paymentterms' => $request->input('payterms') ?? '',
            'packcharge' => $request->input('packcharge') ?? 0,
            'forwardcharges' => $request->input('fwdcharge') ?? 0,
            'discper' => $request->input('discount') ?? 0,
            'taxper' => $request->input('gst') ?? 0,
            'u_name' => Auth::user()->u_name ?? $this->username,
            'u_ae' => 'e',
            'updated_at' => $this->currenttime,
        ];
        PurchaseOrder::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->update($updatedata);
        PurchaseOrderItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->delete();
        $totalitem = $request->input('totalitem');
        for ($i = 1; $i <= $totalitem; $i++) {
            $qty = $request->input('wtqty' . $i);
            $rate = $request->input('itemrate' . $i);
            $amount = $request->input('amount' . $i);
            // Calculate tax amount
            $taxamt = ($amount * $gstRate) / 100;
            $total = $request->input('total' . $i);
            $stock = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'sno' => $i,
                'vno' => $vno,
                'vdate' => $vdate,
                'vtype' => $vtype,
                'vprefix' => date('Y'),
                'partycode' => $party,
                'itemcode' => $request->input('item' . $i),
                'qty' => $qty,
                'instock' => $request->input('instock' . $i),
                'unit' => $request->input('unit' . $i),
                'rate' => $rate,
                'amount' => $amount,
                'indentdocId' => $request->input('indentdocid' . $i) ?? '',
                'indentsno' => $request->input('indentsno' . $i) ?? '',
                'specification' => $request->input('specification' . $i) ?? '',
                'taxstru' => $gstRate,
                'taxamt' => $taxamt,
                'total' => $total,
                'u_name' => Auth::user()->u_name ?? $this->username,
                'created_at' => $this->currenttime,
            ];
            PurchaseOrderItem::insert($stock);
        }
        return redirect()->route('purchaseorder')->with('success', 'Purchase Order Updated Successfully!');
    }
}
