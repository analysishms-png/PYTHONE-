<?php

namespace App\Http\Controllers;

use App\Models\ACGroup;
use Illuminate\Http\Request;
use App\Models\Hrpayrolls;
use App\Models\EmpCategory;
use App\Models\Employee;
use App\Models\Companyreg;
use App\Models\SubGroup;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HrpayrollsController extends Controller
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
    public function designation()
    {
        return view('hr.designation');
    }

    public function designationData(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $status = $request->input('status'); // 'Active', 'Inactive' or null

        $query = DB::table('desig')->select('id', 'name', 'code', 'Activ')->whereIn('Activ', ['Y', 'N'])->where('propertyid', $this->propertyid);



        // Status filter
        if ($status === 'Active') {
            $query->where('Activ', 'Y');
        } elseif ($status === 'Inactive') {
            $query->where('Activ', 'N');
        }

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('code', 'like', "%{$search}%");
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

            $statusLabel = $row->Activ == 'Y'
                ? '<span class="badge badge-success font-weight-bold" style="font-size: 12px;">Active</span>'
                : '<span class="badge badge-danger font-weight-bold" style="font-size: 12px;">Inactive</span>';
            $formattedData[] = [
                'sno' => $sno++,
                'name' => $row->name,
                //'code' => $row->code,
                'status' => $statusLabel,
                'action' => '
                <button class="btn btn-sm btn-primary editBtn" 
                        data-id="' . $row->id . '" 
                        data-name="' . $row->name . '" 
                        data-status="' . $row->Activ . '" 
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

    public function addDesignation(Request $request)
    {
        $request->validate([
            'upname' => 'required|string|max:255',
            'status' => 'required|in:Y,N',
        ]);

        $designationName = ucwords(strtolower($request->upname));
        $ifexit = Hrpayrolls::where(['name' => $designationName, 'propertyid' => $this->propertyid])
            ->whereIn('Activ', ['Y', 'N'])
            ->value('code');

        if ($ifexit) {
            return response()->json(['status' => 0, 'msg' => 'Designation already exists!']);
        }

        ///// Get total count of designations for the property
        $totalDesignations = Hrpayrolls::where('propertyid', $this->propertyid)->count();
        $newCodeNumber = $totalDesignations + 1;
        $newCode =  $newCodeNumber . $this->propertyid;

        $result = Hrpayrolls::create([
            'propertyid' => $this->propertyid,
            'code' => $newCode,
            'name' => $designationName,
            'Activ' => $request->status,
            'u_name' => $this->username,
            'created_at' => $this->currenttime,
            'u_ae' => 'a',
            'updated_at' => ''
        ]);
        if ($result) {
            // Success
            return response()->json(['status' => 1, 'msg' => 'Designation added successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to add designation. Please try again.']);
        }
    }

    public function editdesignation(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer|exists:desig,sn',
            'name' => 'required|string|max:255',
            'status' => 'required|in:Y,N',
        ]);

        $designationName = ucwords(strtolower($request->name));

        // Fetch the record
        $designation = Hrpayrolls::where('id', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$designation) {
            return response()->json(['status' => 0, 'msg' => 'Designation not found!']);
        }

        // Update fields
        $upadte_arr = [
            'name' => $designationName,
            'Activ' => $request->status,
            'u_name' => $this->username,
            'updated_at' => $this->currenttime,
            'u_ae' => 'e' // 'e' for edit
        ];
        $result = DB::table('desig')
            ->where('id', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->update($upadte_arr);

        if ($result) {
            return response()->json(['status' => 1, 'msg' => 'Designation updated successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to update designation. Please try again.']);
        }
    }

    public function deleteDesignation(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer|exists:desig,sn',
        ]);

        $id = $request->sn;

        $designation = DB::table('desig')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$designation) {
            return response()->json(['status' => 0, 'msg' => 'Designation not found!']);
        }

        $result = DB::table('desig')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->update([
                'Activ' => 'D',
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'd' // 'd' for delete
            ]);

        if ($result) {
            return response()->json(['status' => 1, 'msg' => 'Designation deleted successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to delete designation.']);
        }
    }

    public function designationImport()
    {
        $path = storage_path('app/public/designation.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {

                $propertyid = $this->propertyid;
                $u_name = $this->username;
                $created_at = $this->currenttime;
                $insertedCount = 0;
                $skipped = [];

                foreach ($jsonData as $data) {
                    $designationName = ucwords(strtolower($data['Name']));
                    $status = $data['Activ'];
                    $u_ae = $data['u_ae'];
                    // print_r($data);
                    $ifexit = Hrpayrolls::where('propertyid', $this->propertyid)
                        ->where('name', $designationName)
                        ->value('code');

                    if ($ifexit) {
                        $skipped[] = $designationName;
                        continue;
                    }
                    ///// Get total count of designations for the property
                    $totalDesignations = Hrpayrolls::where('propertyid', $this->propertyid)->count();
                    $newCodeNumber = $totalDesignations + 1;
                    $newCode = $newCodeNumber . $this->propertyid;

                    $inserts = Hrpayrolls::create([
                        'propertyid' => $propertyid,
                        'code'       => $newCode,
                        'u_name'     => $u_name,
                        'name'       => $designationName,
                        'Activ'      => $status,
                        'u_ae'       => $u_ae,
                        'created_at'    => $created_at,
                    ]);
                    if ($inserts) {
                        $insertedCount++;
                    }
                }
                return response()->json(['message' => $insertedCount . ' Designation(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.']);
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    public function designationExport()
    {
        $fileName = 'designation_export_' . date('Ymd_His') . '.csv';

        // File ko open karo (php://output browser me direct bhejne ke liye)
        $handle = fopen('php://output', 'w');

        // Header set karo
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');

        // Column heading
        fputcsv($handle, ['Name', 'Code', 'Activ', 'u_ae']);

        // DB se data lo
        $designations = Hrpayrolls::where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y', 'N'])
            ->select('name', 'code', 'Activ', 'u_ae')
            ->get();

        // Data ko CSV me likho
        foreach ($designations as $row) {
            fputcsv($handle, [
                $row->name,
                $row->code,
                $row->Activ,
                $row->u_ae,
            ]);
        }

        fclose($handle);
        exit;
    }

    ///////////////////////// End Designation /////////////////////////

    ///////////////////////// Start Employee Category ///////////////////////// 

    public function empcategory()
    {
        return view('hr.empcategory');
    }

    ////////////// Get Empcategory Data //////////////
    public function empcategoryData(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $status = $request->input('status'); // 'Active', 'Inactive' or null    
        $query = DB::table('empcategory')->select('id', 'name', 'code', 'Activ')->whereIn('Activ', ['Y', 'N'])->where('propertyid', $this->propertyid);

        // Status filter
        if ($status === 'Active') {
            $query->where('Activ', 'Y');
        } elseif ($status === 'Inactive') {
            $query->where('Activ', 'N');
        }

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('code', 'like', "%{$search}%");
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
            $statusLabel = $row->Activ == 'Y'
                ? '<span class="badge badge-success font-weight-bold" style="font-size: 12px;">Active</span>'
                : '<span class="badge badge-danger font-weight-bold" style="font-size: 12px;">Inactive</span>';
            $formattedData[] = [
                'sno' => $sno++,
                'name' => $row->name,
                //'code' => $row->code,
                'status' => $statusLabel,
                'action' => '
                <button class="btn btn-sm btn-primary editBtn" 
                        data-id="' . $row->id . '" 
                        data-name="' . $row->name . '" 
                        data-status="' . $row->Activ . '" 
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

    ////////////// Insert Empcategory Data //////////////
    public function addEmpCategory(Request $request)
    {
        $request->validate([
            'upname' => 'required|string|max:255',
            'status' => 'required|in:Y,N',
        ]);


        $categoryName = strtoupper($request->upname);
        $ifexit = EmpCategory::where(['name' => $categoryName, 'propertyid' => $this->propertyid])
            ->whereIn('Activ', ['Y', 'N'])
            ->value('code');

        if ($ifexit) {
            return response()->json(['status' => 0, 'msg' => 'Category already exists!']);
        }

        ///// Get total count of categories for the property
        $totalCategories = EmpCategory::where('propertyid', $this->propertyid)->count();
        $newCodeNumber = $totalCategories + 1;
        $newCode =  $newCodeNumber . $this->propertyid;

        $result = EmpCategory::create([
            'propertyid' => $this->propertyid,
            'code' => $newCode,
            'name' => $categoryName,
            'Activ' => $request->status,
            'u_name' => $this->username,
            'created_at' => $this->currenttime,
            'u_ae' => 'a',
            'updated_at' => ''
        ]);
        if ($result) {
            // Success
            return response()->json(['status' => 1, 'msg' => 'Category added successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to add category. Please try again.']);
        }
    }

    ////////////// Update Empcategory Data //////////////
    public function editEmpCategory(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'status' => 'required|in:Y,N',
        ]);

        $categoryName = strtoupper($request->name);

        // Fetch the record
        $category = EmpCategory::where('id', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$category) {
            return response()->json(['status' => 0, 'msg' => 'Category not found!']);
        }

        // Update fields
        $update_arr = [
            'name' => $categoryName,
            'Activ' => $request->status,
            'u_name' => $this->username,
            'updated_at' => $this->currenttime,
            'u_ae' => 'e' // 'e' for edit
        ];
        $result = DB::table('empcategory')
            ->where('id', $request->sn)
            ->where('propertyid', $this->propertyid)
            ->update($update_arr);

        if ($result) {
            return response()->json(['status' => 1, 'msg' => 'Category updated successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to update category. Please try again.']);
        }
    }


    ////////////// Delete Empcategory Data //////////////
    public function deleteEmpCategory(Request $request)
    {

        $request->validate([
            'sn' => 'required|integer|exists:empcategory,sn',
        ]);

        $id = $request->sn;

        $category = DB::table('empcategory')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$category) {
            return response()->json(['status' => 0, 'msg' => 'Category not found!']);
        }

        $result = DB::table('empcategory')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->update([
                'Activ' => 'D',
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'd' // 'd' for delete
            ]);

        if ($result) {
            return response()->json(['status' => 1, 'msg' => 'Category deleted successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to delete category.']);
        }
    }

    ///////////////// Empcategory Import /////////////////
    public function employeeImport()
    {
        $path = storage_path('app/public/empcategory.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {

                $propertyid = $this->propertyid;
                $u_name = $this->username;
                $created_at = $this->currenttime;
                $insertedCount = 0;
                $skipped = [];

                foreach ($jsonData as $data) {
                    $categoryName = strtoupper($data['Name']);
                    $status = $data['Activ'];
                    $u_ae = $data['u_ae'];
                    // print_r($data);
                    $ifexit = EmpCategory::where('propertyid', $this->propertyid)
                        ->where('name', $categoryName)
                        ->value('code');

                    if ($ifexit) {
                        $skipped[] = $categoryName;
                        continue;
                    }
                    ///// Get total count of categories for the property
                    $totalCategories = EmpCategory::where('propertyid', $this->propertyid)->count();
                    $newCodeNumber = $totalCategories + 1;
                    $newCode = $newCodeNumber . $this->propertyid;

                    $inserts = EmpCategory::create([
                        'propertyid' => $propertyid,
                        'code'       => $newCode,
                        'u_name'     => $u_name,
                        'name'       => $categoryName,
                        'Activ'      => $status,
                        'u_ae'       => $u_ae,
                        'created_at'    => $created_at,
                    ]);
                    if ($inserts) {
                        $insertedCount++;
                    }
                }
                return response()->json(['message' => $insertedCount . ' Category(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.']);
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    ///////////////// Empcategory Export /////////////////
    public function employeeExport()
    {
        $fileName = 'empcategory_export_' . date('Ymd_His') . '.csv';

        // File ko open karo (php://output browser me direct bhejne ke liye)
        $handle = fopen('php://output', 'w');

        // Header set karo
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');

        // Column heading
        fputcsv($handle, ['Name', 'Code', 'Activ', 'u_ae']);

        // DB se data lo
        $categories = EmpCategory::where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y', 'N'])
            ->select('name', 'code', 'Activ', 'u_ae')
            ->get();

        // Data ko CSV me likho
        foreach ($categories as $row) {
            fputcsv($handle, [
                $row->name,
                $row->code,
                $row->Activ,
                $row->u_ae,
            ]);
        }

        fclose($handle);
        exit;
    }

    ///////////////////////// End Employee Category /////////////////////////


    ///////////////////////// Start Employee /////////////////////////

    public function employee()
    {
        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            // ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();
        $category = DB::table('empcategory')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();
        $designations = DB::table('desig')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();

        $salaryacgrpcode = ACGroup::where('propertyid', $this->propertyid)
            ->whereIn('group_name', ['EMPLOYEE', 'employee'])
            ->get();

        $salarydata = SubGroup::where('propertyid', $this->propertyid)
            ->whereIn('group_code', $salaryacgrpcode->pluck('group_code'))
            ->get();

        return view('hr.employee.employee', [
            'departments' => $departments,
            'designations' => $designations,
            'category' => $category,
            'salarydata' => $salarydata
        ]);
    }

    public function employeeData(Request $request)
    {
        // Fetch employee data from the database
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        //$status = $request->input('status'); // 'Active', 'Inactive' or null    
        $query = DB::table('employee')->select('id', 'name', 'code', 'designation', 'department', 'birth_date', 'category')->where('propertyid', $this->propertyid)->whereIn('activeyn', ['Y', 'N']);

        // Status filter
        // if ($status === 'Active') {
        //     $query->where('Activ', 'Y');
        // } elseif ($status === 'Inactive') {
        //     $query->where('Activ', 'N');
        // }

        // Search filter
        if ($request->input('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                    ->orWhere('code', 'like', "%{$search}%");
            });
        }

        $total = $query->count();

        $data = $query->orderBy('id', 'desc')
            ->offset($start)
            ->limit($length)
            ->get();

        // return $data;

        // Format data for DataTables
        $formattedData = [];
        $sno = $start + 1;
        foreach ($data as $row) {

            $depart = DB::table('depart')->where('dcode', $row->department)->where('propertyid', $this->propertyid)->value('name');
            $desig = DB::table('desig')->where('code', $row->designation)->where('propertyid', $this->propertyid)->value('name');
            $category = DB::table('empcategory')->where('code', $row->category)->where('propertyid', $this->propertyid)->value('name');
            $row->category = $category ? $category : $row->category;
            $row->department = $depart ? $depart : $row->department;
            $row->designation = $desig ? $desig : $row->designation;

            $formattedData[] = [
                'sno' => $sno++,
                'name' => $row->name,
                'dob' => $row->birth_date,
                'category' => $row->category,
                'department' => $row->department,
                'designation' => $row->designation,
                'action' => '
                <a href="' . route('employeeedit', $row->id) . '" class="btn btn-sm btn-primary editBtn">Edit</a>
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

    public function get_designation(Request $request)
    {

        $id = $request->department_id;

        $desig = DB::table('desig')->where('code', $request->Designation)->where('propertyid', $this->propertyid)->value('name');
    }

    public function getAccountDetails(Request $request)
    {
        // $accountCode = $request->input('accountCode');
        $accountDetails = DB::table('subgroup')
            ->select('name', 'sub_code')
            ->where('group_code', 8 . $this->propertyid)
            ->where('propertyid', $this->propertyid)
            ->get();

        $acc = [];
        $acc[] = '<option value="">Select Account</option>';
        foreach ($accountDetails as $account) {
            $acc[] = '<option value="' . $account->sub_code . '">' . $account->name . '</option>';
        }

        if (!empty($accountDetails)) {
            $msg = [
                'status' => 200,
                'message' => 'Account Details Found!',
                'data' => $acc
            ];
        } else {
            $mag = [
                'status' => 404,
                'message' => 'Account Details Not Found!',
                'data' => []
            ];
        }

        return response()->json($msg);
    }

    public function addEmployee(Request $request)
    {
        $rules = [
            'Name'           => 'required|string|max:255',
            'Sex'            => 'required|in:M,F',
            'Department'     => 'required|string|max:100',
            'Designation'    => 'required|string|max:100',
            'Category'       => 'required|string|max:100',
            'F_Name'         => 'required|string|max:255',
            'Birth_Date'     => 'required|date',
        ];

        $validator =  $request->validate($rules);

        $lastEmployeeId = Employee::where('propertyid', $this->propertyid)
            ->orderBy('id', 'desc')
            ->value('sn');
        $newEmployeeId = $lastEmployeeId ? $lastEmployeeId + 1 : 1;
        $newEmployeeCode =  $newEmployeeId . $this->propertyid;
        $request->merge(['code' => $newEmployeeCode]);

        // echo "<pre>";
        // print_r($request->all());
        // echo "</pre>";
        // die;

        $insertArr = [
            'propertyid'       => $this->propertyid,
            'code'             => $newEmployeeCode,
            'name'             => $request->Name,
            'f_name'           => $request->F_Name,
            'department'       => $request->Department,
            'designation'      => $request->Designation,
            'category'         => $request->Category,
            'sex'              => $request->Sex,
            'type'             => $request->type,
            'birth_date'       => $request->Birth_Date,
            'marital'          => $request->Marital,
            'add1'             => $request->Add1,
            'add2'             => $request->Add2,
            'phone'            => $request->Phone,
            'qualification'    => $request->Qualification,
            'joining_date'     => $request->Joining_Date,
            'resign_date'      => $request->Resign_Date,
            'spouse'           => '',
            'pan'              => $request->PAN,
            'ac_code'          => $request->AC_Code,
            'loanac'           => $request->LoanAc,
            'basic'            => $request->Basic,
            'da'               => $request->DA,
            'hra'              => $request->HRA,
            'conveyance'       => $request->Conveyance,
            'other_allow'      => $request->Other_Allow,
            'medical'          => $request->Medical,
            'lta'              => $request->LTA,
            'increment'        => $request->INCREMENT,
            'incrmth'          => $request->incr_month,
            'op_loan'          => $request->OP_Loan,
            'op_inst'          => $request->OP_Inst,
            'op_advance'       => $request->OP_Advance,
            'other_deduc'      => $request->Other_Deduc,
            'tds'              => $request->tds,
            'off_day_allow'    => $request->off_day_allow ?? 'N',
            'off_day'          => $request->SUNDAY,
            'pf_yn'            => $request->Pf_Yn,
            'esi_yn'           => $request->ESI_YN,
            'op_pf_balance'    => $request->OP_PF_Balance,
            'pf_code'          => $request->pf_code,
            'esi_code'         => $request->esi_code,
            'tot_el_allow'     => $request->Tot_EL_Allow,
            'tot_cl_allow'     => $request->Tot_CL_Allow,
            'op_el'            => $request->op_EL,
            'op_cl'            => $request->op_CL,
            'curr_el'          => $request->Curr_EL,
            'curr_cl'          => $request->Curr_CL,
            'otrate'           => $request->ot_rate,
            'idproof'          => $request->IdProof,
            'idproofno'        => $request->IdProofNo,
            'activeyn'         => $request->ActiveYN ?? 'Y',
            'bio_metric_id'    => $request->biometricid,
            'bank_account'     => $request->bankaccount,
            'ac_holder_name'   => $request->ac_holder_name,
            'ifsc_code'        => $request->ifsc_code,
            'u_name'           => $this->username,
            'created_at'          => date('Y-m-d H:i:s'),
            'u_ae'             => 'a'
        ];


        $employee = new Employee();
        $employee->fill($insertArr);

        $uploadPath = public_path('uploads/employees');
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0755, true);
        }

        // Handle image uploads
        if ($request->hasFile('PicPath')) {
            $file = $request->file('PicPath');
            $filename = $request->Name . time() . '_pic.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/employees'), $filename);
            $employee->pic_path = 'uploads/employees/' . $filename;
        }

        if ($request->hasFile('IdPicPath')) {
            $file = $request->file('IdPicPath');
            $filename = $request->Name . time() . '_id.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/employees'), $filename);
            $employee->id_picpath = 'uploads/employees/' . $filename;
        }

        $employee->save();

        // ── HK Supervisor Sync ────────────────────────────────────────────────────
        // Agar designation "HK Supervisor" hai to hksupervisor table mein bhi insert karo
        $designationName = DB::table('desig')
            ->where('code', $request->Designation)
            ->where('propertyid', $this->propertyid)
            ->value('name');

        if ($designationName && strtoupper(trim($designationName)) === 'HOUSEKEEPING SUPERVISOR') {
            $alreadyExists = DB::table('hksupervisor')
                ->where('propertyid', $this->propertyid)
                ->where('empcode', $newEmployeeCode)
                ->exists();

            if (!$alreadyExists) {
                $lastCode = DB::table('hksupervisor')
                    ->where('propertyid', $this->propertyid)
                    ->orderBy('id', 'desc')
                    ->value('code');
                $inc  = $lastCode ? (intval(substr($lastCode, strlen((string) $this->propertyid))) + 1) : 1;
                $hkCode = $this->propertyid . $inc;

                DB::table('hksupervisor')->insert([
                    'propertyid' => $this->propertyid,
                    'code'       => $hkCode,
                    'name'       => strtoupper($request->Name),
                    'empcode'    => $newEmployeeCode,
                    'activeyn'   => 1,
                    'u_name'     => $this->username,
                    'created_at'    => $this->currenttime,
                    'u_ae'       => 'a',
                ]);
            }
        }

        // ── HK Housekeeper Sync ───────────────────────────────────────────────────
        if ($designationName && strtoupper(trim($designationName)) === 'HOUSEKEEPER') {
            $alreadyExists = DB::table('housekeeparmast')
                ->where('propertyid', $this->propertyid)
                ->where('empid', $newEmployeeCode)
                ->exists();

            if (!$alreadyExists) {
                $lastScode = DB::table('housekeeparmast')
                    ->where('propertyid', $this->propertyid)
                    ->max('scode');
                $scodeNum = $lastScode ? (intval(substr($lastScode, 0, -strlen((string) $this->propertyid))) + 1) : 1;
                $newScode = $scodeNum . $this->propertyid;

                DB::table('housekeeparmast')->insert([
                    'propertyid' => $this->propertyid,
                    'scode'      => $newScode,
                    'name'       => $request->Name,
                    'empid'      => $newEmployeeCode,
                    'u_name'     => $this->username,
                    'created_at'    => $this->currenttime,
                    'updated_at' => null,
                    'u_ae'       => 'a',
                    'activeYN'   => 'Y',
                ]);
            }
        }
        // ─────────────────────────────────────────────────────────────────────────

        if ($employee) {
            // Success
            return response()->json(['status' => 1, 'msg' => 'Employee added successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to add employee. Please try again.']);
        }
    }

    public function employeeEdit($id)
    {
        $employee = Employee::where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$employee) {
            return redirect()->back()->with('error', 'Employee not found!');
        }

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            // ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();
        $category = DB::table('empcategory')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();
        $designations = DB::table('desig')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();
        $salaryacgrpcode = ACGroup::where('propertyid', $this->propertyid)
            ->whereIn('group_name', ['EMPLOYEE', 'employee'])
            ->get();

        $salarydata = SubGroup::where('propertyid', $this->propertyid)
            ->whereIn('group_code', $salaryacgrpcode->pluck('group_code'))
            ->get();
        return view('hr.employee.employee_edit', [
            'employee' => $employee,
            'departments' => $departments,
            'designations' => $designations,
            'category' => $category,
            'salarydata' => $salarydata
        ]);
    }

    public function updateEmployee(Request $request)
    {
        $id = $request->id;

        // Validation
        $rules = [
            'Name' => 'required|string|max:255',
            'F_Name' => 'required|string|max:255',
            'Sex' => 'required|in:M,F',
            'Department' => 'required|string|max:100',
            'Designation' => 'required|string|max:100',
            'Category' => 'required|string|max:100',
            'Birth_Date' => 'required|date',
        ];
        $validatedData = $request->validate($rules);

        // Fetch employee
        $employee = Employee::where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$employee) {
            return response()->json(['status' => 0, 'msg' => 'Employee not found!']);
        }

        // Prepare update array
        $updateArr = [
            'name' => $request->Name,
            'f_name' => $request->F_Name,
            'department' => $request->Department,
            'designation' => $request->Designation,
            'category' => $request->Category,
            'sex' => $request->Sex,
            'type' => $request->type,
            'birth_date' => $request->Birth_Date,
            'marital' => $request->Marital,
            'add1' => $request->Add1,
            'add2' => $request->Add2,
            'phone' => $request->Phone,
            'qualification' => $request->Qualification,
            'joining_date' => $request->Joining_Date,
            'resign_date' => $request->Resign_Date,
            'spouse' => $request->Spouse,
            'pan' => $request->PAN,
            'ac_code' => $request->AC_Code,
            'loan_ac' => $request->LoanAc,
            'basic' => $request->basic,
            'da' => $request->da,
            'hra' => $request->hra,
            'conveyance' => $request->conveyance,
            'other_allow' => $request->other_allow,
            'medical' => $request->medical,
            'lta' => $request->lta,
            'increment' => $request->increment,
            'incrmth' => $request->incr_month,
            'op_loan' => $request->OP_Loan,
            'op_inst' => $request->OP_Inst,
            'op_advance' => $request->OP_Advance,
            'other_deduc' => $request->Other_Deduc,
            'tds' => $request->tds,
            'off_day_allow' => $request->off_day_allow,
            'off_day' => $request->SUNDAY,
            'pf_yn' => $request->Pf_Yn,
            'esi_yn' => $request->ESI_YN,
            'op_pf_balance' => $request->OP_PF_Balance,
            'pf_code' => $request->pf_code,
            'esi_code' => $request->esi_code,
            'tot_el_allow' => $request->Tot_EL_Allow,
            'tot_cl_allow' => $request->Tot_CL_Allow,
            'op_el' => $request->op_EL,
            'op_cl' => $request->op_CL,
            'curr_el' => $request->Curr_EL,
            'curr_cl' => $request->Curr_CL,
            'otrate' => $request->ot_rate, // make sure DB column name is ot_rate
            'idproof' => $request->IdProof,
            'idproofno' => $request->IdProofNo,
            'activeyn' => $request->ActiveYN,
            'bio_metric_id'    => $request->biometricid,
            'bank_account'     => $request->bankaccount,
            'ac_holder_name'   => $request->ac_holder_name,
            'ifsc_code'        => $request->ifsc_code,
            'u_name' => $this->username,
            'updated_at' => now(),
            'u_ae' => 'e',
        ];

        $uploadPath = public_path('uploads/employees');
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0755, true);
        }

        // Handle PicPath
        if ($request->hasFile('PicPath')) {
            $file = $request->file('PicPath');
            $filename = $request->Name . time() . '_pic.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/employees'), $filename);
            $updateArr['pic_path'] = 'uploads/employees/' . $filename;
        }

        // Handle IdPicPath
        if ($request->hasFile('IdPicPath')) {
            $file = $request->file('IdPicPath');
            $filename = $request->Name . time() . '_id.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/employees'), $filename);
            $updateArr['idpicpath'] = 'uploads/employees/' . $filename;
        }

        // return $updateArr;

        // Update employee
        $employee->update($updateArr);

        // ── HK Supervisor Sync ────────────────────────────────────────────────────
        $designationName = DB::table('desig')
            ->where('code', $request->Designation)
            ->where('propertyid', $this->propertyid)
            ->value('name');

        if ($designationName && strtoupper(trim($designationName)) === 'HOUSEKEEPING SUPERVISOR') {
            DB::table('hksupervisor')
                ->where('propertyid', $this->propertyid)
                ->where('empcode', $employee->code)
                ->update([
                    'name'     => strtoupper($request->Name),
                    'activeyn' => $request->ActiveYN == 'Y' ? 1 : 0,
                    'u_name'   => $this->username,
                    'u_ae'     => 'e',
                ]);
        }

        // ── HK Housekeeper Sync ───────────────────────────────────────────────────
        if ($designationName && strtoupper(trim($designationName)) === 'HOUSEKEEPER') {
            DB::table('housekeeparmast')
                ->where('propertyid', $this->propertyid)
                ->where('empid', $employee->code)
                ->update([
                    'name'       => $request->Name,
                    'activeYN'   => $request->ActiveYN ?? 'Y',
                    'u_name'     => $this->username,
                    'updated_at' => $this->currenttime,
                    'u_ae'       => 'e',
                ]);
        }
        // ─────────────────────────────────────────────────────────────────────────

        return response()->json(['status' => 1, 'msg' => 'Employee updated successfully!']);
    }


    public function deleteEmployee(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer|exists:employee,sn',
        ]);

        $id = $request->sn;

        $employee = DB::table('employee')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$employee) {
            return response()->json(['status' => 0, 'msg' => 'Employee not found!']);
        }

        $result = DB::table('employee')
            ->where('id', $id)
            ->where('propertyid', $this->propertyid)
            ->update([
                'active_yn' => 'D',
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'd'
            ]);

        if ($result) {
            // ── HK Supervisor Sync ────────────────────────────────────────────────
            DB::table('hksupervisor')
                ->where('propertyid', $this->propertyid)
                ->where('empcode', $employee->code)
                ->delete();
            // ── HK Housekeeper Sync ───────────────────────────────────────────────
            DB::table('housekeeparmast')
                ->where('propertyid', $this->propertyid)
                ->where('empid', $employee->code)
                ->update([
                    'activeYN'   => 'N',
                    'u_name'     => $this->username,
                    'updated_at' => $this->currenttime,
                    'u_ae'       => 'd',
                ]);
            // ─────────────────────────────────────────────────────────────────────

            return response()->json(['status' => 1, 'msg' => 'Employee deleted successfully!']);
        } else {
            return response()->json(['status' => 0, 'msg' => 'Failed to delete employee.']);
        }
    }

    //////////// Employee Export ////////////

    public function allEmployeeExport()
    {
        $fileName = 'emp_export_' . date('Ymd_His') . '.csv';

        // File ko open karo (php://output browser me direct bhejne ke liye)
        $handle = fopen('php://output', 'w');

        // Header set karo
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $fileName . '"');

        // Column heading
        fputcsv($handle, ['Name', 'DOB', 'Gender', 'Address', 'Phone', 'Email', 'Designation', 'Department', 'ActiveYN', 'U_AE']);

        // DB se data lo
        $categories = Employee::where('Propertyid', $this->propertyid)
            ->whereIn('ActiveYN', ['Y', 'N'])
            ->select('Name', 'Birth_Date', 'Sex', 'Add1', 'Add2', 'Phone', 'Category', 'Designation', 'Department', 'ActiveYN', 'U_AE')
            ->get();

        // Data ko CSV me likho
        foreach ($categories as $row) {
            fputcsv($handle, [
                $row->Name,
                $row->DOB,
                $row->Gender, // Convert gender to readable format
                $row->Address,
                $row->Phone,
                $row->Email,
                $row->Designation,
                $row->Department,
                $row->ActiveYN,
                $row->U_AE, // Convert U_AE to readable format
            ]);
        }

        fclose($handle);
        exit;
    }
}
