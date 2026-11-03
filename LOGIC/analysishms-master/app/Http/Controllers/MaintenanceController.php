<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Assets;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\Facade\Pdf as PDF;

class MaintenanceController extends Controller
{
    //

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
    # Warning: Abandon hope, all who enter here. 

    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        return $ncurdate;
    }

    public function location(Request $request)
    {


        $room = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM'])->whereIn('sysYN', ['Y', 'N'])->orderBy('id', 'desc')->get();

        return view('maintenance.location', [
            'room' => $room
        ]);
    }

    public function printLocationMaster(Request $request)
    {
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $data = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM'])->orderBy('id', 'desc')->get();
        $pdf = \Barryvdh\DomPDF\Facade\Pdf::loadView('maintenance.print.printlocationmaster', ['company' => $company, 'data' => $data])->setPaper('a4', 'portrait');
        return $pdf->stream('location-master.pdf');
    }

    public function exportLocationMaster(Request $request)
    {
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $companyName = $company->comp_name ?? '';
        $data = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM'])->orderBy('id', 'desc')->get();
        $export = new \App\Exports\LocationMasterExport($this->propertyid, $companyName, $data);
        return $export->download();
    }

    public function addLocation(Request $request)
    {

        $request->validate([
            'roomname' => 'required',
        ]);

        $getTotalRoom = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM'])->count();

        $data = array(
            'propertyid' => $this->propertyid,
            'short_name' => 'ROOM',
            'scode'      => 'ROM' . $getTotalRoom + 1 . $this->propertyid,
            'name'       => strtoupper($request->roomname),
            'u_name'     => $this->username,
            'created_at'    => $this->currenttime,
            'sysYN'      => 'Y',
            'u_ae'       => 'a',
        );

        $result = DB::table('godown_mast')->insert($data);

        if ($result) {
            return response()->json([
                'status'  => 1,
                'message' => 'Room added successfully.',
            ], 200);
        } else {
            return response()->json([
                'status'  => 0,
                'message' => 'Something went wrong.',
            ], 200);
        }
    }

    public function editLocation(Request $request)
    {
        $request->validate([
            'roomname' => 'required',
        ]);

        $data = array(
            'name' => strtoupper($request->roomname),
            'u_name' => $this->username,
            'updated_at' => $this->currenttime,
            'u_name'     => $this->username,
            'u_ae'      => 'e',
            'sysYN'      => $request->status

        );

        $result = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM', 'sn' => $request->sn])->update($data);

        if ($result) {
            return response()->json([
                'status'  => 1,
                'message' => 'Room updated successfully.',
            ], 200);
        } else {
            return response()->json([
                'status'  => 0,
                'message' => 'Something went wrong.',
            ], 200);
        }
    }

    public function deleteLocation(Request $request)
    {

        try {
            $query = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM', 'sn' => $request->sn])->update(['sysYN' => 'D', 'u_ae' => 'd', 'updated_at' => $this->currenttime, 'u_name' => $this->username]);

            return response()->json([
                'status'  => 1,
                'message' => 'Room deleted successfully.',
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status'  => false,
                'message' => 'Something went wrong!',
                'error'   => $e->getMessage()
            ], 500);
        }
    }

    /////////////// Assets ///////////////////////


    public function assets(Request $request)
    {
        $locations = DB::table('godown_mast')->where(['propertyid' => $this->propertyid, 'short_name' => 'ROOM'])->whereIn('sysYN', ['Y', 'N'])->orderBy('id', 'desc')->get();
        return view('maintenance.assets', compact('locations'));
    }

    public function assetsData(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $status = $request->input('status'); // 'Active', 'Inactive' or null

        $query = DB::table('assets')->select('id', 'name', 'code', 'type', 'location', 'company_name', 'suppler_name', 'purchase_date', 'purchase_bill_no', 'assets_image', 'bill_image', 'status')->where('propertyid', $this->propertyid)->whereIn('status', ['Y', 'N']);       // Status filter
        if ($status === 'Active') {
            $query->where('status', 'Y');
        } elseif ($status === 'Inactive') {
            $query->where('status', 'N');
        }

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('code', 'like', "%{$search}%")
                    ->orWhere('type', 'like', "%{$search}%")
                    ->orWhere('location', 'like', "%{$search}%")
                    ->orWhere('company_name', 'like', "%{$search}%")
                    ->orWhere('suppler_name', 'like', "%{$search}%")
                    ->orWhere('purchase_date', 'like', "%{$search}%")
                    ->orWhere('purchase_bill_no', 'like', "%{$search}%");
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


            $location = DB::table('godown_mast')->where(['scode' => $row->location])->value('name');

            $assetsImg = $row->assets_image ? '<img src="' . asset($row->assets_image) . '" width="50" height="50" alt="assets image">' : 'No Image';
            $billImg = $row->bill_image ? '<img src="' . asset($row->bill_image) . '" width="50" height="50" alt="bill image">' : 'No Image';

            $statusLabel = $row->status == 'Y'
                ? '<span class="badge badge-success font-weight-bold" style="font-size: 12px;">Active</span>'
                : '<span class="badge badge-danger font-weight-bold" style="font-size: 12px;">Inactive</span>';
            $formattedData[] = [
                'sno' => $sno++,
                'name' => $row->name,
                'code' => $row->code,
                'short_name' => $row->type,
                'location' => $location,
                'company_name' => $row->company_name,
                'suppler_name' => $row->suppler_name,
                'purchase_date' => $row->purchase_date,
                'purchase_bill_no' => $row->purchase_bill_no,
                'assets_image' => $assetsImg,
                'purchase_bill_image' => $billImg,
                'status' => $statusLabel,
                'action' => '
                <button class="btn btn-sm btn-primary editBtn" 
                        data-update_id="' . $row->id . '" 
                        data-update_name="' . $row->name . '" 
                        data-code="' . $row->code . '" 
                        data-status="' . $row->status . '" 
                        data-type="' . $row->type . '"
                        data-location="' . $row->location . '"
                        data-company_name="' . $row->company_name . '"
                        data-suppler_name="' . $row->suppler_name . '"
                        data-purchase_date="' . $row->purchase_date . '"
                        data-purchase_bill_no="' . $row->purchase_bill_no . '"
                        data-assets_image="' . asset($row->assets_image) . '"
                        data-bill_image="' . asset($row->bill_image) . '"
                        data-toggle="modal" data-target="#updateModal">Edit</button>
                <button class="btn btn-sm btn-danger deleteBtn" data-id="' . $row->id . '">Delete</button>',
            ];
        }

        return response()->json([
            'draw' => intval($draw),
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $formattedData,
        ]);
    }

    public function getShortNameAndCode(Request $request){

        $lastCode = $this->getLastCode($this->getInitials($request->name));
        $nextCode = $this->generateNextCode($this->getInitials($request->name), $lastCode , $request->fromType);

       if($nextCode){
            // Success
            return response()->json(['status' => 1, 'msg' => 'Short Name And Code Fetch successfully!', 'short_name' => $this->getInitials($request->name), 'code' => $nextCode]);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to Fetch Short Name And Code. Please try again.']);
        }
    }

    public function getCode(Request $request){
         
        $lastCode = $this->getLastCode($request->shName);
        $nextCode = $this->generateNextCode($request->shName, $lastCode,$request->fromType);

       if($nextCode){
            // Success
            return response()->json(['status' => 1, 'msg' => 'Code Fetch successfully!', 'code' => $nextCode]);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to Fetch Code. Please try again.']);
        }
    }

    public function addAssets(Request $request)
    {

        $request->validate([
            'name'       => 'required',
            'short_name' => 'required',
            'location'   => 'required',
            'code'       => 'required',
            //     'suppler_name' => 'required',
            //     'purchase_date' => 'required',
            //     'purchase_bill_image' => 'required',
            //     'assets_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            //     'bill_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $addArr = [
            'propertyid' => $this->propertyid,
            'name' => $request->name,
            'type' => $request->short_name,
            'code' => $request->code,
            'location' => $request->location,
            'company_name' => $request->company_name,
            'suppler_name' => $request->suppler_name,
            'purchase_date' => $request->purchase_date,
            'purchase_bill_no' => $request->purchase_bill_no,
            'status' => 'Y',
        ];

        // Handle assets_image
        if ($request->hasFile('assets_image')) {
            $file = $request->file('assets_image');
            $filename = $request->Name . time() . '_pic.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/company_assets'), $filename);
            $addArr['assets_image'] = 'uploads/company_assets/' . $filename;
        }

        // Handle purchase_bill_image
        if ($request->hasFile('purchase_bill_image')) {
            $file = $request->file('purchase_bill_image');
            $filename = $request->Name . time() . '_id.' . $file->getClientOriginalExtension();
            $file->move(public_path(path: 'uploads/company_bill'), $filename);
            $addArr['bill_image'] = 'uploads/company_bill/' . $filename;
        }

        $assets = Assets::create($addArr);
        if ($assets) {
            // Success
            return response()->json(['status' => 1, 'msg' => 'Assets added successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to add Assets. Please try again.']);
        }
    }

    protected function getLastCode($initials)
    {
        $pID = $this->propertyid;
        return Assets::where('propertyid', $pID)
            ->where('code', 'like', $initials . '%')
            ->orderBy('code', 'desc')
            ->value('code');
    }

    protected function getInitials($name)
    {
        $name = trim($name);
        $words = explode(' ', $name);

        if (count($words) >= 2) {
            return strtoupper(substr($words[0], 0, 1) . substr($words[1], 0, 1));
        } else {
            return strtoupper(substr($words[0], 0, 2));
        }
    }

    protected function generateNextCode($initials, $lastCode = null , $fromType = null)
    {
        if ($lastCode) {
            $num = (int) substr($lastCode, 2); // get number part
            if($fromType == 'a'){
                $nextNum = str_pad($num + 1, 3, '0', STR_PAD_LEFT);
            }else{
                $nextNum = str_pad($num, 3, '0', STR_PAD_LEFT);
            }
            
        } else {
            $nextNum = '001'; // start new
        }

        return $initials . $nextNum;
    }

    public function editassets(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'location' => 'required',
        ]);

        $lastCode = $this->getLastCode($this->getInitials($request->name));
        $nextCode = $this->generateNextCode($this->getInitials($request->name), $lastCode);

        $assets = Assets::find($request->sn);
        if ($assets) {
            $assets->name = $request->name;
            $assets->type = $request->short_name;
            $assets->location = $request->location;
            $assets->company_name = $request->company_name;
            $assets->suppler_name = $request->suppler_name;
            $assets->purchase_date = $request->purchase_date;
            $assets->purchase_bill_no = $request->purchase_bill_no;

            // Handle assets_image
            if ($request->hasFile('assets_image')) {

                // Delete old image if exists
                if (!empty($assets->assets_image) && file_exists(public_path($assets->assets_image))) {
                    unlink(public_path($assets->assets_image));
                }
                $file = $request->file('assets_image');
                $filename = $request->Name . time() . '_pic.' . $file->getClientOriginalExtension();
                $file->move(public_path('uploads/company_assets'), $filename);
                $assets->assets_image = 'uploads/company_assets/' . $filename;
            }

            // Handle purchase_bill_image
            if ($request->hasFile('purchase_bill_image')) {

                // Delete old bill image if exists
                if (!empty($assets->bill_image) && file_exists(public_path($assets->bill_image))) {
                    unlink(public_path($assets->bill_image));
                }
                $file = $request->file('purchase_bill_image');
                $filename = $request->Name . time() . '_id.' . $file->getClientOriginalExtension();
                $file->move(public_path(path: 'uploads/company_bill'), $filename);
                $assets->bill_image = 'uploads/company_bill/' . $filename;
            }

            $assets->save();

            return response()->json(['status' => 1, 'msg' => 'Assets updated successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to update Assets. Please try again.']);
        }
    }

    public function deleteassets(Request $request)
    {
        $assets = Assets::where('id', $request->sn)->first();

        if ($assets) {
            $assets->status = 'D';
            $assets->save(); // ✅ Save the change to DB

            return response()->json([
                'status' => 1,
                'msg' => 'Assets deleted successfully!'
            ]);
        } else {
            return response()->json([
                'status' => 0,
                'msg' => 'Failed to delete Assets. Please try again.'
            ]);
        }
    }

    public function assetsExport(Request $request){
        if($request->type == 'pdf'){
            return $this->assetsExportPDF($request);
        }else{
            return $this->assetsExportExcel($request);
        }
    }

    public function assetsExportPDF(Request $request){
        $data = Assets::where('status', 'Y')->get();
        $pdf = PDF::loadView('admin.assets.pdf', compact('data'));
        return $pdf->download('assets.pdf');    
    }

    public function assetsExportExcel(Request $request){
        $fileName = 'asstes_export_' . date('Ymd_His') . '.csv';

        // File ko open karo (php://output browser me direct bhejne ke liye)
        $handle = fopen('php://output', 'w');

        // Header set karo
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');

        // Column heading
        fputcsv($handle, ['SN.', 'Name', 'Type', 'Code', 'Location', 'Company Name', 'Supplier Name', 'Purchase Date', 'Purchase Bill No']);

        // DB se data lo
        $categories = Assets::where('Propertyid', $this->propertyid)
            ->whereIn('status', ['Y'])
            ->get();

        // Data ko CSV me likho
        $i = 1;
        foreach ($categories as $row) {
            fputcsv($handle, [
                $i,
                $row->name,
                $row->type,
                $row->code, // Convert gender to readable format
                $row->location,
                $row->company_name,
                $row->suppler_name,
                $row->purchase_date,
                $row->purchase_bill_no,
            ]);
            $i++;
        }

        fclose($handle);
        exit;
    }
}
