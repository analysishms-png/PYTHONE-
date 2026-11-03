<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Hrpayrolls;
use App\Models\EmpCategory;
use App\Models\Employee;
use App\Models\Happyhour;
use App\Models\Companyreg;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class HappyhourController extends Controller
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

    public function happyHours()
    {
        $outletName = DB::table('depart')->select('name', 'dcode')->where(['propertyid' => $this->propertyid, 'rest_type' => 'Outlet'])->get();
        $itemName = DB::table('itemmast')->select('name', 'Code')->where('Property_ID', $this->propertyid)->get();
        return view('property.happyhour.index', compact('outletName', 'itemName'));
    }

    public function happyHoursData(Request $request)
    {

        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $status = $request->input('status'); // 'Active', 'Inactive' or null

        $query = DB::table('schememast')->select('id', 'name', 'code', 'startdate', 'enddate', 'fromtime', 'totime', 'restcode', 'itemcode', 'qty', 'freeitem', 'freeqty', 'days', 'activeyn')->where('propertyid', $this->propertyid)->whereIn('activeyn', ['Y', 'N']);       // Status filter
        if ($status === 'Active') {
            $query->where('activeyn', 'Y');
        } elseif ($status === 'Inactive') {
            $query->where('activeyn', 'N');
        }

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('code', 'like', "%{$search}%")
                    ->orWhere('activeyn', 'like', "%{$search}%")
                    ->orWhere('startdate', 'like', "%{$search}%")
                    ->orWhere('enddate', 'like', "%{$search}%")
                    ->orWhere('formtime', 'like', "%{$search}%")
                    ->orWhere('totime', 'like', "%{$search}%")
                    ->orWhere('rescode', 'like', "%{$search}%");
            });
        }

        $total = $query->count();

        $data = $query->orderBy('id', 'desc')
            ->offset($start)
            ->limit($length)
            ->get();

        // Format data for DataTables
        $formattedData = [];
        $sno = $start + 1;
        foreach ($data as $row) {

            $days = $row->days;
            // Split into array
            $daysArray = explode(",", $days);

            // Capitalize first letter
            $daysArray = array_map('ucfirst', $daysArray);

            // Join with newline
            $daysFormatted = implode("<br>", $daysArray);

            $outletName = DB::table('depart')->where(['dcode' => $row->restcode, 'rest_type' => 'Outlet'])->value('name');
            $itemName = DB::table('itemmast')->where('Code', $row->itemcode)->value('name');
            $freeItemName = DB::table('itemmast')->where('Code', $row->freeitem)->value('name');

            $statusLabel = $row->activeyn == 'Y'
                ? '<span class="badge badge-success font-weight-bold" style="font-size: 12px;">Active</span>'
                : '<span class="badge badge-danger font-weight-bold" style="font-size: 12px;">Inactive</span>';
            $formattedData[] = [
                'sno' => $sno++,
                'name' => $row->name,
                'start_time' => $row->startdate . ' ' . $row->fromtime,
                'end_time' => $row->enddate . ' ' . $row->totime,
                'outlet' => $outletName,
                'item' => $itemName,
                'qty' => $row->qty,
                'freeitem' => $freeItemName,
                'freeqty' => $row->freeqty,
                'days' => $daysFormatted,
                'status' => $statusLabel,
                'action' => '
                <button class="btn btn-sm btn-primary editBtn" 
                        data-update_id="' . $row->id . '" 
                        data-update_name="' . $row->name . '" 
                        data-status="' . $row->activeyn . '" 
                        data-startdate="' . $row->startdate . '"
                        data-enddate="' . $row->enddate . '"
                        data-fromtime="' . $row->fromtime . '"
                        data-totime="' . $row->totime . '"
                        data-outlet="' . $row->restcode . '"
                        data-item="' . $row->itemcode . '"
                        data-qty="' . $row->qty . '"
                        data-freeitem="' . $row->freeitem . '"
                        data-freeqty="' . $row->freeqty . '"
                        data-days="' .  $days  . '"   // e.g. monday,tuesday
                        data-toggle="modal" data-target="#updateModal">Edit</button>
                <button class="btn btn-sm btn-danger deleteBtn" data-id="' . $row->id . '">Delete</button>
            ',
            ];
        }

        return response()->json([
            'draw' => intval($draw),
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $formattedData,
        ]);
    }

    public function addHappyHours(Request $request)
    {
        // ✅ Step 1: Validation
        $request->validate([
            'name' => [
                'required',
                'string',
                Rule::unique('schememast', 'name')->where(function ($query) {
                    return $query->where('activeyn', 'Y');
                }),
            ],
            'start_date' => 'required|date',
            'end_date'    => 'required|date|after_or_equal:start_date',
            'from_time'  => 'required',
            'to_time'    => 'required',
            'outlet_id'  => 'required',
            'item_name'  => 'required',
            'qty'        => 'required|numeric',
            'free_item_name'  => 'required',
            'free_qty'   => 'required|numeric',
            'day'        => 'required|array|min:1',
            'day.*'      => 'in:monday,tuesday,wednesday,thursday,friday,saturday,sunday'
        ]);

        try {
            // ✅ Step 2: Get all data
            $data = $request->all();

            $hcodemax = Happyhour::where('propertyid', $this->propertyid)
                ->max('code');

            if ($hcodemax) {
                $code = substr($hcodemax, 0, -$this->ptlngth) + 1;
            } else {
                $code = 1;
            }

            // ✅ Step 4: Prepare insert data
            $insertData = [
                'propertyid' => $this->propertyid,
                'name'       => $data['name'],
                'code'       => $code,
                'startdate'  => $data['start_date'],
                'enddate'    => $data['end_date'],
                'fromtime'   => $data['from_time'],
                'totime'     => $data['to_time'],
                'restcode'   => $data['outlet_id'],
                'itemcode'   => $data['item_name'],
                'qty'        => $data['qty'],
                'freeitem'   => $data['free_item_name'],
                'freeqty'    => $data['free_qty'],
                'u_name'     => $this->username,
                'activeyn'   => 'Y',
                'days'        => implode(',', $data['day']), // ✅ store day array as JSON (if same table)
                'created_at'    => date('Y-m-d H:i:s'),
                'u_ae'       => 'a'
            ];

            // ✅ Step 5: Save to database
            $happyHour = Happyhour::create($insertData);

            // ✅ Step 6: Return JSON response
            return response()->json([
                'status'  => 1,
                'message' => 'Happy Hour added successfully.',
            ], 200);
        } catch (\Exception $e) {
            // ✅ Step 7: Error Handling
            return response()->json([
                'status'  => false,
                'message' => 'Something went wrong!',
                'error'   => $e->getMessage()
            ], 500);
        }
    }

    public function editHappyHours(Request $request)
    {
        // ✅ Step 1: Validation
        $request->validate([
            'start_date' => 'required|date',
            'end_date'    => 'required|date|after_or_equal:start_date',
            'from_time'  => 'required',
            'to_time'    => 'required',
            'outlet_id'  => 'required',
            'item_name'  => 'required',
            'qty'        => 'required|numeric',
            'free_item_name'  => 'required',
            'free_qty'   => 'required|numeric',
            'day'        => 'required|array|min:1',
            'day.*'      => 'in:monday,tuesday,wednesday,thursday,friday,saturday,sunday'
        ]);

        try {
            // ✅ Step 2: Get all data
            $data = $request->all();

            // ✅ Step 3: Prepare update data
            $updateData = [
                'name'       => $data['name'],
                'startdate'  => $data['start_date'],
                'enddate'    => $data['end_date'],
                'fromtime'   => $data['from_time'],
                'totime'     => $data['to_time'],
                'restcode'   => $data['outlet_id'],
                'itemcode'   => $data['item_name'],
                'qty'        => $data['qty'],
                'freeitem'   => $data['free_item_name'],
                'freeqty'    => $data['free_qty'],
                'u_name'     => $this->username,
                'activeyn'   => $data['status'],
                'days'        => implode(',', $data['day']),  // ✅ store day array as JSON (if same table)
                'u_ae'       => 'e'
            ];

            // ✅ Step 4: Save to database
            $happyHour = Happyhour::where('id', $data['sn'])->update($updateData);

            // ✅ Step 5: Return JSON response
            return response()->json([
                'status'  => 1,
                'message' => 'Happy Hour updated successfully.',
            ], 200);
        } catch (\Exception $e) {
            // ✅ Step 6: Error Handling
            return response()->json([
                'status'  => false,
                'message' => 'Something went wrong!',
                'error'   => $e->getMessage()
            ], 500);
        }
    }

    public function deleteHappyHours(Request $request)
    {
        try {
            $happyHour = Happyhour::where('id', $request->sn)->update(['activeyn' => 'D', 'u_ae' => 'd', 'u_name' => $this->username]);
            return response()->json([
                'status'  => 1,
                'message' => 'Happy Hour deleted successfully.',
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status'  => false,
                'message' => 'Something went wrong!',
                'error'   => $e->getMessage()
            ], 500);
        }
    }

    public function happyHoursExport(Request $request)
    {
        $fileName = 'happyhour_export_' . date('Ymd_His') . '.csv';

        // File ko open karo (php://output browser me direct bhejne ke liye)
        $handle = fopen('php://output', 'w');

        // Header set karo
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');

        // Column heading
        fputcsv($handle, ['Name', 'Code', 'Start Date', 'End Date', 'From Time', 'To Time', 'Outlet', 'Item', 'Qty', 'Free Item', 'Free Qty', 'Days', 'Status']);

        // DB se data lo
        $query = DB::table('schememast')->select('id', 'name', 'code', 'startdate', 'enddate', 'fromtime', 'totime', 'restcode', 'itemcode', 'qty', 'freeitem', 'freeqty', 'days', 'activeyn')->where('propertyid', $this->propertyid)->whereIn('activeyn', ['Y', 'N'])->get();       // Status filter


        // Data ko CSV me likho
        foreach ($query as $row) {
            $days = $row->days;
            // Split into array
            $daysArray = explode(",", $days);

            // Capitalize first letter
            $daysArray = array_map('ucfirst', $daysArray);

            // Join with newline
            $daysFormatted = implode("\n", $daysArray);
            $outletName = DB::table('depart')->where(['dcode' => $row->restcode, 'rest_type' => 'Outlet'])->value('name');
            $itemName = DB::table('itemmast')->where('Code', $row->itemcode)->value('name');
            $freeItemName = DB::table('itemmast')->where('Code', $row->freeitem)->value('name');


            fputcsv($handle, [
                $row->name,
                $row->code,
                $row->startdate,
                $row->enddate,
                $row->fromtime,
                $row->totime,
                $outletName,
                $itemName,
                $row->qty,
                $freeItemName,
                $row->freeqty,
                $daysFormatted,
                $row->activeyn == 'Y' ? 'Active' : 'Inactive'
            ]);
        }

        fclose($handle);
        exit;
    }

    public function getoutlet(Request $request)
    {

        $outletId = $request->outlet_id;
        $itemName = DB::table('itemmast')->select('name', 'Code')->where(['Property_ID' => $this->propertyid, 'RestCode' => $outletId])->get();

        $items = [];
        $items[] = '<option value="">Select Item</option>';
        foreach ($itemName as $item) {
            $items[] = '<option value="' . $item->Code . '">' . $item->name . '</option>';
        }
        if (!empty($items)) {
            $msg = [
                'status'  => 1,
                'msg'    => 'Item list found!',
                'items'   => $items,
            ];
        } else {
            $msg = [
                'status'  => 0,
                'msg'    => 'Item not found!',
            ];
        }
        return response()->json($msg);
    }
}
