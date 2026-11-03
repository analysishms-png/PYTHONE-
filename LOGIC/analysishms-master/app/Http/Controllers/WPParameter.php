<?php

namespace App\Http\Controllers;

use App\Helpers\DateHelper;
use App\Models\Companyreg;
use App\Models\EnviroWhatsapp;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Svg\Tag\Rect;

class WPParameter extends Controller
{
    protected $username;
    protected $email;
    protected $propertyid;
    protected $currenttime;
    protected $ptlngth;
    protected $prpid;
    protected $ncurdate;
    protected $datemanage;
    protected $company;

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
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);
            $this->company = Companyreg::where('propertyid', $this->propertyid)->first();
            return $next($request);
        });
    }

    public function getwpenviro()
    {
        $whatsappbal = EnviroWhatsapp::where('propertyid', $this->propertyid)->value('whatsappbal');

        if (is_null($whatsappbal)) {
            return false;
        }
        return response()->json($whatsappbal <= 10 ? true : false);
    }

    public function smsscheduled(Request $request)
    {
        $permission = revokeopen(271212);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $count = EnviroWhatsapp::where('propertyid', $this->propertyid)->count();
        if ($count == 0) {
            $data = [
                'propertyid' => $this->propertyid,
                'created_at' => $this->currenttime,
                'u_ae' => 'a'
            ];
            EnviroWhatsapp::insert($data);
        }

        $envdata = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

        return view('property.smsscheduled', compact('envdata'));
    }

    public function fomwpparamsubmit(Request $request)
    {
        $permission = revokeopen(271212);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $request->validate([
        //     'fomtextarea' => 'required|string',
        // ]);

        try {

            DB::beginTransaction();
            $wpenviro = EnviroWhatsapp::findOrFail($this->propertyid);
            $wpenviro->checkinmsg = $request->fomtextarea;
            $wpenviro->checkoutmsg = $request->fomtextareachkout;
            $wpenviro->checkinmsgadmin = $request->fomtextareaadminchkin;
            $wpenviro->checkoutmsgadmin = $request->fomtextareaadminchkout;
            $wpenviro->checkintemplate = $request->checkintemplate;
            $wpenviro->checkouttemplate = $request->checkouttemplate;
            $wpenviro->checkinmsgadmintemplate = $request->checkinmsgadmintemplate;
            $wpenviro->checkoutmsgadmintemplate = $request->checkoutmsgadmintemplate;
            $wpenviro->checkinmsgarray = json_decode($request->checkinmsgarray, true);
            $wpenviro->checkoutmsgarray = json_decode($request->checkoutmsgarray, true);
            $wpenviro->checkinmsgadminarray = json_decode($request->checkinmsgadminarray, true);
            $wpenviro->checkoutmsgadminarray = json_decode($request->checkoutmsgadminarray, true);
            $wpenviro->updated_at = $this->currenttime;
            $wpenviro->u_name = Auth::user()->name;
            $wpenviro->u_ae = 'e';
            $wpenviro->save();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'FOM Whatsapp Enviro Updated Successfully'
            ]);
        } catch (Exception $e) {

            DB::rollBack();
            return response()->json([
                'success' => true,
                'message' => 'Unkonown Error Occured : ' . $e->getMessage() . ' On Line : ' . $e->getLine()
            ], 500);
        }
    }

    public function reswpenvirosubmit(Request $request)
    {
        $permission = revokeopen(271212);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate([
            'reservationmessage' => 'required|string',
        ]);

        try {

            DB::beginTransaction();
            $wpenviro = EnviroWhatsapp::findOrFail($this->propertyid);
            $wpenviro->reservation = $request->reservationmessage;
            $wpenviro->reservationcancel = $request->reservationcancel;
            $wpenviro->adminreservation = $request->adminreservation;
            $wpenviro->adminreservationcancel = $request->adminreservationcancel;
            $wpenviro->reservationtemplate = $request->reservationtemplate;
            $wpenviro->reservationcanceltemplate = $request->reservationcanceltemplate;
            $wpenviro->adminreservationtemplate = $request->adminreservationtemplate;
            $wpenviro->adminreservationcanceltemplate = $request->adminreservationcanceltemplate;
            $wpenviro->reservationarray = $request->reservationarray;
            $wpenviro->adminreservationarray = $request->adminreservationarray;
            $wpenviro->reservationcancelarray = $request->reservationcancelarray;
            $wpenviro->adminreservationcancelarray = $request->adminreservationcancelarray;
            $wpenviro->updated_at = $this->currenttime;
            $wpenviro->u_name = Auth::user()->name;
            $wpenviro->u_ae = 'e';
            $wpenviro->save();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Reservation Whatsapp Enviro Updated Successfully'
            ]);
        } catch (Exception $e) {

            DB::rollBack();
            return response()->json([
                'success' => true,
                'message' => 'Unkonown Error Occured : ' . $e->getMessage() . ' On Line : ' . $e->getLine()
            ], 500);
        }
    }

    public function poswpenvirosubmit(Request $request)
    {
        $permission = revokeopen(271212);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {

            DB::beginTransaction();
            $wpenviro = EnviroWhatsapp::findOrFail($this->propertyid);
            $wpenviro->kotmsgadmin = $request->kotmsgadmin;
            $wpenviro->kotmsgadmintemplate = $request->kotmsgadmintemplate;
            $wpenviro->billmsgguest = $request->billmsgguest;
            $wpenviro->billmsgguesttemplate = $request->billmsgguesttemplate;
            $wpenviro->billmsgadmin = $request->billmsgadmin;
            $wpenviro->billmsgadmintemplate = $request->billmsgadmintemplate;
            $wpenviro->assigndelmsg = $request->assigndelmsg;
            $wpenviro->assigndelmsgtemplate = $request->assigndelmsgtemplate;
            $wpenviro->kotmsgadminarray = $request->kotmsgadminarray;
            $wpenviro->billmsgguestarray = $request->billmsgguestarray;
            $wpenviro->billmsgadminarray = $request->billmsgadminarray;
            $wpenviro->assigndelmsgarray = $request->assigndelmsgarray;
            $wpenviro->updated_at = $this->currenttime;
            $wpenviro->u_name = Auth::user()->name;
            $wpenviro->u_ae = 'e';
            $wpenviro->save();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'POS Whatsapp Enviro Updated Successfully'
            ]);
        } catch (Exception $e) {

            DB::rollBack();
            return response()->json([
                'success' => true,
                'message' => 'Unkonown Error Occured : ' . $e->getMessage() . ' On Line : ' . $e->getLine()
            ], 500);
        }
    }

    public function wishwpparamsubmit(Request $request)
    {
        $permission = revokeopen(271212);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {

            DB::beginTransaction();
            $wpenviro = EnviroWhatsapp::findOrFail($this->propertyid);
            $wpenviro->birthdaywishmessage = $request->birthdaywishmessage;
            $wpenviro->birthdaywishtemplate = $request->birthdaywishtemplate;
            $wpenviro->birthdaywisharray = json_decode($request->birthdaywisharray, true);
            $wpenviro->anniversarywishmessage = $request->anniversarywishmessage;
            $wpenviro->anniversarywishtemplate = $request->anniversarywishtemplate;
            $wpenviro->anniversarywisharray = json_decode($request->anniversarywisharray, true);
            $wpenviro->updated_at = $this->currenttime;
            $wpenviro->u_name = Auth::user()->name;
            $wpenviro->u_ae = 'e';
            $wpenviro->save();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Wishes Whatsapp Enviro Updated Successfully'
            ]);
        } catch (Exception $e) {

            DB::rollBack();
            return response()->json([
                'success' => true,
                'message' => 'Unkonown Error Occured : ' . $e->getMessage() . ' On Line : ' . $e->getLine()
            ], 500);
        }
    }

    public function whatsappenviro(Request $request)
    {
        $permission = revokeopen(271211);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $count = EnviroWhatsapp::where('propertyid', $this->propertyid)->count();
        if ($count == 0) {
            $data = [
                'propertyid' => $this->propertyid,
                'created_at' => $this->currenttime,
                'u_ae' => 'a'
            ];
            EnviroWhatsapp::insert($data);
        }

        $envdata = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

        return view('property.whatsappenviro', compact('envdata'));
    }

    public function wpenvirosubmit(Request $request)
    {
        $permission = revokeopen(271211);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate([
            'whatsappcenterusername' => 'required',
            'whatsappcenterpassword' => 'required',
            'whatsappdisplayname' => 'required',
            'pphonenoprefix' => 'required|int',
            'whatsappurl' => 'required',
            'bearercode' => 'required'
        ]);

        try {
            DB::beginTransaction();

            $wpenviro = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();
            $wpenviro->whatsappcenterusername = $request->whatsappcenterusername;
            $wpenviro->whatsappcenterpassword = $request->whatsappcenterpassword;
            $wpenviro->whatsappdisplayname = $request->whatsappdisplayname;
            $wpenviro->pphonenoprefix = $request->pphonenoprefix;
            $wpenviro->whatsappurl = $request->whatsappurl;
            $wpenviro->sendpdfcheckout = $request->sendpdfcheckout;
            $wpenviro->sendpdfcheckoutpos = $request->sendpdfcheckoutpos;
            $wpenviro->managementmob = $request->managementmob;
            $wpenviro->checkyn = $request->checkyn;
            $wpenviro->bearercode = $request->bearercode;
            $wpenviro->updated_at = $this->currenttime;
            $wpenviro->u_name = Auth::user()->name;
            $wpenviro->u_ae = 'e';
            $wpenviro->save();

            Db::commit();

            return response()->json([
                'success' => true,
                'message' => 'Whatsapp Enviro Updated'
            ]);
        } catch (Exception $e) {
            Db::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Unknown Error Occured : ' . $e->getMessage() . ' On Line : ' . $e->getLine()
            ], 500);
        }
    }
}
