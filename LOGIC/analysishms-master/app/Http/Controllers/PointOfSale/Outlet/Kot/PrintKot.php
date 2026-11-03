<?php

namespace App\Http\Controllers\PointOfSale\Outlet\Kot;

use App\Http\Controllers\Controller;
use App\Models\Companyreg;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EnviroPos;
use App\Models\ItemMast;
use App\Models\Kot as KotModal;
use App\Models\KotLog;
use App\Models\PrintingSetup;
use App\Models\RoomMast;
use App\Models\Stock;
use App\Models\Stocklog;
use App\Models\UserPermission;
use App\Models\VoucherPrefix;
use App\Models\VoucherType;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class PrintKot extends Controller
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
            if (! isset(Auth::user()->name)) {
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
    public function sendprintdata(Request $request)
    {
        $logPath = storage_path('logs/debug.log');
        file_put_contents($logPath, date('Y-m-d H:i:s') . " sendprintdata START\n", FILE_APPEND);

        // Log::info('Received sendprintdata request with payload: ' . $request->getContent());

        file_put_contents($logPath, date('Y-m-d H:i:s') . " Log::info executed\n", FILE_APPEND);

        $propertyid = $this->propertyid ?: Auth::user()->propertyid;
        $currenttime = $this->currenttime ?: now()->format('Y-m-d H:i:s');

        $docid = (array) $request->input('docid', []);
        $kottbl = KotModal::where('propertyid', $propertyid)->whereIn('docid', $docid)->first();
        $printedit = $request->input('printedit');


        $enviropos = EnviroPos::where('propertyid', $propertyid)->first();

        if (! empty($kottbl->mergedwith)) {
            if ($printedit == 'Y' && $enviropos->printeditkot == 'All Items') {
                $kot = KotModal::where('propertyid', $propertyid)->where('mergedwith', $kottbl->mergedwith)->get();
            } elseif ($printedit == 'Y' && $enviropos->printeditkot == 'Void Items') {
                $kot = KotModal::where('propertyid', $propertyid)->where('mergedwith', $kottbl->mergedwith)->where('voidyn', 'Y')->get();
            } else {
                $kot = KotModal::where('propertyid', $propertyid)->where('mergedwith', $kottbl->mergedwith)->get();
            }
        } else {
            if ($printedit == 'Y' && $enviropos->printeditkot == 'All Items') {
                $kot = KotModal::where('propertyid', $propertyid)->whereIn('docid', $docid)->get();
            } elseif ($printedit == 'Y' && $enviropos->printeditkot == 'Void Items') {
                $kot = KotModal::where('propertyid', $propertyid)->whereIn('docid', $docid)->where('voidyn', 'Y')->get();
            } else {
                $kot = KotModal::where('propertyid', $propertyid)->whereIn('docid', $docid)->get();
            }
        }

        // Log::info('KOT Records to Print: ' . $kot->toJson());

        if ($kot) {
            try {
                $sn = 1;
                $printingSetupCache = [];
                $psnoMap = [];
                $payload = [
                    'printdata' => [],
                ];
                
                foreach ($kot as $row) {
                    $restcode = $row->restcode;
                    $depart = Depart::where('dcode', $restcode)->first();

                    $itemmast = ItemMast::where('Property_ID', $propertyid)
                        ->where('Code', $row->item)
                        ->where('RestCode', $restcode)
                        ->first();

                    if (!isset($psnoMap[$restcode])) {

                        $allSetups = PrintingSetup::where('propertyid', $propertyid)
                            ->where('module', 'KOT')
                            ->where('restcode', $restcode)
                            ->orderBy('id')
                            ->get();

                        if ($allSetups->isEmpty()) {
                            return response()->json(['message' => 'Printer Path Not Found for restcode ' . $restcode], 500);
                        }

                        $psnoMap[$restcode] = [];
                        $idx = 1;
                        foreach ($allSetups as $setup) {
                            $psnoMap[$restcode][] = [
                                'setup' => $setup,
                                'psno' => $idx,
                                'kitchen' => $setup->kitchen,
                            ];
                            $idx++;
                        }
                    }

                    $kitchenOfItem = $itemmast->Kitchen ?? null;
                    $applicable = array_values(array_filter($psnoMap[$restcode], function ($s) use ($kitchenOfItem) {
                        return $kitchenOfItem !== null && ((string) $s['kitchen'] === (string) $kitchenOfItem);
                    }));

                    if (empty($applicable)) {
                        $applicable = $psnoMap[$restcode];
                    }

                    if (posparameter()->system_based_printing == 'Y') {
                        $usersystemname = UserPermission::where('propertyid', $propertyid)
                            ->where('username', Auth::user()->u_name)
                            ->value('system_name');

                        $applicable = array_values(array_filter($applicable, function ($s) use ($usersystemname) {
                            $printerpath = $s['setup']->printerpath;
                            $pattern = '/\\\\\\\\([^\\\\]+)\\\\/';
                            if (preg_match($pattern, $printerpath, $matches)) {
                                $printerSystemName = $matches[1];

                                return strcasecmp($printerSystemName, $usersystemname) === 0;
                            }

                            return false;
                        }));
                    }
                    // Log::info('User System Name: ' . $usersystemname);
                    // Log::info('Applicable Printing Setups: ' . json_encode($applicable));

                    foreach ($applicable as $a) {
                        $setup = $a['setup'];
                        $psno = $a['psno'];
                        $printerpath = $setup->printerpath;
                        $kitchenToUse = $kitchenOfItem ?? $setup->kitchen;

                        $payload['printdata'][] = [
                            'propertyid' => $propertyid,
                            'docid' => $row->docid,
                            'restaurentname' => $depart->name ?? null,
                            'restcode' => $restcode,
                            'printerpath' => $printerpath,
                            'kitchen' => $kitchenToUse,
                            'itemname' => $itemmast->Name ?? $row->item,
                            'description' => $row->description,
                            'itemsn' => $sn++,
                            'psno' => $psno,
                            'itemprice' => $row->rate,
                            'quantity' => $row->qty,
                            'voidyn' => $row->voidyn,
                            'duplicate' => $printedit,
                        ];
                    }
                }

                $allDocids = $kot->pluck('docid')->toArray();

                // Get kotdetail with proper joins to include NC details and waitername/departname
                $kotdetail = KotModal::select(
                    'kot.*',
                    'server_mast.name as waitername',
                    'depart.name as departname',
                    'nctype_mast.nctype as nctypename'
                )
                    ->leftJoin('depart', 'depart.dcode', '=', 'kot.restcode')
                    ->leftJoin('server_mast', 'server_mast.scode', '=', 'kot.waiter')
                    ->leftJoin('nctype_mast', function ($join) {
                        $join->on('nctype_mast.ncode', '=', 'kot.nctype')
                            ->on('nctype_mast.propertyid', '=', 'kot.propertyid');
                    })
                    ->where('kot.propertyid', $propertyid)
                    ->whereIn('kot.docid', $allDocids)
                    ->first();

                if ($kotdetail) {
                    // Log::info('KOT Detail for Printing: ' . json_encode($kotdetail->toArray()));
                } else {
                    // Log::warning('No KOT Detail found for docids: ' . implode(', ', $allDocids));
                }

                $payload = [
                    'propertyid' => $propertyid,
                    'docid' => $docid,
                    'kotdetail' => $kotdetail ?: [],
                    'printdata' => $payload['printdata'],
                    'enviropos' => $enviropos,
                    'company' => Companyreg::where('propertyid', $propertyid)->first()
                ];

                // Log::info('Payload for PrintEvent: ' . json_encode($payload, JSON_PRETTY_PRINT));

                $targetUsername = Auth::user()->u_name ?? Auth::user()->name ?? '';
                $payload['target_username'] = $targetUsername;

                event(new \App\Events\PrintEvent($payload, $propertyid, $targetUsername));


                return response()->json(['message' => 'Print Successfully, Please Check Your Printer']);
            } catch (Exception $e) {
                return response()->json(['message' => 'Unknown Error Occured: ' . $e->getMessage()], 500);
            }
        }

        return response()->json(['message' => 'No KOT found'], 404);
    }
}
