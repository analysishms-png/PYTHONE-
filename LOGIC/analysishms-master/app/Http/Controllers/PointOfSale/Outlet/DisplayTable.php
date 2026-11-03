<?php

namespace App\Http\Controllers\PointOfSale\Outlet;

use App\Http\Controllers\Controller;
use App\Models\Tablebooking;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DisplayTable extends Controller
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

    public function checktablebooking(Request $request)
    {
        $restcode = $request->input('restcode');
        $roomno = $request->input('roomno');

        $waitingtime = posparameter()->waitingtime;

        $chk = Tablebooking::where('propertyid', $this->propertyid)
            ->where('restcode', $restcode)
            ->where('tabaleno', $roomno)
            ->where('cancelyn', 'N')
            ->where('bookindate', ncurdate())
            ->where('contradocid', '')
            ->first();

        if (!$chk) {
            return response([
                'success' => false,
                'message' => 'No Booking Found!'
            ]);
        }

        $fromtime = \Carbon\Carbon::parse($chk->fromtime);
        $totime = \Carbon\Carbon::parse($chk->totime);
        $currenttime = now();

        [$hours, $minutes, $seconds] = array_map('intval', explode(':', $waitingtime));

        $checkinstart = $fromtime->copy()->subHours($hours)->subMinutes($minutes)->subSeconds($seconds);


        if ($currenttime->between($checkinstart, $totime)) {
            return response([
                'success' => true,
                'expired' => false,
                'chk' => $chk
            ]);
        }

        if ($currenttime->greaterThan($totime)) {
            return response([
                'success' => true,
                'expired' => true,
                'chk' => $chk
            ]);
        }

        return response([
            'success' => false,
            'message' => 'Check-in time has not started or booking time has expired.'
        ]);
    }
}
