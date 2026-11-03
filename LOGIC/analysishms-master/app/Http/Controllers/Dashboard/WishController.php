<?php

namespace App\Http\Controllers\Dashboard;

use App\Helpers\WhatsappSend;
use App\Http\Controllers\Controller;
use App\Models\EnviroWhatsapp;
use App\Models\GuestProf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class WishController extends Controller
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

    public function sendwish(Request $request, $type)
    {
        try {
            $guestcode = $request->guestcode;
            $docid = $request->docid;

            if (!$guestcode) {
                return response()->json([
                    'success' => false,
                    'message' => 'Guest code is required.'
                ], 422);
            }

            if (!in_array($type, ['birthdaywishsend', 'anniversarywishsend'])) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid wish type.'
                ], 422);
            }

            $mob = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $guestcode)->value('mobile_no');

            $templatename = $type == 'birthdaywishsend' ? 'birthdaywishtemplate' : 'anniversarywishtemplate';
            $columnmessage = $type == 'birthdaywishsend' ? 'birthdaywishmessage' : 'anniversarywishmessage';
            $columnarray = $type == 'birthdaywishsend' ? 'birthdaywisharray' : 'anniversarywisharray';
            $msgtype = $type == 'birthdaywishsend' ? 'Birthday' : 'Anniversary';
            $occasion = $type == 'birthdaywishsend' ? 'Birthday' : 'Anniversary';

            $wpenv = whatsappparameter();

            if ($wpenv != null) {
                if (
                    $wpenv->checkyn == 'Y' &&
                    !empty($wpenv->{$columnmessage}) &&
                    !empty($wpenv->{$templatename}) &&
                    !empty($wpenv->{$columnarray}) &&
                    !empty($mob)
                ) {

                    $wisharray = json_decode($wpenv->{$columnarray}, true);

                    $msgdata = [];
                    foreach ($wisharray as $row) {
                        [$colname, $table] = $row;
                        if ($table == 'company') {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->value($colname);
                        } else if ($table == 'occasion') {
                            $value = $occasion;
                        } else {
                            $value = DB::table($table)->where('propertyid', $this->propertyid)->where('guestcode', $guestcode)->value($colname);
                        }
                        $mob = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $guestcode)->value('mobile_no');
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend();
                    $sent = $whatsapp->MuzzTech($msgdata, $mob, $msgtype, $templatename);

                    if ($sent !== true) {
                        return response()->json([
                            'success' => false,
                            'message' => 'Something went wrong while sending the WhatsApp wish.'
                        ], 500);
                    }

                    $updated = GuestProf::where('propertyid', $this->propertyid)
                        ->where('guestcode', $guestcode)
                        ->update([
                            $type => 1,
                            'updated_at' => now()
                        ]);

                    if (!$updated) {
                        return response()->json([
                            'success' => false,
                            'message' => 'Wish sent, but guest record could not be updated.'
                        ], 500);
                    }

                    return response()->json([
                        'success' => true,
                        'message' => $msgtype . ' wish sent successfully.'
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => 'WhatsApp wish configuration or guest mobile number is missing.'
                    ], 422);
                }
            }
        } catch (\Throwable $e) {
            return response()->json([
                'success' => false,
                'message' => 'Unable to send wish.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
