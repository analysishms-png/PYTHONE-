<?php

namespace App\Http\Controllers\SmartCard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CardInitializationController extends Controller
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
        return view('property.smartcard.cardinitilization');
    }

    public function store(Request $request) {}
}
