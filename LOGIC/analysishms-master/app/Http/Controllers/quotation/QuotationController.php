<?php

namespace App\Http\Controllers\quotation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\GodownMast;
use App\Models\ItemMast;
use App\Models\EnviroInventory;
use App\Models\QuotationItem;
use App\Models\Quotation;
use App\Models\VoucherPrefix;
use App\Models\Companyreg;
use App\Models\States;
use App\Models\UnitMast;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class QuotationController extends Controller
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

    public function Quotation()
    {

        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = Quotation::select(
            'quotation.*',
            'subgroup.name as subname',
            DB::raw('COUNT(quotation1.docid) as itemcount'),
            DB::raw('quotation1.docid')
        )
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'quotation.partycode')
            ->leftJoin('quotation1', 'quotation.docid', '=', 'quotation1.docid')
            ->where('quotation.propertyid', $this->propertyid)
            ->groupBy('quotation.docid', 'subgroup.name')
            ->get();

        $maxvno = Quotation::where('propertyid', $this->propertyid)->max('vno');
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

        return view('property.quotation.quotation', [
            'data' => $data,
            'ncurdate' => $this->ncurdate,
            'mrno' => $mrno,
            'godown' => $godown,
            'items' => $items,
            'enviroinv' => $enviroinv,
            'superwiser' => $superwiser,
            'partydatamain' => $partydatamain
        ]);
    }


    // Submit Purchase Order
    public function Quotationsubmit(Request $request)
    {
        $validate = $request->validate([
            'pono' => 'required',
            'vdate' => 'required',
            'vtype' => 'required',
        ]);
        $ncurdate = $this->ncurdate;

        $vtype = $request->input('vtype');
        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $ncurdate)
            ->whereDate('date_to', '>=', $ncurdate)
            ->first();


        $vno = ($chkvpf->start_srl_no ?? 0) + 1;
        $vprefix = $chkvpf->prefix ?? date('Y');

        $docid = $this->propertyid . $vtype . ' ' . $vprefix . ' ' . $vno;

        $indata = [
            'propertyid' => $this->propertyid,
            'docid' => $docid,
            'vno' => $vno,
            'vtype' => $vtype,
            'vprefix' => $vprefix,
            'vdate' => $request->input('vdate'),
            'valiedup' => $request->input('valiedup'),
            'partycode' => $request->input('party'),
            'quotno' => $request->input('pono'),
            'quotdate' => date('Y-m-d', strtotime($request->input('podate'))),
            'remark' => $request->input('remark') ?? '',
            // 'dispatchmode' => $request->input('dispmode') ?? '',
            // 'despatchthru' => $request->input('despthru') ?? '',
            // 'paymentterms' => $request->input('payterms') ?? '',
            // 'packcharge' => $request->input('packcharge') ?? 0,
            // 'forwardcharges' => $request->input('fwdcharge') ?? 0,
            // 'discper' => $request->input('discount') ?? 0,
            // 'taxper' => $request->input('gst') ?? 0,
            'u_name' => Auth::user()->u_name ?? $this->username,
            'u_ae' => 'a',
            'created_at' => $this->currenttime,
        ];

        Quotation::insert($indata);

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
                'valiedup' => $request->input('valiedup'),
                'vtype' => $vtype,
                'vprefix' => $vprefix,
                'partycode' => $request->input('party'),
                'itemcode' => $request->input('item' . $i),
                'qty' => $qty,
                'instock' => $request->input('instock' . $i),
                'unit' => $request->input('unit' . $i),
                'rate' => $rate,
                'amount' => $amount,
                // 'indentdocid' => null,
                // 'indentsno' => null,
                'specification' => $request->input('specification' . $i) ?? '',
                'taxstru' => $gstRate,
                'taxamt' => $taxamt,
                'total' => $total,
                'u_name' => Auth::user()->u_name ?? $this->username,
                'created_at' => $this->currenttime,
            ];

            QuotationItem::insert($stock);
        }

        // Incriment Voucher No
        $chkvpf->start_srl_no = $vno;
        $chkvpf->save();

        return back()->with('success', 'Quotation Entry Submitted');
    }

    // Delete Quotation
    public function deleteQuotation(Request $request, $docid)
    {
        Quotation::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->delete();
        QuotationItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->delete();

        return back()->with('success', 'Quotation Entry Deleted');
    }

    // Get Quotation Print
    public function Quotationprint(Request $request, $docid)
    {
        $data = Quotation::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();
        $data->items = QuotationItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->get();
        $comp = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $comp->state_code)
            ->value('name');

        return view('property.quotation.quotationprinting', compact('data', 'comp', 'statename'));
    }

    // Open Update Purchase Order
    public function updateQuotation(Request $request, $docid)
    {
        $permission = revokeopen(161114);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = Quotation::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();
        $items = QuotationItem::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->get();
        $godown = GodownMast::where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $itemmast = ItemMast::where('Property_ID', $this->propertyid)->where('RestCode', 'PURC' . $this->propertyid)->orderBy('Name', 'ASC')->get();
        $partydatamain = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('group_code', '27' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $units = UnitMast::where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        return view('property.quotation.updatequotation', compact('data',  'godown', 'itemmast', 'partydatamain', 'items', 'units'));
    }  

    // Update Purchase Order
    public function Quotationupdate(Request $request)
    {

        //dd($request->all());

        $permission = revokeopen(161114); // 161114
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
            'valiedup' => $request->input('valiedup'),
            'partycode' => $party,
            'remark' => $request->input('remark') ?? '',
            // 'dispatchmode' => $request->input('dispmode') ?? '',
            // 'despatchthru' => $request->input('despthru') ?? '',
            // 'paymentterms' => $request->input('payterms') ?? '',
            // 'packcharge' => $request->input('packcharge') ?? 0,
            // 'forwardcharges' => $request->input('fwdcharge') ?? 0,
            // 'discper' => $request->input('discount') ?? 0,
            // 'taxper' => $request->input('gst') ?? 0,
            'u_name' => Auth::user()->u_name ?? $this->username,
            'u_ae' => 'e',
            'updated_at' => $this->currenttime,
        ];
        Quotation::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->update($updatedata);
        QuotationItem::where('propertyid', $this->propertyid)
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
                'valiedup' => $request->input('valiedup'),
                'vtype' => $vtype,
                'vprefix' => date('Y'),
                'partycode' => $party,
                'itemcode' => $request->input('item' . $i),
                'qty' => $qty,
                'instock' => $request->input('instock' . $i),
                'unit' => $request->input('unit' . $i),
                'rate' => $rate,
                'amount' => $amount,
                'specification' => $request->input('specification' . $i) ?? '',
                'taxstru' => $gstRate,
                'taxamt' => $taxamt,
                'total' => $total,
                'u_name' => Auth::user()->u_name ?? $this->username,
                'created_at' => $this->currenttime,
            ];
            QuotationItem::insert($stock);
        }
        return redirect()->route('quotation')->with('success', 'Quotation Updated Successfully!');
    }

    public function partywisequotationrate(Request $request)
    {


        $partyCode = $request->partycode;
        $itemCode = $request->itemcode;
        $quotation = QuotationItem::where('partycode', $partyCode)
            ->where('itemcode', $itemCode)
            ->where('propertyid', $this->propertyid)
            ->whereDate('valiedup', '>=', $this->ncurdate)
            ->orderByDesc('id')
            ->first('rate');

        if ($quotation) {
            return response()->json(['status' => 'success', 'data' => $quotation->rate ?? 0, 'ncur' => $this->ncurdate,'propertyid'=>$this->propertyid]);
        }
        return response()->json(['status' => 'success', 'data' => 0]);
    }

    public function quotationrate(Request $request)
    {
        $itemCode = $request->itemcode;
        $quotation = QuotationItem::where('itemcode', $itemCode)
            ->where('propertyid', $this->propertyid)
            ->whereDate('valiedup', '>=', $this->ncurdate)
            ->orderByDesc('id')
            ->first('rate');

        if ($quotation) {
        }
    }
}
