<?php

namespace App\Http\Controllers;

use App\Models\GatePassIn;
use App\Models\Companyreg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class GatePassInController extends Controller
{
    /**
     * Display a listing of the resource.
     * 
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
        $gatePassIns = GatePassIn::where('propertyid', $propertyid)
            ->orderBy('id', 'desc')
            ->get();
        
        // Get next gate pass number
        $lastGatePass = GatePassIn::where('propertyid', $propertyid)
            ->orderBy('gatepassno', 'desc')
            ->first();
        
        $nextGatePassNo = $lastGatePass ? $lastGatePass->gatepassno + 1 : 1;
        
         // Item names for dropdown
        $itemNames = DB::table('itemmast')
            ->select('Code','Name')
            ->where('Property_ID', $propertyid)
            ->where(['RestCode' => 'PURC'.$propertyid, 'ActiveYN' => 'Y'])
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
            foreach ($gatePassIns as $gatePassIn) {
                $date = $gatePassIn->date ? \Carbon\Carbon::parse($gatePassIn->date)->format('d-m-Y') : '-';
                $time = $gatePassIn->time ? \Carbon\Carbon::parse($gatePassIn->time)->format('H:i') : '-';
                   // Party name
                $partyName = DB::table('subgroup')->where('sub_code', $gatePassIn->partycode)->where('propertyid', $propertyid)->value('name');
                //$itemName = $Itemname ?? '-';
                $visitorParty = $gatePassIn->visitiorname ?? ($partyName ?? '-');
                $mobile = $gatePassIn->mobileno ?? '-';
                $vehicle = $gatePassIn->vehicleno ?? '-';
                $material = $gatePassIn->materinouyn == 'Y' ? 'Yes' : 'No';
                if ($gatePassIn->materinouyn == 'Y') {
                    $itemName = DB::table('itemmast')->where('Code', $gatePassIn->item_name)->where('Property_ID', $propertyid)->value('Name');
                } else {
                    $itemName = '-';
                }
                // Depart name
                $departmentName = DB::table('depart')->where('dcode', $gatePassIn->department)->where('propertyid', $propertyid)->value('name');
             
                $qty = $gatePassIn->qty ?? '-';
                $department = $departmentName ?? '-';
                $badgeClass = $gatePassIn->wordstatus == 'PENDING' ? 'warning' : 'success';
                
                $html .= '<tr id="row_' . $gatePassIn->sn . '">';
                $html .= '<td>' . $gatePassIn->gatepassno . '</td>';
                $html .= '<td>' . $date . '</td>';
                $html .= '<td>' . $time . '</td>';
                $html .= '<td>' . $gatePassIn->type . '</td>';
                $html .= '<td>' . $visitorParty . '</td>';
                $html .= '<td>' . $mobile . '</td>';
                $html .= '<td>' . $vehicle . '</td>';
                $html .= '<td>' . $material . '</td>';
                $html .= '<td>' . $itemName . '</td>';
                $html .= '<td>' . $qty . '</td>';
                $html .= '<td>' . $department . '</td>';
                $html .= '<td><span class="badge badge-' . $badgeClass . '">' . $gatePassIn->wordstatus . '</span></td>';
                $html .= '<td>';
                $html .= '<button class="btn btn-sm btn-primary" onclick="editGatePassIn(' . $gatePassIn->sn . ')" title="Edit"><i class="fa fa-edit"></i></button> ';
                $html .= '<button class="btn btn-sm btn-danger" onclick="deleteGatePassIn(' . $gatePassIn->sn . ')" title="Delete"><i class="fa fa-trash"></i></button>';
                $html .= '</td>';
                $html .= '</tr>';
            }
            return response()->json(['html' => $html]);
        }
        
        return view('property.gatepassin.index', compact('gatePassIns', 'nextGatePassNo', 'parties', 'departments', 'itemNames'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $propertyid = $this->propertyid;
        
        // Get next gate pass number
        $lastGatePass = GatePassIn::where('propertyid', $propertyid)
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
        
        
        return view('property.gatepassin.create', compact('nextGatePassNo', 'parties', 'departments'));
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
        $lastGatePass = GatePassIn::where('propertyid', $propertyid)
            ->orderBy('gatepassno', 'desc')
            ->first();
        
        $nextGatePassNo = $lastGatePass ? $lastGatePass->gatepassno + 1 : 1;
        
        
        $gatePassIn = new GatePassIn();
        $gatePassIn->propertyid = $propertyid;
        $gatePassIn->gatepassno = $nextGatePassNo;
        $gatePassIn->inout = 'IN';
        $gatePassIn->type = $request->type;
        $gatePassIn->vtype = 'GAIP';
        $gatePassIn->mtype = $request->materinouyn == 'Y' ? 'GAI' : '';
        $gatePassIn->date = now();
        $gatePassIn->time = now();
        $gatePassIn->visitiorname = $request->visitiorname;
        $gatePassIn->partycode = $request->partycode;
        $gatePassIn->mobileno = $request->mobileno;
        $gatePassIn->vehicleno = $request->vehicleno;
        $gatePassIn->materinouyn = $request->materinouyn ?? 'N';
        $gatePassIn->item_name = $request->item_name;
        $gatePassIn->qty = $request->qty;
        $gatePassIn->unit = $request->unit;
        $gatePassIn->department = $request->department;
        $gatePassIn->remark = $request->remark;
        $gatePassIn->wordstatus = 'PENDING';
        $gatePassIn->u_name = Auth::user()->name ?? 'system';
        $gatePassIn->created_at = now();
        $gatePassIn->u_ae = 'A';
        
        $gatePassIn->save();
        
        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass IN created successfully with number: ' . $nextGatePassNo,
                'data' => $gatePassIn
            ]);
        }
        
        return redirect()->route('gatepassin.index')
            ->with('success', 'Gate Pass IN created successfully with number: ' . $nextGatePassNo);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $gatePassIn = GatePassIn::findOrFail($id);
        return view('property.gatepassin.show', compact('gatePassIn'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, string $id)
    {
        $gatePassIn = GatePassIn::findOrFail($id);
        
        if ($request->ajax()) {
            return response()->json($gatePassIn);
        }
        
        $propertyid = $this->propertyid;
        
          // Get parties for dropdown
        $parties = DB::table('subgroup')
        ->select('sub_code', 'name')
            ->where('propertyid', $propertyid)
            ->where('group_code', '27' . $propertyid)
            ->orderBy('name', 'ASC')->get();
        
        // Get departments where nature is Store or housekeep
        $departments = DB::table('depart')->select('dcode', 'name')->whereIn('nature', ['Store', 'Housekeep'])->where('propertyid', $propertyid)->orderBy('name', 'ASC')->get();
        
        
        return view('property.gatepassin.edit', compact('gatePassIn', 'parties', 'departments'));
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
            'wordstatus' => 'nullable|string|max:8',
        ]);
        
        $gatePassIn = GatePassIn::findOrFail($id);
        $gatePassIn->type = $request->type;
        $gatePassIn->vtype = 'GAIP';
        $gatePassIn->mtype = $request->materinouyn == 'Y' ? 'GAI' : '';
        $gatePassIn->visitiorname = $request->visitiorname;
        $gatePassIn->partycode = $request->partycode;
        $gatePassIn->mobileno = $request->mobileno;
        $gatePassIn->vehicleno = $request->vehicleno;
        $gatePassIn->materinouyn = $request->materinouyn ?? 'N';
        $gatePassIn->item_name = $request->item_name;
        $gatePassIn->qty = $request->qty;
        $gatePassIn->unit = $request->unit;
        $gatePassIn->department = $request->department;
        $gatePassIn->remark = $request->remark;
        $gatePassIn->wordstatus = $request->wordstatus ?? $gatePassIn->wordstatus;
        $gatePassIn->u_name = Auth::user()->name ?? 'system';
        $gatePassIn->created_at = now();
        $gatePassIn->u_ae = 'E';
        
        $gatePassIn->save();
        
        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass IN updated successfully',
                'data' => $gatePassIn
            ]);
        }
        
        return redirect()->route('gatepassin.index')
            ->with('success', 'Gate Pass IN updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, string $id)
    {
        $gatePassIn = GatePassIn::findOrFail($id);
        $gatePassIn->delete();
        
        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'message' => 'Gate Pass IN deleted successfully'
            ]);
        }
        
        return redirect()->route('gatepassin.index')
            ->with('success', 'Gate Pass IN deleted successfully');
    }
}
