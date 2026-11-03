<?php

namespace App\Http\Controllers;

use App\Models\GatePassOut;
use App\Models\Companyreg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\VoucherPrefix;
use App\Models\Stock;
use App\Helpers\DateHelper;

class GatePassController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
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
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function index(Request $request)
    {
        $propertyid = $this->propertyid;
        $gatePasses = GatePassOut::where('propertyid', $propertyid)
            ->orderBy('id', 'desc')
            ->get();

        // Get next gate pass number
        $lastGatePass = GatePassOut::where('propertyid', $propertyid)
            ->orderBy('gatepassno', 'desc')
            ->first();

        $nextGatePassNo = $lastGatePass ? $lastGatePass->gatepassno + 1 : 1;

        // Item names for dropdown
        $itemNames = DB::table('itemmast')
            ->select('Code', 'Name')
            ->where('Property_ID', $propertyid)
            ->where(['RestCode' => 'PURC' . $propertyid, 'ActiveYN' => 'Y'])
            ->orderBy('Name', 'ASC')->get();

        // Get parties for dropdown
        $parties = DB::table('subgroup')
            ->select('sub_code', 'name')
            ->where('propertyid', $propertyid)
            ->where('group_code', '27' . $propertyid)
            ->orderBy('name', 'ASC')->get();

        // Get departments where nature is Store or housekeep
        $departments = DB::table('depart')->select('dcode', 'name')->whereIn('nature', ['Store', 'Housekeep'])->where('propertyid', $propertyid)->orderBy('name', 'ASC')->get();

        // If AJAX request, return only table rows
        if ($request->ajax() || $request->get('ajax')) {
            $html = '';
            foreach ($gatePasses as $gatePass) {
                $date = $gatePass->date ? \Carbon\Carbon::parse($gatePass->date)->format('d-m-Y') : '-';
                $time = $gatePass->time ? \Carbon\Carbon::parse($gatePass->time)->format('H:i') : '-';
                $partyName = DB::table('subgroup')->where('sub_code', $gatePass->partycode)->where('propertyid', $propertyid)->value('name');
                $visitorParty = $gatePass->visitiorname ?? ($partyName ?? '-');
                $mobile = $gatePass->mobileno ?? '-';
                $vehicle = $gatePass->vehicleno ?? '-';
                $material = $gatePass->materinouyn == 'Y' ? 'Yes' : 'No';
                $itemName = $gatePass->item_name ?? '-';
                $qty = $gatePass->qty ?? '-';
                if ($gatePass->materinouyn == 'Y') {
                    $Itemname = DB::table('itemmast')->where('Code', $gatePass->item_name)->where('Property_ID', $propertyid)->value('Name');
                } else {
                    $Itemname = '-';
                }
                // Depart name
                $departmentName = DB::table('depart')->where('dcode', $gatePass->department)->where('propertyid', $propertyid)->value('name');

                $department = $departmentName ?? '-';
                $badgeClass = $gatePass->exitstatus == 'PENDING' ? 'warning' : 'success';

                $html .= '<tr id="row_' . $gatePass->sn . '">';
                $html .= '<td>' . $gatePass->gatepassno . '</td>';
                $html .= '<td>' . $date . '</td>';
                $html .= '<td>' . $time . '</td>';
                $html .= '<td>' . $gatePass->type . '</td>';
                $html .= '<td>' . $visitorParty . '</td>';
                $html .= '<td>' . $mobile . '</td>';
                $html .= '<td>' . $vehicle . '</td>';
                $html .= '<td>' . $material . '</td>';
                $html .= '<td>' . $itemName . '</td>';
                $html .= '<td>' . $qty . '</td>';
                $html .= '<td>' . $department . '</td>';
                $html .= '<td><span class="badge badge-' . $badgeClass . '">' . $gatePass->exitstatus . '</span></td>';
                $html .= '<td>';
                $html .= '<button class="btn btn-sm btn-primary" onclick="editGatePass(' . $gatePass->sn . ')" title="Edit"><i class="fa fa-edit"></i></button> ';
                $html .= '<button class="btn btn-sm btn-danger" onclick="deleteGatePass(' . $gatePass->sn . ')" title="Delete"><i class="fa fa-trash"></i></button>';
                $html .= '</td>';
                $html .= '</tr>';
            }
            return response()->json(['html' => $html]);
        }

        return view('property.gatepassout.index', compact('gatePasses', 'nextGatePassNo', 'parties', 'departments', 'itemNames'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $propertyid = $this->propertyid;

        // Get next gate pass number
        $lastGatePass = GatePassOut::where('propertyid', $propertyid)
            ->orderBy('gatepassno', 'desc')
            ->first();

        $nextGatePassNo = $lastGatePass ? $lastGatePass->gatepassno + 1 : 1;

        // Get parties for dropdown
        $parties = DB::table('subgroup')
            ->select('sub_code', 'name')
            ->where('propertyid', $propertyid)
            ->where('group_code', '27' . $propertyid)
            ->orderBy('name', 'ASC')->get();

        // Get departments where nature is Store or housekeep
        $departments = DB::table('depart')->select('dcode', 'name')->whereIn('nature', ['Store', 'Housekeep'])->where('propertyid', $propertyid)->orderBy('name', 'ASC')->get();


        return view('property.gatepassout.create', compact('nextGatePassNo', 'parties', 'departments', 'itemNames'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $propertyid = $this->propertyid;

        $validated = $request->validate([
            'type' => 'required',
            'visitiorname' => 'nullable|string|max:35',
            'partycode' => 'nullable|string|max:10',
            'mobileno' => 'nullable|string|max:15',
            'vehicleno' => 'nullable|string|max:10',
            'materinouyn' => 'nullable|string|max:1',
            'item_name' => 'nullable|string|max:50',
            'qty' => 'nullable|numeric',
            'unit' => 'nullable|string|max:20',
            'department' => 'nullable|string|max:20',
            'remark' => 'nullable|string|max:35',
        ]);

        // Get next gate pass number
        $lastGatePass = GatePassOut::where('propertyid', $propertyid)
            ->orderBy('gatepassno', 'desc')
            ->first();
        $vtype = 'GARP';

        $chkvpf = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', date('Y-m-d', strtotime($request->input('date'))))
            ->whereDate('date_to', '>=', date('Y-m-d', strtotime($request->input('date'))))
            ->first();
        if ($chkvpf == null) {
            return back()->with('error', 'Voucher Prefix not found for the selected date: ' . date('d-m-Y', strtotime($request->input('date'))));
        }


        $vno = $chkvpf->start_srl_no + 1;
        $vprefix = $chkvpf->prefix;

        $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

        $nextGatePassNo = $lastGatePass ? $lastGatePass->gatepassno + 1 : 1;

        $gatePass = new GatePassOut();
        $gatePass->propertyid = $propertyid;
        $gatePass->docid = $docid;
        $gatePass->gatepassno = $nextGatePassNo;
        $gatePass->inout = 'OUT';
        $gatePass->type = $request->type;
        $gatePass->vtype = 'GARP';
        $gatePass->mtype = $request->materinouyn == 'Y' ? 'GAR' : '';
        $gatePass->date = now();
        $gatePass->time = now()->format('H:i:s');
        $gatePass->visitiorname = $request->visitiorname;
        $gatePass->partycode = $request->partycode;
        $gatePass->mobileno = $request->mobileno;
        $gatePass->vehicleno = $request->vehicleno;
        $gatePass->materinouyn = $request->materinouyn ?? 'N';
        $gatePass->item_name = $request->item_name;
        $gatePass->qty = $request->qty;
        $gatePass->unit = $request->unit;
        $gatePass->department = $request->department;
        $gatePass->remark = $request->remark;
        $gatePass->exitstatus = 'PENDING';
        $gatePass->u_name = Auth::user()->name ?? 'system';
        $gatePass->created_at = now();
        $gatePass->u_ae = 'A';
        $gatePass->save();

        $this->insertStock($request, $docid, $vtype, $vno);
        /// Update the voucher prefix with the new serial number
        VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', date('Y-m-d', strtotime($request->input('date'))))
            ->whereDate('date_to', '>=', date('Y-m-d', strtotime($request->input('date'))))
            ->update(['start_srl_no' => $vno]);
        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass created successfully with number: ' . $nextGatePassNo,
                'data' => $gatePass
            ]);
        }

        return redirect()->route('gatepass.index')
            ->with('success', 'Gate Pass created successfully with number: ' . $nextGatePassNo);
    }

    public function insertStock($request, $docid, $vtype, $vno, $status = 'a')
    {
        $ranges = DateHelper::calculateDateRanges($request->input('date'));
        if ($status == 'e') {
            $stockdata = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $vno,
                'sno' => '1',
                'restcode' => 'PURC' . $this->propertyid,
                'vtype' => $vtype,
                'vdate' => $request->input('date'),
                'vtime' => date('H:i:s'),
                'vprefix' => $ranges['finyear']['current'],
                'item' => $request->item_name,
                'issueunit' => $request->unit,
                'qtyiss' => 0,
                'qtyrec' => '',
                'unit' => $request->unit,
                'rate' => '',
                'partycode' => $request->partycode,
                'amount' => '',
                'taxper' => '',
                'taxamt' => '',
                'discper' => '',
                'discamt' => '',
                'description' => '',
                'specification' => '',
                'total' => '',
                'discapp' => '',
                'roundoff' => '',
                'departcode' => '',
                'godowncode' => '',
                'chalqty' => '',
                'recdqty' => '',
                'rejqty' => '',
                'accqty' => '',
                'recdunit' => $request->unit,
                'itemrate' => '',
                'itemrestcode' => '',
                'convratio' => '',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->name ?? 'system',
                'u_ae' => 'e',
            ];
         DB::beginTransaction();
         try {
             $existingStock = Stock::where('propertyid', $this->propertyid)
                                   ->where('docid', $docid)
                                   ->first();
             if ($existingStock) {
                 Stock::where('propertyid', $this->propertyid)
                      ->where('docid', $docid)
                      ->delete();
                 Stock::insert($stockdata);
             }
             DB::commit();
         } catch (\Exception $e) {
             DB::rollBack();
             return back()->with('error', 'Error: ' . $e->getMessage());
         }


        } else {
            $stockdata = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $vno,
                'sno' => '1',
                'restcode' => 'PURC' . $this->propertyid,
                'vtype' => $vtype,
                'vdate' => $request->input('date'),
                'vtime' => date('H:i:s'),
                'vprefix' => $ranges['finyear']['current'],
                'item' => $request->item_name,
                'issueunit' => $request->unit,
                'qtyiss' => 0,
                'qtyrec' => '',
                'unit' => $request->unit,
                'rate' => '',
                'partycode' => $request->partycode,
                'amount' => '',
                'taxper' => '',
                'taxamt' => '',
                'discper' => '',
                'discamt' => '',
                'description' => '',
                'specification' => '',
                'total' => '',
                'discapp' => '',
                'roundoff' => '',
                'departcode' => '',
                'godowncode' => '',
                'chalqty' => '',
                'recdqty' => '',
                'rejqty' => '',
                'accqty' => '',
                'recdunit' => $request->unit,
                'itemrate' => '',
                'itemrestcode' => '',
                'convratio' => '',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->name ?? 'system',
                'u_ae' => 'e',
            ];
            Stock::insert($stockdata);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $gatePass = GatePassOut::findOrFail($id);
        return view('property.gatepassout.show', compact('gatePass'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, string $id)
    {
        $gatePass = GatePassOut::findOrFail($id);

        if ($request->ajax()) {
            return response()->json($gatePass);
        }
        $propertyid = $this->propertyid;

        $itemNames = DB::table('itemmast')
            ->select('Code', 'Name')
            ->where('Property_ID', $propertyid)
            ->where(['RestCode' => 'PURC' . $propertyid, 'ActiveYN' => 'Y'])
            ->orderBy('Name', 'ASC')->get();


        // Get parties for dropdown
        $parties = DB::table('subgroup')
            ->select('sub_code', 'name')
            ->where('propertyid', $propertyid)
            ->where('group_code', '27' . $propertyid)
            ->orderBy('name', 'ASC')->get();

        // Get departments where nature is Store or housekeep
        $departments = DB::table('depart')->select('dcode', 'name')->whereIn('nature', ['Store', 'Housekeep'])->where('propertyid', $propertyid)->orderBy('name', 'ASC')->get();


        return view('property.gatepassout.edit', compact('gatePass', 'parties', 'departments', 'itemNames'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'type' => 'required',
            'visitiorname' => 'nullable|string|max:35',
            'partycode' => 'nullable|string|max:10',
            'mobileno' => 'nullable|string|max:15',
            'vehicleno' => 'nullable|string|max:10',
            'materinouyn' => 'nullable|string|max:1',
            'item_name' => 'nullable|string|max:50',
            'qty' => 'nullable|numeric',
            'unit' => 'nullable|string|max:20',
            'department' => 'nullable|string|max:20',       
            'remark' => 'nullable|string|max:35',
            'exitstatus' => 'nullable|string|max:8',
        ]);

        $gatePass = GatePassOut::findOrFail($id);
        $gatePass->type = $request->type;
        $gatePass->vtype = 'GARP';
        $gatePass->mtype = $request->materinouyn == 'Y' ? 'GAR' : '';
        $gatePass->visitiorname = $request->visitiorname;
        $gatePass->partycode = $request->partycode;
        $gatePass->mobileno = $request->mobileno;
        $gatePass->vehicleno = $request->vehicleno;
        $gatePass->materinouyn = $request->materinouyn ?? 'N';
        $gatePass->item_name = $request->item_name;
        $gatePass->qty = $request->qty;
        $gatePass->unit = $request->unit;
        $gatePass->department = $request->department;
        $gatePass->remark = $request->remark;
        $gatePass->exitstatus = $request->exitstatus ?? $gatePass->exitstatus;
        $gatePass->u_name = Auth::user()->name ?? 'system';
        $gatePass->created_at = now();
        $gatePass->u_ae = 'E';

        $gatePass->save();

        $this->insertStock($request, $gatePass->docid, $gatePass->vtype, '', 'e');

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass updated successfully',
                'data' => $gatePass
            ]);
        }

        return redirect()->route('gatepass.index')
            ->with('success', 'Gate Pass updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, string $id)
    {
        $gatePass = GatePassOut::findOrFail($id);
        $gatePass->delete();

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass deleted successfully'
            ]);
        }

        return redirect()->route('gatepass.index')
            ->with('success', 'Gate Pass deleted successfully');
    }
}
