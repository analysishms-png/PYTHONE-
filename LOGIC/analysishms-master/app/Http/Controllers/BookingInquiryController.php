<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\BookingDetail;
use App\Models\BookingInquiry;
use App\Models\Companyreg;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BookingInquiryController extends Controller
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
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            return $next($request);
        });
    }

    public function bookingenquiry(Request $request)
    {

        $bookings = BookingDetail::select(
            'cities.cityname',
            'bookinginquiry.*',
            'venuemast.name as venuename',
            'bookingdetail.*'
        )
            ->leftJoin('bookinginquiry', 'bookinginquiry.inqno', '=', 'bookingdetail.inqno')
            ->leftJoin('cities', 'cities.city_code', '=', 'bookinginquiry.citycode')
            ->leftJoin('venuemast', 'venuemast.code', '=', 'bookingdetail.venuecode')
            ->where('bookinginquiry.propertyid', Auth::user()->propertyid)
            ->groupBy('bookingdetail.inqno')
            ->groupBy('bookingdetail.sno')
            ->orderByDesc('bookinginquiry.created_at')
            ->get();

        return view('property.banquetenquiry', [
            'bookings' => $bookings
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'functype' => 'required',
            'partyname' => 'required',
            'mobileno' => 'required',
        ]);

        try {
            DB::beginTransaction();

            $propertyid = auth()->user()->propertyid ?? 1;
            $username = auth()->user()->name ?? 'system';

            $maxinqresult = DB::table('bookinginquiry')
                ->select(DB::raw('MAX(CAST(inqno AS SIGNED)) AS max_inqno'))
                ->where('propertyid', $propertyid)
                ->first();

            $maxinqcode = $maxinqresult->max_inqno;

            if ($maxinqcode == null) {
                $inqno = $propertyid . '1';
            } else {
                $serial = (int)substr($maxinqcode, $this->ptlngth) + 1;
                $inqno = $propertyid . $serial;
            }

            DB::table('bookinginquiry')->insert([
                'propertyid' => $propertyid,
                'inqno' => $inqno,
                'contradocid' => '',
                'cattype' => $request->cattype,
                'partyname' => $request->partyname,
                'add1' => $request->add1 ?? '',
                'add2' => $request->add2 ?? '',
                'citycode' => $request->citycode ?? '',
                'mobileno' => $request->mobileno ?? '',
                'mobileno1' => $request->mobileno1 ?? '',
                'conperson' => $request->conperson ?? '',
                'bookedby' => '',
                'functype' => $request->functype,
                'handledby' => $request->handledby ?? '',
                'status' => $request->status,
                'pax' => $request->pax,
                'gurrpax' => $request->gurrpax,
                'ratepax' => 0,
                'u_name' => $username,
                'created_at' => now(),
                'u_ae' => 'a',
                'remark' => $request->remark ?? '',
                'follupdate' => now()
            ]);

            if ($request->has('venues')) {
                $sno = 1;
                foreach ($request->venues as $venueCode => $venueData) {
                    if (!empty($venueData['select'])) {
                        DB::table('bookingdetail')->insert([
                            'propertyid' => $propertyid,
                            'inqno' => $inqno,
                            'sno' => $sno++,
                            'venuecode' => $venueCode,
                            'fromdate' => $venueData['fromdate'] ?? now(),
                            'todate' => $venueData['todate'] ?? now(),
                            'fromtime' => isset($venueData['fromtime']) ? str_replace(':', '', $venueData['fromtime']) : 0,
                            'totime' => isset($venueData['totime']) ? str_replace(':', '', $venueData['totime']) : 0,
                            'u_name' => $username,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ]);
                    }
                }
            }
            DB::commit();
            return back()->with('success', 'Enquiry Submitted Successfully');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Unknwon Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function updatebanquetenquiry(Request $request, $inqno)
    {

        $bookinginquiry = BookingInquiry::where('propertyid', $this->propertyid)->where('inqno', $inqno)->first();

        $venues = BookingDetail::where('propertyid', $this->propertyid)->where('inqno', $inqno)->orderBy('sno')->get();

        return view('property.banquetenquiryupdate', [
            'inquiry' => $bookinginquiry,
            'venues' => $venues
        ]);
    }

    public function update(Request $request)
    {
        $request->validate([
            'inqno' => 'required',
            'functype' => 'required',
            'partyname' => 'required',
            'mobileno' => 'required',
        ]);

        try {
            DB::beginTransaction();

            $propertyid = auth()->user()->propertyid ?? 1;
            $username = auth()->user()->name ?? 'system';
            $inqno = $request->inqno;

            // Update booking inquiry main table
            DB::table('bookinginquiry')
                ->where('propertyid', $propertyid)
                ->where('inqno', $inqno)
                ->update([
                    'cattype' => $request->cattype,
                    'partyname' => $request->partyname,
                    'add1' => $request->add1,
                    'add2' => $request->add2,
                    'citycode' => $request->citycode,
                    'mobileno' => $request->mobileno,
                    'mobileno1' => $request->mobileno1 ?? '',
                    'conperson' => $request->conperson,
                    'functype' => $request->functype,
                    'handledby' => $request->handledby ?? '',
                    'status' => $request->status,
                    'pax' => $request->pax,
                    'gurrpax' => $request->gurrpax,
                    'remark' => $request->remark ?? '',
                    'u_name' => $username,
                    'created_at' => now(),
                    'u_ae' => 'e', // edited
                    'follupdate' => now()
                ]);

            // Delete old booking details for this inqno
            DB::table('bookingdetail')
                ->where('propertyid', $propertyid)
                ->where('inqno', $inqno)
                ->delete();

            // Insert booking details again
            if ($request->has('venues')) {
                $sno = 1;
                foreach ($request->venues as $venueCode => $venueData) {
                    if (!empty($venueData['select'])) {
                        DB::table('bookingdetail')->insert([
                            'propertyid' => $propertyid,
                            'inqno' => $inqno,
                            'sno' => $sno++,
                            'venuecode' => $venueCode,
                            'fromdate' => $venueData['fromdate'] ?? now(),
                            'todate' => $venueData['todate'] ?? now(),
                            'fromtime' => isset($venueData['fromtime']) ? str_replace(':', '', $venueData['fromtime']) : 0,
                            'totime' => isset($venueData['totime']) ? str_replace(':', '', $venueData['totime']) : 0,
                            'u_name' => $username,
                            'created_at' => now(),
                            'u_ae' => 'a',
                        ]);
                    }
                }
            }

            DB::commit();
            return redirect('bookingenquiry')->with('success', 'Enquiry Updated Successfully');
        } catch (Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Unknown Error Occurred: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function deletebanquetenquiry(Request $request, $inqno)
    {
        $bookinginquiry = BookingInquiry::where('propertyid', $this->propertyid)->where('inqno', $inqno)->delete();

        $venues = BookingDetail::where('propertyid', $this->propertyid)->where('inqno', $inqno)->delete();
        return redirect('bookingenquiry')->with('success', 'Enquiry Deleted Successfully');
    }
}
