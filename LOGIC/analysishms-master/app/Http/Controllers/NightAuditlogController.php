<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

use App\Models\Extra;
use App\Models\Paycharge;
use App\Models\NightAuditLog;

class NightAuditlogController extends Controller
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


    // Night Audit Log View
    public function nightAuditLog()
    {

        $users = NightAuditLog::where('propertyid', $this->propertyid)
            ->distinct()
            ->pluck('u_name');
        return view('nightauditlog.night_audit_log', compact('users'));
    }

    public function fetchNightAuditLog(Request $request)
    {
        $request->validate([
            'from_date' => 'required|date',
            'to_date'   => 'required|date',
        ]);

        // If all selected then ignore "users[]" filtering
        $users = $request->users ?? [];

        $query = NightAuditLog::whereBetween('ncurdate', [$request->from_date, $request->to_date])->where('propertyid', $this->propertyid);

        if (!empty($users)) {
            $query->whereIn('u_name', $users);
        }

        $data = $query->get(['ncurdate', 'narration', 'u_name', 'created_at']);
        $html = [];

        foreach ($data as $log) {

            // Convert ncurdate → dd-mm-yyyy
            $ncurdate = date('d-m-Y', strtotime($log->ncurdate));

            // Convert created_at → dd-mm-yyyy hh:mm
            $created_at = date('d-m-Y H:i', strtotime($log->created_at));

            // Capitalize first letter of name
            $u_name = ucfirst(strtolower($log->u_name));

            $html[] = '
                    <tr>
                        <td>' . $ncurdate . '</td>
                        <td>' . $created_at . '</td>
                        <td>' . $log->narration . '</td>
                        <td>' . $u_name . '</td>
                    </tr>
                ';
        }

        return response()->json([
            'success' => true,
            'data_html' => implode('', $html),
        ]);
    }

    public function fetchNightAuditTable(Request $request)
    {
        $request->validate([
            'from_date' => 'required|date',
            'to_date'   => 'required|date',
        ]);

        // If all selected then ignore "users[]" filtering

        $html = view('reports.night_audit_table', compact('data'))->render();

        return response()->json([
            'success' => true,
            'data_html' => $html,
        ]);
    }

    public function chremovelog(Request $request)
    {
        $ncurdate = $this->ncurdate;
        $users = DB::table('paychargelog as P')
            ->where('P.propertyid', $this->propertyid)
            ->select('P.u_name')
            ->groupBy('P.u_name')
            ->orderBy('P.u_name', 'ASC')
            ->get();

        return view('property.chremovelog', [
            'fromdate' => $ncurdate,
            'user' => $users,
        ]);
    }

    public function fetchchremovelog(Request $request)
    {
        $fromdate = $request->fromdate ?? date('Y-m-d');
        $todate   = $request->todate ?? $fromdate;
        $users = $request->users;

        $query = DB::table('paychargelog as P')
            ->leftJoin('revmast as R', 'P.paycode', '=', 'R.rev_code')
            ->leftJoin('guestfolio as G', 'P.folionodocid', '=', 'G.docid')
            ->leftJoin('guestprof as GP', 'GP.guestcode', '=', 'G.guestprof')
            ->select([
                'P.vdate as VDate',
                'P.vno as VNO',
                'P.vtime as VTime',
                'P.foliono as FolioNo',
                'GP.name as GUESTNAME',
                'P.roomno as ROOM',
                'P.comments as COMMENT',
                'P.remarks as Remark',
                'P.amtdr as AmountDr',
                DB::raw('COALESCE(P.amtdr, 0) - COALESCE(P.amtcr, 0) as Amount'),
                'P.billno as BillNo',
                'P.settledate as BillDate',
                'P.created_at as DelDate',
                'P.u_name as EMPL'
            ])
            ->whereBetween('P.created_at', [$fromdate, $todate])
            ->where('P.propertyid', $this->propertyid);

        if (!empty($users)) {
            $query->whereIn('P.u_name', $users);
        }

        $data = $query->orderBy('P.created_at', 'desc')->get();

        if ($data->isEmpty()) {
            return response()->json([
                'status' => false,
                'message' => 'No data found for selected criteria'
            ]);
        }

        return response()->json([
            'status' => true,
            'data' => $data
        ]);
    }
    
}
