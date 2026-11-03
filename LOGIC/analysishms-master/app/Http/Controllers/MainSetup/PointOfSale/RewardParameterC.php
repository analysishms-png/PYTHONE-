<?php

namespace App\Http\Controllers\MainSetup\PointOfSale;

use App\Http\Controllers\Controller;
use App\Models\Depart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use App\Models\RewardParameter;

class RewardParameterC extends Controller
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

    public function rewardpoints()
    {
        $outlet = Depart::where('propertyid', $this->propertyid)
            ->where('nature', 'outlet')
            ->orderBy('name')
            ->get();

        return view('extra.rewardpoints', compact('outlet'));
    }

    public function rewardpointsData(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);

        // Base query
        $query = DB::table('rwparameter')
            ->select(
                'rwparameter.id',
                'rwparameter.restcode',
                'rwparameter.type',
                'rwparameter.firstpervalue',
                'rwparameter.pervalue',
                'rwparameter.validupto',
                'rwparameter.activeyn',
                'rwparameter.minamtreedem',
                'rwparameter.category',
                'rwparameter.rpointonamt',
                'rwparameter.rpoint',
                'rwparameter.rpointvalue',
                'rwparameter.limitlow',
                'rwparameter.limitup',
                'rwparameter.compoperator',
                'depart.name'
            )
            ->leftJoin('depart', 'depart.dcode', '=', 'rwparameter.restcode')
            ->whereIn('rwparameter.u_ae', ['a', 'e'])
            ->where('rwparameter.propertyid', $this->propertyid);

        // 🔍 Search filter
        if ($search = $request->input('search.value')) {
            $query->where(function ($q) use ($search) {
                $q->where('rwparameter.id', 'like', "%{$search}%")
                    ->orWhere('rwparameter.category', 'like', "%{$search}%")
                    ->orWhere('rwparameter.rpointonamt', 'like', "%{$search}%")
                    ->orWhere('rwparameter.rpoint', 'like', "%{$search}%");
            });
        }

        // 🔢 Get total count before pagination
        $total = $query->count();

        // ⬇️ Fetch paginated results
        $data = $query->orderBy('rwparameter.id', 'desc')
            ->offset($start)
            ->limit($length)
            ->get();

        // 🧩 Format for DataTables
        $formattedData = [];
        $sno = $start + 1;

        foreach ($data as $row) {
            $formattedData[] = [
                'id' => $sno++,
                'name' => $row->name,
                'category' => $row->category,
                'rpointonamt' => $row->rpointonamt,
                'rpoint' => $row->rpoint,
                'rpointvalue' => $row->rpointvalue,
                'limitlow' => $row->limitlow,
                'limitup' => $row->limitup,
                'comoperator' => $row->compoperator,
                'action' => '
                <button class="btn btn-sm btn-primary editBtn" 
                        data-id="' . $row->id . '" 
                        data-restcode="' . e($row->restcode) . '" 
                        data-type="' . e($row->type) . '" 
                        data-firstpervalue="' . e($row->firstpervalue) . '" 
                        data-pervalue="' . e($row->pervalue) . '" 
                        data-validupto="' . e($row->validupto) . '" 
                        data-activeyn="' . e($row->activeyn) . '" 
                        data-minamtreedem="' . e($row->minamtreedem) . '" 
                        data-category="' . e($row->category) . '" 
                        data-rpointonamt="' . e($row->rpointonamt) . '" 
                        data-rpoint="' . e($row->rpoint) . '" 
                        data-rpointvalue="' . e($row->rpointvalue) . '" 
                        data-limitlow="' . e($row->limitlow) . '" 
                        data-limitup="' . e($row->limitup) . '" 
                        data-comoperator="' . e($row->compoperator) . '">
                    Edit
                </button>
                <button class="btn btn-sm btn-danger deleteBtn" data-id="' . $row->id . '">Delete</button>
            ',
            ];
        }

        // 📤 Return JSON for DataTables
        return response()->json([
            'draw' => intval($draw),
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
            'data' => $formattedData,
        ]);
    }

    public function addRewardPoints(Request $request)
    {
        $request->validate([
            'category' => 'required|string|max:255',
            'rpointonamt' => 'required|numeric',
            'rpoint' => 'required|numeric',
            'rpointvalue' => 'required|numeric',
            'limitlow' => 'nullable|numeric',
            'limitup' => 'nullable|numeric',
            'restcode' => ['required', Rule::exists('depart', 'dcode'),],
            'activeyn' => ['required', Rule::in([1, 0])],
            'minamtreedem' => 'required|numeric|min:1',
            'validupto' => 'required|date|after_or_equal:' . ncurdate(),
            'compoperator' => ['required', Rule::in(['<', '<=', '=', '>=', '>', 'between'])],
        ]);

        $count_record = RewardParameter::where('propertyid', $this->propertyid)->count();

        RewardParameter::create([
            'propertyid' => $this->propertyid,
            'code' => $count_record . $this->propertyid,
            'category' => $request->input('category'),
            'type' => $request->input('type') ?? 'value',
            'firstpervalue' => $request->input('firstpervalue') ?? 0,
            'pervalue' => $request->input('pervalue') ?? 0,
            'rpointonamt' => $request->input('rpointonamt'),
            'rpoint' => $request->input('rpoint'),
            'rpointvalue' => $request->input('rpointvalue'),
            'limitlow' => $request->input('limitlow'),
            'limitup' => $request->input('limitup'),
            'compoperator' => $request->input('compoperator'),
            'restcode' => $request->input('restcode'),
            'activeyn' => $request->input('activeyn'),
            'minamtreedem' => $request->input('minamtreedem'),
            'validupto' => $request->input('validupto'),
            'u_name' => $this->username,
            'created_at' => $this->currenttime,
            'u_ae' => 'a',
        ]);

        return response()->json(['status' => 1, 'msg' => 'Reward Points added successfully.']);
    }


    public function updateRewardPoints(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer|exists:rwparameter,id',
            'category' => 'required|string|max:255',
            'rpointonamt' => 'required|numeric',
            'rpoint' => 'required|numeric',
            'rpointvalue' => 'required|numeric',
            'limitlow' => 'nullable|numeric',
            'limitup' => 'nullable|numeric',
            'restcode' => ['required', Rule::exists('depart', 'dcode'),],
            'activeyn' => ['required', Rule::in([1, 0])],
            'minamtreedem' => 'required|numeric|min:1',
            'validupto' => 'required|date|after_or_equal:' . ncurdate(),
            'compoperator' => ['required', Rule::in(['<', '<=', '=', '>=', '>', 'between'])],
        ]);

        RewardParameter::where('id', $request->input('sn'))
            ->where('propertyid', $this->propertyid)
            ->update([
                'category' => $request->input('category'),
                'type' => $request->input('type') ?? 'value',
                'firstpervalue' => $request->input('firstpervalue') ?? 0,
                'pervalue' => $request->input('pervalue') ?? 0,
                'rpointonamt' => $request->input('rpointonamt'),
                'rpoint' => $request->input('rpoint'),
                'rpointvalue' => $request->input('rpointvalue'),
                'limitlow' => $request->input('limitlow'),
                'limitup' => $request->input('limitup'),
                'compoperator' => $request->input('compoperator'),
                'restcode' => $request->input('restcode'),
                'activeyn' => $request->input('activeyn'),
                'minamtreedem' => $request->input('minamtreedem'),
                'validupto' => $request->input('validupto'),
                'u_name' => $this->username,
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ]);

        return response()->json(['status' => 1, 'msg' => 'Reward Points updated successfully.']);
    }

    public function deleteRewardPoints(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer|exists:rwparameter,id',
        ]);

        // Find record with propertyid check
        $checkRewardParameter = RewardParameter::where('id', $request->input('sn'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if (!$checkRewardParameter) {
            return response()->json([
                'status' => 0,
                'msg' => 'Reward Points not found.'
            ]);
        }

        $checkRewardParameter->delete();

        return response()->json([
            'status' => 1,
            'msg' => 'Reward Points deleted successfully.'
        ]);
    }

    public function rewardPointsExport()
    {
        $rewardPoints = RewardParameter::where('propertyid', $this->propertyid)
            ->whereIn('u_ae', ['a', 'e'])
            ->get([
                'id',
                'category',
                'rpointonamt',
                'rpoint',
                'rpointvalue',
                'limitlow',
                'limitup',
                'compoperator'
            ]);

        $filename = "reward_points_" . date('Ymd_His') . ".csv";
        $headers = [
            "Content-Type" => "text/csv",
            "Content-Disposition" => "attachment; filename={$filename}",
        ];

        $callback = function () use ($rewardPoints) {
            $file = fopen('php://output', 'w');
            // Header row
            fputcsv($file, [
                'S.No',
                'Name',
                'Category',
                'Reward Point on Amount',
                'Reward Point',
                'Reward Point Value',
                'Limit Low',
                'Limit Up',
                'Comparison Operator'
            ]);

            // Data rows
            foreach ($rewardPoints as $point) {
                fputcsv($file, [
                    $point->id,
                    $point->category,
                    $point->rpointonamt,
                    $point->rpoint,
                    $point->rpointvalue,
                    $point->limitlow,
                    $point->limitup,
                    $point->compoperator,
                ]);
            }

            fclose($file);
        };

        return response()->stream($callback, 200, $headers);
    }
}
