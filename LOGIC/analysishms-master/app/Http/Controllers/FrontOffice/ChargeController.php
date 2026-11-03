<?php

namespace App\Http\Controllers\FrontOffice;

use App\Http\Controllers\Controller;
use App\Models\RoomOcc;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ChargeController extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $compcode;
    protected $ncurdate;
    protected $datemanage;
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->propertyid = Auth::user()->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function fetchchargessum(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $revcodes = $request->input('rev_codes', []);
        if (!is_array($revcodes)) {
            $revcodes = [$revcodes];
        }

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();

        $datatmp = DB::table('paycharge')
            ->select(
                DB::raw('MAX(revmast.name) as chargename'),
                DB::raw('MAX(revmast.rev_code) as rev_code'),
                DB::raw('SUM(paycharge.amtdr) as debitamt'),
                DB::raw('SUM(paycharge.amtcr) as creditamt')
            )
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.folionodocid', $docid)
            ->whereIn('paycharge.paycode', $revcodes)
            ->groupBy('paycharge.paycode');

        if (!$rocc) {
            $data = $datatmp->where('paycharge.sno1', $sno1)->get();
        } else {
            $data = $datatmp->where('paycharge.folionodocid', $docid)->get();
        }

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }
}
