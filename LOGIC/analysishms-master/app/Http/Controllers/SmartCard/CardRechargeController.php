<?php

namespace App\Http\Controllers\SmartCard;

use App\Http\Controllers\Controller;
use App\Models\SubGroup;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CardRechargeController extends Controller
{
    protected $propertyid;

    public function __construct()
    {

        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->propertyid = Auth::user()->propertyid;
            return $next($request);
        });
    }
    public function index()
    {
        $subgroupdata = SubGroup::where('propertyid', $this->propertyid)->where('nature', 'Sale')->orderBy('name', 'ASC')->get();
        return view('property.smartcard.cardrecharge', [
            'subgroupdata' => $subgroupdata
        ]);
    }

    public function store(Request $request) {}
}
