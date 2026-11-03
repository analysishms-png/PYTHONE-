<?php

namespace App\Http\Controllers;

use App\Models\ChannelDerived;
use App\Models\ChannelEnviro;
use App\Models\ChannelRate;
use App\Models\Paycharge;
use App\Models\RoomMast;
use App\Models\RoomOcc;
use App\Models\PlanMast;
use App\Models\Plan1;
use App\Models\RoomCat;
use App\Services\Channel\UpdateInventory;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class ChannelPush extends Controller
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

    public function showrooms(Request $request)
    {
        $channelenviro = channelparameter();
        $url = "https://www.eglobe-solutions.com/webapichannelmanager/rooms/" . $channelenviro->apikey;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Accept: application/json',
            'User-Agent: AnalysisHMS-PMS/1.0'
        ]);

        $response = curl_exec($ch);
        curl_close($ch);

        $roomsData = json_decode($response, true);

        if (isset($roomsData['error'])) {
            return back()->with('error', $roomsData['error']);
        }

        // $rooms = RoomMast::select('room_mast.rcode as roomno', 'room_mast.room_cat')
        //     ->leftJoin('roomocc', 'roomocc.roomno', '=', 'room_mast.rcode')
        //     ->where('room_mast.propertyid', $this->propertyid)
        //     ->where('room_mast.type', 'RO')
        //     ->orderBy('room_mast.rcode', 'ASC')
        //     ->get();

        $roomcat = RoomCat::where('propertyid', $this->propertyid)->orderBy('cat_code', 'ASC')->get();

        return view('property.channelrooms', [
            'rooms' => $roomsData,
            'roomcat' => $roomcat,
            'ncurdate' => $this->ncurdate
        ]);
    }

    public function updateinventory(
        Request $request,
        UpdateInventory $inventoryService
    ) {
        $validatedData = $request->validate([
            'datefrom' => 'required|date|after_or_equal:today',
            'datetill' => 'required|date|after_or_equal:datefrom',
            'roomcode' => 'required|string',
            'availability' => 'required|integer|min:0',
        ]);

        $inventoryUpdates = [
            [
                'category' => $validatedData['roomcode'],
                'availability' => (int) $validatedData['availability'],
            ],
        ];
        $propertyId = (int) Auth::user()->propertyid;
        $u_name = Auth::user()->u_name;
        $result = $inventoryService->updateInventory(
            $inventoryUpdates,
            $validatedData['datefrom'],
            $validatedData['datetill'],
            $propertyId,
            $u_name
        );

        $statusCode = $result['success']
            ? 200
            : ($result['httpcode'] ?? 500);

        return response()->json($result, $statusCode);
    }


    public function showrates(Request $request)
    {
        // $rooms = RoomMast::select('room_mast.rcode as roomno', 'room_mast.room_cat')
        //     ->leftJoin('roomocc', 'roomocc.roomno', '=', 'room_mast.rcode')
        //     ->where('room_mast.propertyid', $this->propertyid)
        //     ->where('room_mast.type', 'RO')
        //     ->orderBy('room_mast.rcode', 'ASC')
        //     ->get();
        $roomcat = RoomCat::where('propertyid', $this->propertyid)->orderBy('cat_code', 'ASC')->get();

        // $updatecodes = ChannelRate::where('propertyid', $this->propertyid)->where('')

        return view('property.channelrates', [
            'roomcat' => $roomcat,
            'ncurdate' => $this->ncurdate
        ]);
    }

    public function channelratesubmit(Request $request)
    {
        $validatedata = $request->validate([
            'datefrom' => 'required|date',
            'datetill' => 'required|date',
            'roomcode' => 'required|string',
            'plancode' => 'required|string',
            'planrate' => 'required'
        ]);

        $apikey = channelparameter()->apikey;
        if (empty($apikey)) {
            return response()->json([
                'success' => false,
                'message' => 'API Key Not Found'
            ]);
        }
        $apiUrl = "https://www.eglobe-solutions.com/webapichannelmanager/rates/" . $apikey . "/bulkupdate";

        $roomcat = RoomCat::where('cat_code', $validatedata['roomcode'])
            ->where('inclcount', 'Y')
            ->value('map_code');

        if (empty($roomcat)) {
            return response()->json([
                'success' => false,
                'message' => 'Map Code not found'
            ]);
        }

        $planmast = PlanMast::where('pcode', $validatedata['plancode'])
            ->where('activeYN', 'Y')
            ->value('map_code');

        if (empty($planmast)) {
            return response()->json([
                'success' => false,
                'message' => 'Map Code not found'
            ]);
        }

        $requestbody = [
            "RoomCode" => $roomcat,
            "DateFrom" => $validatedata['datefrom'],
            "DateTill" => $validatedata['datetill'],
            "RatePlanWiseRates" => [
                [
                    "RatePlanCode" => $planmast,
                    "Rate" => $validatedata['planrate']
                ]
            ]
        ];


        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $apiUrl);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($requestbody));
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
            'User-Agent: AnalysisHMS-PMS/1.0'
        ]);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        $inc = [
            'propertyid' => $this->propertyid,
            'vdate' => $this->ncurdate,
            'retcode' => $response,
            'response' => $response,
            'httpcode' => $httpcode,
            'rcode' => $validatedata['roomcode'],
            'plancode' => $validatedata['plancode'],
            'name' => 'Plan Rate Submit',
            'created_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'a',
        ];

        ChannelRate::insert($inc);

        if ($httpcode == 200) {
            return response()->json([
                'success' => true,
                'message' => 'Channel Rate Updated'
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Channel Rate not Updated'
            ]);
        }
    }

    public function derivedpricing(Request $request)
    {
        $propertyid = 'TqN7Ngtm8X4pAJGSljRI';
        $retcode = ChannelDerived::where('propertyid', $this->propertyid)->get();
        return view('property.channelderivedpricing', [
            'ncurdate' => $this->ncurdate,
            'retcode' => $retcode
        ]);
    }

    public function channelderivedsubmit(Request $request)
    {
        $validatedata = $request->validate([
            'datefrom' => 'required|date',
            'datetill' => 'required|date',
            'baseprice' => 'required'
        ]);

        $propertyid = 'TqN7Ngtm8X4pAJGSljRI';
        $apiUrl = "https://www.eglobe-solutions.com/webapichannelmanager/rates/" . $propertyid . "/bulkupdate/derived";
        $requestBody = [
            'DateFrom' => $validatedata['datefrom'],
            'DateTill' => $validatedata['datetill'],
            'BasePrice' => $validatedata['baseprice'],
        ];

        $ch = curl_init($apiUrl);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
            'User-Agent: AnalysisHMS-PMS/1.0'
        ]);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($requestBody));

        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        $data = json_decode($response, true);

        if ($data['IsError'] == false) {
            $updateid = $data['Result'];

            $inc = [
                'propertyid' => $this->propertyid,
                'vdate' => $this->ncurdate,
                'retcode' => $updateid,
                'price' => $validatedata['baseprice'] ?? 0.00,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];

            ChannelDerived::insert($inc);

            return response()->json(['message' => 'Derived Pricing Updated']);
        }
    }

    public function channelenviro(Request $request)
    {
        $permission = revokeopen(271113);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = ChannelEnviro::where('propertyid', $this->propertyid)->first();

        return view('property.channelenviro', [
            'data' => $data
        ]);
    }

    public function channelenvirosubmit(Request $request)
    {
        $permission = revokeopen(271113);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'name' => 'required|string',
            'username' => 'required|string',
            'url' => 'required|url',
            'password' => 'required|string',
            'apikey' => 'required|string',
        ]);

        try {
            $data = [
                'name' => $validate['name'],
                'username' => $validate['username'],
                'url' => $validate['url'],
                'password' => $validate['password'],
                'apikey' => $validate['apikey'],
                'authorization' => $request->input('authorization') ?? '',
                'providercode' => $request->input('providercode') ?? '',
                'created_at' => $this->currenttime,
                'u_ae' => 'e',
                'checkyn' => $request->input('checkyn'),
                'u_name' => Auth::user()->name,
            ];

            ChannelEnviro::where('propertyid', $this->propertyid)->update($data);
            return response()->json(['message' => 'Channel enviro updated successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['error' => 'Unknown Error Occured: ' . $e->getMessage()], 500);
        }
    }

    public function bookingfetch(Request $request)
    {
        $permission = revokeopen(271114);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $channelenv = ChannelEnviro::where('propertyid', $this->propertyid)->first();
        return view('property.bookingfetch', [
            'channelenv' => $channelenv
        ]);
    }
}
