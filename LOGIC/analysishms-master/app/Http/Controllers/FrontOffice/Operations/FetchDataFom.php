<?php

namespace App\Http\Controllers\FrontOffice\Operations;

use App\Http\Controllers\Controller;
use App\Models\FomBillDetail;
use App\Models\Paycharge;
use App\Models\VoucherPrefix;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FetchDataFom extends Controller
{
    protected $username;
    protected $propertyid;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }

    public function maxbilledno($year)
    {
        $vtype = "BCNT";
        $date = "$year-04-01";
        $years = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $date)
            ->whereDate('date_to', '>=', $date)
            ->first();

        $latestbillno = Paycharge::where('propertyid', $this->propertyid)
            ->where('vprefix', $years->prefix)
            ->whereNull('modeset')
            ->max('billno');

        return response()->json(['latestbillno' => $latestbillno]);
    }
}
