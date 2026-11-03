<?php

namespace App\Http\Controllers;

use App\Http\Controllers\FrontOffice\RoomStatus;
use App\Services\Channel\UpdateInventory;
use App\Models\Companyreg;
use App\Models\CompServiceFacilities;
use App\Models\FeedbackMaster;
use App\Models\GuestProf;
use App\Models\HkChecklistMast;
use App\Models\HkFloor;
use App\Models\HkLaundryService;
use App\Models\HkMaintenance;
use App\Models\HkService;
use App\Models\HkSupervisor;
use App\Models\HousekeeperMast;
use App\Models\LaundryFtr;
use App\Models\LaundryHdr;
use App\Models\Paycharge;
use App\Models\RoomBlockout;
use App\Models\RoomCat;
// hkQRcode generator
use App\Models\RoomClean;
use App\Models\RoomMast;
use App\Models\States;
use App\Models\Stock;
use App\Models\UpdateLog;
use App\Models\VoucherPrefix;
use App\Services\ImageCompressionService;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\RoundBlockSizeMode;
use Endroid\QrCode\Writer\PngWriter;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\ValidationException;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

use function App\Helpers\getNcurDate;

class HouseKeeping extends Controller
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

    // Warning: Abandon hope, all who enter here. 😱
    public function housekeepingscreen(Request $request)
    {
        $permission = revokeopen(151111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $rooms = DB::table('room_mast')
            ->select(
                'room_mast.rcode as roomno',
                'room_mast.room_stat',
                'room_mast.rest_code',
                'roomocc.roomno as roomnoroomocc',
                'roomocc.type',
                DB::raw("
                CASE
                    WHEN roomocc.roomno IS NOT NULL AND room_mast.room_stat = 'D' THEN 'Occupied Dirty'
                    WHEN roomocc.roomno IS NOT NULL THEN 'Occupied'
                    WHEN room_mast.room_stat = 'D' THEN 'Vacant Dirty'
                    ELSE 'Vacant Clean'
                END AS status
            "),
                DB::raw("
                CASE
                    WHEN roomocc.roomno IS NOT NULL AND room_mast.room_stat = 'D' THEN 'fa-door-closed text-warning'
                    WHEN roomocc.roomno IS NOT NULL THEN 'fa-door-closed text-danger'
                    WHEN room_mast.room_stat = 'D' THEN 'fa-door-open text-warning'
                    ELSE 'fa-door-open text-success'
                END AS ficon
            "),
                'roomblockout.block'
            )
            ->leftJoin('roomocc', function ($join) {
                $join->on('roomocc.roomno', '=', 'room_mast.rcode')
                    ->where('roomocc.propertyid', '=', $this->propertyid)
                    ->whereNull('roomocc.type')
                    ->where('roomocc.chkindate', '<=', $this->ncurdate)
                    ->where(function ($q) {
                        $q->whereNull('roomocc.chkoutdate')
                            ->orWhere('roomocc.chkoutdate', '>', $this->ncurdate);
                    });
            })
            ->leftJoin('roomblockout', function ($join) {
                $join->on('roomblockout.roomcode', '=', 'room_mast.rcode')
                    ->where('roomblockout.type', 'O')
                    ->whereNull('roomblockout.cleardate')
                    ->whereDate('roomblockout.fromdate', '<=', $this->ncurdate)
                    ->whereDate('roomblockout.todate', '>=', $this->ncurdate)
                    ->where('roomblockout.propertyid', $this->propertyid);
            })
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.type', 'RO')
            ->where('room_mast.inclcount', 'Y')
            ->groupBy('room_mast.rcode')
            ->get();

        $totaloccupied = 0;

        foreach ($rooms as $row) {
            if ($row->roomnoroomocc !== null) {
                $totaloccupied++;
            }
        }

        $housekeeper = HousekeeperMast::where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.housekeeping', [
            'rooms' => $rooms,
            'totaloccupied' => $totaloccupied,
            'housekeeper' => $housekeeper,
        ]);
    }

    public function housemaster(Request $request)
    {
        $permission = revokeopen(121512);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = HousekeeperMast::where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.housemaster', ['data' => $data]);
    }

    public function submithousemaster(Request $request)
    {
        $permission = revokeopen(121512);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = $request->except('_token');
        $scode = HousekeeperMast::where('propertyid', $this->propertyid)
            ->max('scode');
        $scode = HousekeeperMast::where('propertyid', $this->propertyid)->max('scode');
        if ($scode === null) {
            $scode = 1;
        } else {
            $scode = intval(substr($scode, 0, -3)) + 1;
        }

        $existingName = HousekeeperMast::where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'House Keeping Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'scode' => $scode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            HousekeeperMast::insert($insertdata);

            return back()->with('success', 'House Keeping Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert House Keeping Master!' . $e->getMessage());
        }
    }

    public function updatehousemaster(Request $request)
    {
        $permission = revokeopen(121512);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $existingName = HousekeeperMast::where('name', $request->input('updatename'))
            ->whereNot('scode', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'House Keeping Master Name Already Exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            HousekeeperMast::where('scode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            // ── Employee Sync ─────────────────────────────────────────────────────
            $empid = HousekeeperMast::where('scode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->value('empid');

            if ($empid) {
                DB::table('employee')
                    ->where('code', $empid)
                    ->where('propertyid', $this->propertyid)
                    ->update([
                        'name' => $request->input('updatename'),
                        'activeyn' => $request->input('upactiveYN') === 'Y' ? 'Y' : 'N',
                        'u_name' => Auth::user()->u_name,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'e',
                    ]);
            }
            // ─────────────────────────────────────────────────────────────────────

            return back()->with('success', 'House Keeping Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deletehousekeepingmaster(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121512);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            // ── Employee Sync before delete ───────────────────────────────────────
            $housekeeper = HousekeeperMast::where('propertyid', $this->propertyid)
                ->where('scode', $ucode)
                ->where('sn', $sn)
                ->first();

            if ($housekeeper && $housekeeper->empid) {
                DB::table('employee')
                    ->where('code', $housekeeper->empid)
                    ->where('propertyid', $this->propertyid)
                    ->update([
                        'activeyn' => 'N',
                        'u_name' => Auth::user()->u_name,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'd',
                    ]);
            }
            // ─────────────────────────────────────────────────────────────────────

            $deletingrec = HousekeeperMast::where('propertyid', $this->propertyid)
                ->where('scode', $ucode)
                ->where('sn', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'House Keeping Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete House Keeping Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function savehousecleaning(Request $request)
    {
        $propertyId = (int) Auth::user()->propertyid;
        $u_name = Auth::user()->u_name;

        if ($request->has('selectedCells')) {

            $selectedCells = $request->input('selectedCells', []);

            if (!is_array($selectedCells) || empty($selectedCells)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'No rooms selected',
                ]);
            }

            $remark = trim($request->input('remark', ''));

            if ($remark === '') {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Unblock remark is required',
                ]);
            }

            try {

                $channelparameter = channelparameter();

                if ($channelparameter && $channelparameter->checkyn == 'Y') {
                    $inventoryDate = $selectedCells[0]['date'];

                    $selectedRoomNumbers = collect($selectedCells)
                        ->pluck('roomno')
                        ->filter()
                        ->unique()
                        ->values();

                    $selectedCategories = collect($selectedCells)
                        ->filter(fn($cell) => !empty($cell['roomno']) && !empty($cell['roomcategory']))
                        ->groupBy('roomcategory');

                    $inventoryUpdates = [];

                    foreach ($selectedCategories as $categoryCode => $cells) {
                        $category = RoomCat::where('propertyid', $this->propertyid)
                            ->where('type', 'RO')
                            ->where('inclcount', 'Y')
                            ->where('cat_code', $categoryCode)
                            ->first();

                        if (!$category || empty($category->map_code)) {
                            continue;
                        }

                        $categoryRoomNumbers = RoomMast::where('propertyid', $this->propertyid)
                            ->where('inclcount', 'Y')
                            ->where('type', 'RO')
                            ->where('room_cat', $categoryCode)
                            ->pluck('rcode');

                        $totalRooms = $categoryRoomNumbers->count();

                        $blockedRoomNumbers = RoomBlockout::where('propertyid', $this->propertyid)
                            ->whereIn('roomcode', $categoryRoomNumbers)
                            ->where('type', 'O')
                            ->whereNull('cleardate')
                            ->whereDate('fromdate', '<=', $inventoryDate)
                            ->whereDate('todate', '>=', $inventoryDate)
                            ->distinct()
                            ->pluck('roomcode');

                        $selectedCategoryRoomNumbers = $cells
                            ->pluck('roomno')
                            ->unique();

                        $remainingBlockedCount = $blockedRoomNumbers
                            ->diff($selectedCategoryRoomNumbers)
                            ->count();

                        $inventoryUpdates[] = [
                            'category' => $category->map_code,
                            'availability' => max(0, $totalRooms - $remainingBlockedCount),
                        ];
                    }

                    if (!empty($inventoryUpdates)) {
                        $inventoryResult = app(UpdateInventory::class)->updateInventory(
                            $inventoryUpdates,
                            $inventoryDate,
                            $inventoryDate,
                            $propertyId,
                            $u_name
                        );
                    }
                }

                DB::beginTransaction();

                $unblockedCount = 0;

                foreach ($selectedCells as $selectedCell) {

                    $roomno = $selectedCell['roomno'] ?? null;

                    if (!$roomno) {
                        continue;
                    }

                    $rblkout = RoomBlockout::where('propertyid', $this->propertyid)
                        ->where('roomcode', $roomno)
                        ->where('type', 'O')
                        ->whereNull('cleardate')
                        ->first();

                    if (!$rblkout) {
                        continue;
                    }

                    $rblkout->updated_at = $this->currenttime;
                    $rblkout->u_ae = 'e';
                    $rblkout->type = 'R';
                    $rblkout->cleardate = $this->ncurdate;
                    $rblkout->cleartime = date('H:i:s');
                    $rblkout->clearuser = Auth::user()->u_name;
                    $rblkout->clearremark = $remark;
                    $rblkout->save();

                    $roommast = RoomMast::where('propertyid', $this->propertyid)
                        ->where('inclcount', 'Y')
                        ->where('type', 'RO')
                        ->where('rcode', $roomno)
                        ->first();

                    if ($roommast) {
                        $roommast->room_stat = 'C';
                        $roommast->updated_at = $this->currenttime;
                        $roommast->save();
                    }

                    $unblockedCount++;
                }

                DB::commit();

                return response()->json([
                    'status' => 'success',
                    'message' => $unblockedCount . ' room(s) unblocked successfully',
                ]);
            } catch (Exception $e) {

                DB::rollBack();

                return response()->json([
                    'status' => 'error',
                    'message' => 'Unknown Error Occured: ' .
                        $e->getMessage() .
                        ' On Line: ' .
                        $e->getLine(),
                ], 500);
            }
        }

        if ($request->has('roomnos')) {

            $roomnos = $request->input('roomnos', []);

            if (!is_array($roomnos)) {
                $roomnos = [$roomnos];
            }

            $roomnos = collect($roomnos)
                ->filter(function ($roomno) {
                    return $roomno !== null && $roomno !== '';
                })
                ->map(function ($roomno) {
                    return $roomno;
                })
                ->unique()
                ->values()
                ->all();

            if (empty($roomnos)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid Roomnos',
                ]);
            }

            if ($request->roomstat !== 'O') {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid Room Stat for bulk room block',
                ]);
            }

            if (empty($request->block)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Block type is required',
                ]);
            }

            if (empty($request->fromdate) || empty($request->todate)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'From date and To date are required',
                ]);
            }

            if ($request->fromdate > $request->todate) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'From date cannot be greater than To date',
                ]);
            }

            try {

                $channelparameter = channelparameter();

                if ($channelparameter && $channelparameter->checkyn == 'Y') {
                    // Fetch selected rooms.
                    $selectedRooms = RoomMast::where('propertyid', $this->propertyid)
                        ->where('inclcount', 'Y')
                        ->where('type', 'RO')
                        ->whereIn('rcode', $roomnos)
                        ->get(['rcode', 'room_cat']);

                    // Ensure all selected rooms exist.
                    if ($selectedRooms->count() !== count($roomnos)) {
                        return response()->json([
                            'status' => 'error',
                            'message' => 'One or more selected rooms were not found.',
                        ], 422);
                    }

                    // Ensure every room has a category.
                    if ($selectedRooms->contains(function ($room) {
                        return empty($room->room_cat);
                    })) {
                        return response()->json([
                            'status' => 'error',
                            'message' => 'A selected room has no room category assigned.',
                        ], 422);
                    }

                    // Count blocked rooms category-wise.
                    $blockedByCategory = $selectedRooms
                        ->groupBy('room_cat')
                        ->map(function ($rooms) {
                            return $rooms->count();
                        });

                    // Fetch active room categories.
                    $categories = RoomCat::where('propertyid', $this->propertyid)
                        ->where('type', 'RO')
                        ->where('inclcount', 'Y')
                        ->whereIn('cat_code', $blockedByCategory->keys())
                        ->get(['cat_code', 'name', 'norooms', 'map_code'])
                        ->keyBy('cat_code');

                    // Calculate inventory for each category.
                    $inventoryUpdates = [];

                    foreach ($blockedByCategory as $categoryCode => $blockedCount) {
                        $category = $categories->get($categoryCode);

                        if (!$category) {
                            return response()->json([
                                'status' => 'error',
                                'message' => "Active room category not found: {$categoryCode}",
                            ], 422);
                        }

                        if (empty($category->map_code)) {
                            return response()->json([
                                'status' => 'error',
                                'message' => "eGlobe map code missing for category: {$category->name}",
                            ], 422);
                        }

                        $inventoryUpdates[] = [
                            'category' => $category->map_code,
                            'blocked_count' => $blockedCount,
                            'availability' => max(
                                0,
                                (int) $category->norooms - $blockedCount
                            ),
                        ];
                    }

                    $inventoryResult = app(UpdateInventory::class)
                        ->updateInventory(
                            $inventoryUpdates,
                            $request->fromdate,
                            $request->todate,
                            $propertyId,
                            $u_name
                        );
                }

                DB::beginTransaction();

                // Log::info('Bulk room block request', [
                //     'roomnos' => $roomnos,
                //     'count' => count($roomnos),
                // ]);

                foreach ($roomnos as $roomno) {

                    $rblkout = new RoomBlockout;
                    $rblkout->propertyid = $this->propertyid;
                    $rblkout->roomcode = $roomno;
                    $rblkout->block = $request->block;
                    $rblkout->reasons = $request->reasons ?? '';
                    $rblkout->fromdate = $request->fromdate;
                    $rblkout->todate = $request->todate;
                    $rblkout->type = 'O';
                    $rblkout->u_name = Auth::user()?->u_name;
                    $rblkout->created_at = $this->currenttime;
                    $rblkout->updated_at = null;
                    $rblkout->u_ae = 'a';
                    $rblkout->vtime = date('H:i:s');
                    $rblkout->guestname = $request->guestname ?? '';
                    $rblkout->mobileno = $request->mobileno ?? '';
                    $rblkout->save();

                    $roommast = RoomMast::where('propertyid', $this->propertyid)
                        ->where('inclcount', 'Y')
                        ->where('type', 'RO')
                        ->where('rcode', $roomno)
                        ->first();

                    if ($roommast) {
                        $roommast->room_stat = 'O';
                        $roommast->updated_at = $this->currenttime;
                        $roommast->save();
                    }
                }

                DB::commit();

                return response()->json([
                    'status' => 'success',
                    'message' => count($roomnos) . ' room(s) blocked successfully',
                ]);
            } catch (Exception $e) {

                DB::rollBack();

                return response()->json([
                    'status' => 'error',
                    'message' => 'Unknown Error Occured: ' .
                        $e->getMessage() .
                        ' On Line: ' .
                        $e->getLine(),
                ], 500);
            }
        }

        if (empty($request->roomno)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Roomno',
            ]);
        }

        try {

            DB::beginTransaction();

            if (in_array($request->roomstat, ['C', 'D'])) {

                $roomclean = new RoomClean;
                $roomclean->propertyid = $this->propertyid;
                $roomclean->hosuekeeper = $request->housekeeper ?? '';
                $roomclean->roomno = $request->roomno;
                $roomclean->remarks = $request->remarks ?? '';
                $roomclean->type = $request->roomstat;
                $roomclean->created_at = $this->currenttime;
                $roomclean->updated_at = null;
                $roomclean->u_ae = 'a';
                $roomclean->save();

                $roommast = RoomMast::where('propertyid', $this->propertyid)
                    ->where('inclcount', 'Y')
                    ->where('type', 'RO')
                    ->where('rcode', $request->roomno)
                    ->first();

                $roommast->room_stat = $request->roomstat;
                $roommast->updated_at = $this->currenttime;
                $roommast->save();

                DB::commit();

                return response()->json([
                    'status' => 'success',
                    'message' => 'Room Updated successfully Type: ' . $request->roomstat,
                ]);
            } elseif (in_array($request->roomstat, ['O'])) {

                $rblkout = new RoomBlockout;
                $rblkout->propertyid = $this->propertyid;
                $rblkout->roomcode = $request->roomno;
                $rblkout->block = $request->block;
                $rblkout->reasons = $request->reasons;
                $rblkout->fromdate = $request->fromdate;
                $rblkout->todate = $request->todate;
                $rblkout->type = $request->roomstat;
                $rblkout->u_name = Auth::user()?->u_name;
                $rblkout->created_at = $this->currenttime;
                $rblkout->updated_at = null;
                $rblkout->u_ae = 'a';
                $rblkout->vtime = date('H:i:s');
                $rblkout->guestname = $request->guestname ?? '';
                $rblkout->mobileno = $request->mobileno ?? '';
                $rblkout->save();

                $roommast = RoomMast::where('propertyid', $this->propertyid)
                    ->where('inclcount', 'Y')
                    ->where('type', 'RO')
                    ->where('rcode', $request->roomno)
                    ->first();

                $roommast->room_stat = $request->roomstat;
                $roommast->updated_at = $this->currenttime;
                $roommast->save();

                DB::commit();

                return response()->json([
                    'status' => 'success',
                    'message' => 'Room Updated successfully Type: ' . $request->roomstat,
                ]);
            } elseif (in_array($request->roomstat, ['R'])) {

                $rblkout = RoomBlockout::where('propertyid', $this->propertyid)
                    ->where('roomcode', $request->roomno)
                    ->where('type', 'O')
                    ->whereNull('cleardate')
                    ->first();

                $rblkout->updated_at = $this->currenttime;
                $rblkout->u_ae = 'e';
                $rblkout->type = $request->roomstat;
                $rblkout->cleardate = $this->ncurdate;
                $rblkout->cleartime = date('H:i:s');
                $rblkout->clearuser = Auth::user()->u_name;
                $rblkout->clearremark = $request->clearremark;
                $rblkout->save();

                $roommast = RoomMast::where('propertyid', $this->propertyid)
                    ->where('inclcount', 'Y')
                    ->where('type', 'RO')
                    ->where('rcode', $request->roomno)
                    ->first();

                $roommast->room_stat = 'C';
                $roommast->updated_at = $this->currenttime;
                $roommast->save();

                DB::commit();

                return response()->json([
                    'status' => 'success',
                    'message' => 'Room Updated successfully Type: ' . $request->roomstat,
                ]);
            } else {

                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid Room Stat: ' . $request->roomstat,
                ]);
            }
        } catch (Exception $e) {

            DB::rollBack();

            return response()->json([
                'status' => 'error',
                'message' => 'Unknown Error Occured: ' .
                    $e->getMessage() .
                    ' On Line: ' .
                    $e->getLine(),
            ], 500);
        }
    }

    public function updatelogform()
    {
        $mainMenus = DB::table('tbl_usermodule')
            ->where('flag', 'N')
            ->where('opt2', 0)
            ->select('module', 'module_name', 'opt1', 'opt2', 'opt3')
            ->distinct() // Ensure unique entries
            ->get();

        $data = UpdateLog::orderBy('created_at', 'DESC')->get();

        return view('admin.updatelogform', compact('data', 'mainMenus'));
    }

    public function submitupdatelogform(Request $request)
    {

        try {
            $uplog = new UpdateLog;
            $uplog->mainmenu = $request->mainmenu;
            $uplog->submenu = $request->submenu;
            $uplog->pagename = $request->pagename;
            $uplog->summary = $request->summary;
            $uplog->created_at = $this->currenttime;
            $uplog->save();

            return back()->with('success', 'Update Log Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Update Log: ' . $e->getMessage(), 500);
        }
    }

    public function submenufetch(Request $request)
    {
        $opt1 = $request->opt1;
        $opt3 = $request->opt3;

        $submenus = DB::table('tbl_usermodule')
            ->where('opt1', $opt1)
            ->whereNot('opt2', '0')
            ->where('opt3', $opt3)
            ->get();

        return response()->json($submenus);
    }

    public function pagenamefetch(Request $request)
    {
        $opt1 = $request->opt1;
        $opt2 = $request->opt2;

        $pages = DB::table('tbl_usermodule')
            ->where('opt1', $opt1)
            ->where('opt2', $opt2)
            ->whereNot('opt3', '0')
            ->get();

        return response()->json($pages);
    }

    public function deleteupdatelog(Request $request)
    {
        $sn = base64_decode($request->sn);
        if (! $sn) {
            return back()->with('error', 'SN is missing or undefined!');
        }

        Log::info('Trying to delete record with sn: ' . $sn);
        $record = UpdateLog::where('sn', $sn)->first();

        if ($record) {
            $record->delete();

            return back()->with('success', "Record with sn: $sn deleted successfully!");
        }

        return back()->with('error', 'Record not found.');
    }

    // ─── Supervisor Master ────────────────────────────────────────────────────────

    public function hksupervisor()
    {
        $data = HkSupervisor::where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')
            ->get();

        return view('property.housekeeping.hksupervisor', compact('data'));
    }

    public function submithksupervisor(Request $request)
    {
        if (HkSupervisor::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Supervisor name already exists!']);
        }

        $last = HkSupervisor::where('propertyid', $this->propertyid)->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            HkSupervisor::create([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'empcode' => '',
                'activeyn' => $request->activeyn ?? 1,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Supervisor saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updatehksupervisor(Request $request)
    {
        if (HkSupervisor::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('sn', '!=', $request->sn)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Supervisor name already exists!']);
        }

        try {
            HkSupervisor::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper($request->name),
                    'activeyn' => $request->activeyn,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            // ── Employee Sync ─────────────────────────────────────────────────────
            $empcode = HkSupervisor::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->value('empcode');

            if ($empcode) {
                DB::table('employee')
                    ->where('code', $empcode)
                    ->where('propertyid', $this->propertyid)
                    ->update([
                        'name' => strtoupper($request->name),
                        'activeyn' => $request->activeyn == 1 ? 'Y' : 'N',
                        'u_name' => Auth::user()->u_name,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'e',
                    ]);
            }
            // ─────────────────────────────────────────────────────────────────────

            return response()->json(['success' => true, 'message' => 'Supervisor updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deletehksupervisor(Request $request)
    {
        try {
            $supervisor = HkSupervisor::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->first();

            if ($supervisor && $supervisor->empcode) {
                // ── Employee Sync ─────────────────────────────────────────────────
                DB::table('employee')
                    ->where('code', $supervisor->empcode)
                    ->where('propertyid', $this->propertyid)
                    ->update([
                        'activeyn' => 'N',
                        'u_name' => Auth::user()->u_name,
                        'updated_at' => $this->currenttime,
                        'u_ae' => 'd',
                    ]);
                // ─────────────────────────────────────────────────────────────────
            }

            HkSupervisor::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Supervisor deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ─── Cleaning Type CRUD ───────────────────────────────────────────────────────

    public function cleaningtype()
    {
        $data = DB::table('hkcleaningtype')
            ->where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')
            ->get();

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.housekeeping.cleaningtype', compact('data', 'departments'));
    }

    public function submitcleaningtype(Request $request)
    {
        if (DB::table('hkcleaningtype')
            ->where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Cleaning Type name already exists!']);
        }

        $last = DB::table('hkcleaningtype')->where('propertyid', $this->propertyid)->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            DB::table('hkcleaningtype')->insert([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'esttime' => $request->esttime ?: null,
                'dcode' => $request->dcode ?: null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Cleaning Type saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updatecleaningtype(Request $request)
    {
        if (DB::table('hkcleaningtype')
            ->where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('sn', '!=', $request->sn)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Cleaning Type name already exists!']);
        }

        try {
            DB::table('hkcleaningtype')
                ->where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper($request->name),
                    'esttime' => $request->esttime ?: null,
                    'dcode' => $request->dcode ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Cleaning Type updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deletecleaningtype(Request $request)
    {
        try {
            DB::table('hkcleaningtype')
                ->where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Cleaning Type deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ─── Cleaning Type Load (Inconsistency) ──────────────────────────────────────

    public function cleaningtypeloadup()
    {
        $path = storage_path('app/public/hkcleaning.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $jsonData = json_decode(file_get_contents($path), true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            $exists = DB::table('hkcleaningtype')
                ->where('propertyid', $propertyid)
                ->where('name', $name)
                ->exists();

            if ($exists) {
                $skipped[] = $name;

                continue;
            }

            // Auto-generate code: propertyid + increment
            $last = DB::table('hkcleaningtype')->where('propertyid', $propertyid)->orderBy('id', 'desc')->value('code');
            $increment = $last ? (intval(substr($last, strlen((string) $propertyid))) + 1) : 1;
            $code = $propertyid . $increment;

            DB::table('hkcleaningtype')->insert([
                'propertyid' => $propertyid,
                'code' => $code,
                'name' => $name,
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' Cleaning Type(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json(['message' => 'All Cleaning Types already exist! ' . count($skipped) . ' Skipped.'], 500);
    }

    // ─── Floor Master ────────────────────────────────────────────────────────────

    public function floormaster()
    {
        $data = HkFloor::where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')
            ->get();

        return view('property.housekeeping.floormaster', compact('data'));
    }

    public function submitfloormaster(Request $request)
    {
        if (HkFloor::where('propertyid', $this->propertyid)->where('name', strtoupper($request->name))->exists()) {
            return response()->json(['success' => false, 'message' => 'Floor name already exists!']);
        }

        // Auto-generate code: propertyid + increment  e.g. 1031, 1032, 1033
        $last = HkFloor::where('propertyid', $this->propertyid)->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            $floor = HkFloor::create([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'superviser' => strtoupper($request->superviser ?? ''),
                'isactive' => 1,
                'u_name' => Auth::user()->u_name,
            ]);

            return response()->json(['success' => true, 'message' => 'Floor Master saved successfully!', 'data' => $floor]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updatefloormaster(Request $request)
    {
        if (HkFloor::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('id', '!=', $request->id)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Floor name already exists!']);
        }

        try {
            $floor = HkFloor::where('id', $request->id)->where('propertyid', $this->propertyid)->firstOrFail();
            $floor->update([
                'name' => strtoupper($request->name),
                'superviser' => strtoupper($request->superviser ?? ''),
                'u_name' => Auth::user()->u_name,
            ]);

            return response()->json(['success' => true, 'message' => 'Floor Master updated successfully!', 'data' => $floor]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deletefloormaster(Request $request)
    {
        try {
            $floor = HkFloor::where('id', $request->id)->where('propertyid', $this->propertyid)->firstOrFail();
            $floor->delete();

            return response()->json(['success' => true, 'message' => 'Floor Master deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ─── Floor Load Up (Inconsistency Import) ────────────────────────────────────

    public function floorloadup()
    {
        $path = storage_path('app/public/hkfloors.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        // Strip UTF-8 BOM if present, then parse
        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            $exists = HkFloor::where('propertyid', $propertyid)
                ->where('name', $name)
                ->exists();

            if ($exists) {
                $skipped[] = $name;

                continue;
            }

            // Auto-generate code: propertyid + increment
            $last = HkFloor::where('propertyid', $propertyid)->orderBy('id', 'desc')->value('code');
            $increment = $last ? (intval(substr($last, strlen((string) $propertyid))) + 1) : 1;
            $code = $propertyid . $increment;

            HkFloor::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'name' => $name,
                'u_name' => $u_name,
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' Floor(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json(['message' => 'All Floors already exist! ' . count($skipped) . ' Skipped.'], 500);
    }

    // ─── Checklist Load Up (Inconsistency Import) ────────────────────────────────

    public function checklistloadup()
    {
        $path = storage_path('app/public/hkchecklist.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        // sno = simple row count increment (1, 2, 3 ...)
        $lastSno = HkChecklistMast::where('propertyid', $propertyid)->max('sno') ?? 0;

        // code = propertyid + increment (e.g. 1031, 1032 ...)
        $lastCodeRaw = HkChecklistMast::where('propertyid', $propertyid)->max('code') ?? 0;
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            if (HkChecklistMast::where('propertyid', $propertyid)->where('name', $name)->exists()) {
                $skipped[] = $name;

                continue;
            }

            $lastSno++;
            $lastCode++;
            $code = intval($propertyid . $lastCode); // e.g. 1031, 1032 ...

            HkChecklistMast::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'sno' => $lastSno,
                'name' => $name,
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' Checklist Item(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json(['message' => 'All Checklist Items already exist! ' . count($skipped) . ' Skipped.'], 500);
    }

    // ─────────────────────────────────────────────────────────────────────────────

    // ─── Feedback Master Load Up (Inconsistency Import) ──────────────────────────

    public function feedbackloadup()
    {
        $path = storage_path('app/public/hkfeedback.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $insertedCount = 0;
        $skipped = [];

        // questioncode = propertyid + increment (e.g. 1031, 1032 ...)
        $lastCodeRaw = FeedbackMaster::where('propertyid', $propertyid)->max('questioncode') ?? 0;
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        $lastOrder = FeedbackMaster::where('propertyid', $propertyid)->max('displayorder') ?? 0;

        foreach ($jsonData as $item) {
            $question = trim($item['Question']);
            $order = intval($item['DisplayOrder'] ?? 0);

            if (FeedbackMaster::where('propertyid', $propertyid)
                ->where('question', $question)
                ->exists()
            ) {
                $skipped[] = $question;

                continue;
            }

            $lastCode++;
            $lastOrder++;
            $questionCode = (string) ($propertyid . $lastCode);

            FeedbackMaster::create([
                'propertyid' => $propertyid,
                'questioncode' => $questionCode,
                'question' => $question,
                'displayorder' => $order ?: $lastOrder,
                'isactive' => 1,
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' Feedback Question(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json(['message' => 'All Feedback Questions already exist! ' . count($skipped) . ' Skipped.'], 500);
    }
    // ─── Lost & Found ────────────────────────────────────────────────────────────

    public function lostfoundform(Request $request)
    {
        $propertyId = $this->propertyid;
        date_default_timezone_set('Asia/Kolkata');

        // Tag No generated from vno — no separate tagno column needed
        $lastVno = DB::table('lostfound')->where('propertyid', $propertyId)->max('vno') ?? 0;
        $nextVno = $lastVno + 1;
        $tagNo = 'LF-' . str_pad($nextVno, 2, '0', STR_PAD_LEFT);

        // Employees (housekeepers) for Found By dropdown
        $employees = DB::table('housekeeparmast')
            ->where('propertyid', $propertyId)
            ->where('activeYN', 'Y')
            ->orderBy('name')
            ->get(['id', 'name']);

        // Paginated items for the table below the form (full list merged)
        $items = DB::table('lostfound')
            ->where('propertyid', $propertyId)
            ->orderByDesc('id')
            ->paginate(20);

        // Pre-fill roomno if coming from startcleaning page via ?roomno= param
        $preRoomno = $request->query('roomno', '');

        return view('property.housekeeping.lostfound', [
            'tagNo' => $tagNo,
            'asOnDate' => $this->ncurdate,
            'currentTime' => date('h:i A'),
            'employees' => $employees,
            'items' => $items,
            'preRoomno' => $preRoomno,
        ]);
    }

    public function storelostfound(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            date_default_timezone_set('Asia/Kolkata');

            // Parse found date DD-MM-YYYY → Y-m-d
            $foundDate = $this->ncurdate;
            if ($request->filled('founddate')) {
                try {
                    $foundDate = Carbon::createFromFormat('d-m-Y', $request->founddate)->format('Y-m-d');
                } catch (Exception $e) {
                    $foundDate = $this->ncurdate;
                }
            }

            // vno: next sequential per property
            $lastVno = DB::table('lostfound')->where('propertyid', $propertyId)->max('vno') ?? 0;
            $vno = $lastVno + 1;

            // itemcondition: production enum only allows Excellent,Good,Fair,Damaged
            $validConditions = ['Excellent', 'Good', 'Fair', 'Damaged'];
            $condition = $request->input('itemcondition');
            $itemcondition = in_array($condition, $validConditions) ? $condition : null;

            // foundlocation: varchar(15) — truncate to 15 chars
            $foundlocation = mb_substr($request->input('foundlocation', ''), 0, 15) ?: null;

            // storagelocation: varchar(15)
            $storagelocation = mb_substr($request->input('storagelocation', ''), 0, 15) ?: null;

            // itemcategory: varchar(20)
            $itemcategory = mb_substr($request->input('itemcategory', ''), 0, 20) ?: null;

            DB::table('lostfound')->insert([
                'propertyid' => $propertyId,
                'vno' => $vno,
                'vdate' => $this->ncurdate,
                'founddate' => $foundDate,
                'foundtime' => $request->input('foundtime') ?: null,
                'roomno' => mb_substr($request->input('roomno', ''), 0, 20) ?: null,
                'itemcategory' => $itemcategory,
                'itemname' => mb_substr($request->input('itemname', ''), 0, 25) ?: null,
                'brandname' => mb_substr($request->input('brandname', ''), 0, 25) ?: null,
                'color' => mb_substr($request->input('color', ''), 0, 15) ?: null,
                'quantity' => $request->input('quantity', 1) ?: 1,
                'perishable' => mb_substr($request->input('Perishable', 'No'), 0, 3),
                'itemcondition' => $itemcondition,
                'foundlocation' => $foundlocation,
                'description' => mb_substr($request->input('description', ''), 0, 30) ?: null,
                'foundby' => $request->input('foundby') ?: null,
                'storagelocation' => $storagelocation,
                'estimatedvalue' => $request->input('estimatedvalue') ?: null,
                'status' => 'Found',
                'remarks' => mb_substr($request->input('remarks', ''), 0, 30) ?: null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
                'claimby' => '',
                'claimmoblieno' => '',
                'claimemail' => '',
                'handoverto' => '',
                'handoverdate' => '',
                'receivedby' => '',
                'claimremark' => '',
                'couiername' => '',
                'couierdocno' => '',
            ]);

            // Tag no for response (display only — no DB column)
            $tagNo = 'LF-' . str_pad($vno, 2, '0', STR_PAD_LEFT);
            $newTagNo = 'LF-' . str_pad($vno + 1, 2, '0', STR_PAD_LEFT);

            return response()->json([
                'success' => true,
                'message' => 'Lost & Found entry saved successfully!',
                'tagno' => $tagNo,
                'new_tagno' => $newTagNo,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Unable to save: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function lostfoundlist(Request $request)
    {
        // Merged into lostfound page — redirect
        return redirect()->route('lostfoundform');
    }

    public function editlostfound($id)
    {
        $propertyId = $this->propertyid;
        $item = DB::table('lostfound')
            ->where('propertyid', $propertyId)
            ->where('sn', $id)
            ->first();

        // if (! $item) {
        //     return response()->json(['success' => false, 'message' => 'Record not found.']);
        // }
        if (! $item) {
            return response()->json(['success' => false, 'message' => 'Record not found.']);
        }

        // Email — optional, but agar bhara hai toh valid hona chahiye
        $email = trim($request->input('email', ''));
        if ($email !== '' && ! filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return response()->json(['success' => false, 'message' => 'Enter a valid email address.']);
        }

        return response()->json([
            'success' => true,
            'data' => $item,
        ]);
    }

    public function updatelostfound(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $id = $request->input('id');

            $item = DB::table('lostfound')
                ->where('propertyid', $propertyId)
                ->where('sn', $id)
                ->first();

            if (! $item) {
                return response()->json(['success' => false, 'message' => 'Record not found.']);
            }

            // status: production enum values.
            // If the user explicitly changed the status, honor it;
            // otherwise keep the old auto behavior (Found + handoverto → HandedOver).
            $validStatuses = ['Found', 'Stored', 'Claimed', 'HandedOver', 'Courier', 'Disposed'];
            $status = $request->input('status');
            if (in_array($status, $validStatuses) && $status !== $item->status) {
                $newStatus = $status;
            } elseif ($item->status === 'Found' && $request->input('handoverto')) {
                $newStatus = 'HandedOver';
            } else {
                $newStatus = $item->status;
            }

            DB::table('lostfound')
                ->where('propertyid', $propertyId)
                ->where('sn', $id)
                ->update([
                    // Status (dropdown in edit modal)
                    'status' => $newStatus,
                    // Claim info
                    'claimby' => mb_substr($request->input('guestname', ''), 0, 50) ?: '',
                    'claimmoblieno' => mb_substr($request->input('mobileno', ''), 0, 15) ?: '',
                    'claimemail' => mb_substr($request->input('email', ''), 0, 60) ?: '',
                    'claimremark' => mb_substr($request->input('claim_remarks', ''), 0, 100) ?: '',
                    'handoverto' => mb_substr($request->input('handoverto', ''), 0, 20) ?: null,
                    'handoverdate' => $this->parseHandoverDate($request->input('handoverdt')),
                    'receivedby' => mb_substr($request->input('receivedby', ''), 0, 50) ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json([
                'success' => true,
                'message' => 'Lost & Found record updated successfully!',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Unable to update: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Update the basic entry fields (Found status items — not claim info)
     */
    public function updatelostfoundentry(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $id = $request->input('id');

            $item = DB::table('lostfound')
                ->where('propertyid', $propertyId)
                ->where('sn', $id)
                ->first();

            if (! $item) {
                return response()->json(['success' => false, 'message' => 'Record not found.']);
            }

            // Parse found date (DD-MM-YYYY)
            $foundDate = null;
            $rawDate = $request->input('founddate', '');
            if ($rawDate) {
                try {
                    $foundDate = Carbon::createFromFormat('d-m-Y', trim($rawDate))->format('Y-m-d');
                } catch (Exception $e) {
                    $foundDate = $item->founddate;
                }
            }

            // Found By — store as-is (sn or plain text name)
            $foundBy = mb_substr($request->input('foundby', ''), 0, 50) ?: $item->foundby;

            DB::table('lostfound')
                ->where('propertyid', $propertyId)
                ->where('sn', $id)
                ->update([
                    'founddate' => $foundDate ?: $item->founddate,
                    'foundtime' => mb_substr($request->input('foundtime', ''), 0, 8) ?: $item->foundtime,
                    'roomno' => mb_substr($request->input('roomno', ''), 0, 20) ?: null,
                    'foundlocation' => mb_substr($request->input('foundlocation', ''), 0, 15) ?: $item->foundlocation,
                    'foundby' => $foundBy,
                    'itemcategory' => mb_substr($request->input('itemcategory', ''), 0, 20) ?: $item->itemcategory,
                    'itemname' => mb_substr($request->input('itemname', ''), 0, 25) ?: $item->itemname,
                    'brandname' => mb_substr($request->input('brandname', ''), 0, 25) ?: null,
                    'color' => mb_substr($request->input('color', ''), 0, 15) ?: null,
                    'quantity' => $request->input('quantity', 1),
                    'perishable' => mb_substr($request->input('Perishable', 'No'), 0, 3),
                    'itemcondition' => in_array($request->input('itemcondition'), ['Excellent', 'Good', 'Fair', 'Damaged'])
                        ? $request->input('itemcondition')
                        : $item->itemcondition,
                    'description' => mb_substr($request->input('description', ''), 0, 30) ?: null,
                    'estimatedvalue' => $request->input('estimatedvalue') ?: null,
                    'storagelocation' => mb_substr($request->input('storagelocation', ''), 0, 15) ?: null,
                    'remarks' => mb_substr($request->input('remarks', ''), 0, 30) ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json([
                'success' => true,
                'message' => 'Entry updated successfully!',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Unable to update entry: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Parse handover date from blade (DD-MM-YYYY or DD-MM-YYYY HH:MM)
     * into MySQL datetime format (YYYY-MM-DD HH:MM:SS)
     */
    private function parseHandoverDate(?string $raw): ?string
    {
        if (empty($raw)) {
            return null;
        }
        $raw = trim($raw);
        // Try DD-MM-YYYY HH:MM  e.g. "05-08-2026 14:30"
        try {
            return Carbon::createFromFormat('d-m-Y H:i', $raw)->format('Y-m-d H:i:s');
        } catch (Exception $e) {
        }
        // Try DD-MM-YYYY only  e.g. "05-08-2026"
        try {
            return Carbon::createFromFormat('d-m-Y', $raw)->format('Y-m-d') . ' 00:00:00';
        } catch (Exception $e) {
        }

        return null;
    }

    public function printlostfound($id)
    {
        $propertyId = $this->propertyid;
        $company = Companyreg::where('propertyid', $propertyId)->first();

        $item = DB::table('lostfound')
            ->where('propertyid', $propertyId)
            ->where('sn', $id)
            ->first();

        if (! $item) {
            return redirect()->back()->with('error', 'Record not found.');
        }

        $foundByName = '';
        if ($item->foundby) {
            $foundByEmp = DB::table('housekeeparmast')
                ->where('propertyid', $propertyId)
                ->where('sn', $item->foundby)
                ->value('name');
            // Text-mode Found By (non-room locations) ho toh raw text dikhao
            $foundByName = $foundByEmp ?: $item->foundby;
        }

        $tagNo = 'LF-' . str_pad($item->vno, 2, '0', STR_PAD_LEFT);

        $pdf = Pdf::loadView('property.print.lostfoundprint', [
            'item' => $item,
            'company' => $company,
            'tagNo' => $tagNo,
            'foundByName' => $foundByName,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('lost-found-' . $tagNo . '.pdf');
    }

    public function housekeepingreport()
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        return view('property.housekeepingreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,

        ]);
    }

    // ─── Housekeeping Report — Print (DomPDF) ────────────────────────────────────

    public function printhousekeepingreport(Request $request)
    {
        $status = $request->query('status', 'All');
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

        $allrooms = DB::table('room_mast as RM')
            ->join('room_cat as RC', function ($join) {
                $join->on('RM.room_cat', '=', 'RC.cat_code')
                    ->on('RM.type', '=', 'RC.type');
            })
            ->select('RM.rcode as ROOMNO', 'RC.Name as RoomCatName')
            ->where([['RM.Type', 'RO'], ['RM.InclCount', 'Y'], ['RM.propertyid', $this->propertyid]])
            ->orderBy('RM.rcode')
            ->get();

        $occupiedRooms = DB::table('room_mast as RM')
            ->select([
                'RM.rcode as ROOMNO',
                'RC.name as RoomCatName',
                'RO.foliono',
                'RO.sno1',
                'RO.docid',
                'RO.chkindate',
                'RO.depdate',
                'RO.adult',
                'RO.children as Child',
                'PL.name as PlanName',
                'RO.roomrate',
                'RO.planamt',
                'GF.name AS GuestName',
                'B.bookedby',
                'BS.name AS MarketSeg',
                'S.name AS CompanyName',
            ])
            ->join('room_cat as RC', function ($join) {
                $join->on('RM.room_cat', '=', 'RC.cat_code')
                    ->on('RM.type', '=', 'RC.type')
                    ->where('RC.propertyid', $this->propertyid);
            })
            ->join('roomocc as RO', function ($join) {
                $join->on('RM.rcode', '=', 'RO.roomno')
                    ->where('RO.propertyid', $this->propertyid)
                    ->whereNull('RO.chkoutdate');
            })
            ->leftJoin('guestfolio as GF', function ($join) {
                $join->on('RO.foliono', '=', 'GF.folio_no')
                    ->where('GF.propertyid', $this->propertyid);
            })
            ->leftJoin('booking as B', 'B.DocId', '=', 'GF.bookingdocid')
            ->leftJoin('busssource as BS', function ($join) {
                $join->on('GF.busssource', '=', 'BS.bcode')
                    ->where('BS.propertyid', $this->propertyid);
            })
            ->leftJoin('subgroup as S', function ($join) {
                $join->on('GF.company', '=', 'S.sub_code')
                    ->where('S.propertyid', $this->propertyid);
            })
            ->leftJoin('plan_mast as PL', function ($join) {
                $join->on('RO.plancode', '=', 'PL.pcode')
                    ->where('PL.propertyid', $this->propertyid);
            })
            ->where([['RM.type', 'RO'], ['RM.inclcount', 'Y'], ['RM.propertyid', $this->propertyid]])
            ->groupBy([
                'RM.rcode',
                'RC.name',
                'RO.foliono',
                'RO.sno1',
                'RO.docid',
                'RO.chkindate',
                'RO.depdate',
                'RO.adult',
                'RO.children',
                'PL.name',
                'RO.roomrate',
                'RO.planamt',
                'GF.name',
                'B.bookedby',
                'BS.name',
                'S.name',
            ])
            ->orderBy('RO.roomno')
            ->orderBy('RM.rcode')
            ->get();

        foreach ($occupiedRooms as $row) {
            $docid = $row->docid ?? '';
            $sno1 = $row->sno1 ?? '';
            $row->Advance = Paycharge::select(DB::raw('SUM(amtcr) as Advance'))
                ->where([['folionodocid', '=', $docid], ['sno1', '=', $sno1]])
                ->value('Advance') ?? 0;
            $row->balanceamt = Paycharge::select(DB::raw('SUM(amtdr) - SUM(amtcr) as balanceamt'))
                ->where([['folionodocid', '=', $docid], ['sno1', '=', $sno1]])
                ->value('balanceamt') ?? 0;
        }

        $reportData = $this->buildHousekeepingData($allrooms, $occupiedRooms, $status);

        $pdf = Pdf::loadView('property.print.housekeepingreportprint', [
            'company' => $company,
            'statename' => $statename,
            'reportData' => $reportData,
            'status' => $status,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('housekeeping-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Housekeeping Report — Export Excel (PhpSpreadsheet) ──────────────────────

    public function exporthousekeepingreport(Request $request)
    {
        try {
            $status = $request->query('status', 'All');
            $company = Companyreg::where('propertyid', $this->propertyid)->first();
            $statename = States::where('propertyid', $this->propertyid)->where('state_code', $company->state_code)->value('name');

            $allrooms = DB::table('room_mast as RM')
                ->join('room_cat as RC', function ($join) {
                    $join->on('RM.room_cat', '=', 'RC.cat_code')
                        ->on('RM.type', '=', 'RC.type');
                })
                ->select('RM.rcode as ROOMNO', 'RC.Name as RoomCatName')
                ->where([['RM.Type', 'RO'], ['RM.InclCount', 'Y'], ['RM.propertyid', $this->propertyid]])
                ->orderBy('RM.rcode')
                ->get();

            $occupiedRooms = DB::table('room_mast as RM')
                ->select([
                    'RM.rcode as ROOMNO',
                    'RC.name as RoomCatName',
                    'RO.foliono',
                    'RO.sno1',
                    'RO.docid',
                    'RO.chkindate',
                    'RO.depdate',
                    'RO.adult',
                    'RO.children as Child',
                    'PL.name as PlanName',
                    'RO.roomrate',
                    'RO.planamt',
                    'GF.name AS GuestName',
                    'B.bookedby',
                    'BS.name AS MarketSeg',
                    'S.name AS CompanyName',
                ])
                ->join('room_cat as RC', function ($join) {
                    $join->on('RM.room_cat', '=', 'RC.cat_code')
                        ->on('RM.type', '=', 'RC.type')
                        ->where('RC.propertyid', $this->propertyid);
                })
                ->join('roomocc as RO', function ($join) {
                    $join->on('RM.rcode', '=', 'RO.roomno')
                        ->where('RO.propertyid', $this->propertyid)
                        ->whereNull('RO.chkoutdate');
                })
                ->leftJoin('guestfolio as GF', function ($join) {
                    $join->on('RO.foliono', '=', 'GF.folio_no')
                        ->where('GF.propertyid', $this->propertyid);
                })
                ->leftJoin('booking as B', 'B.DocId', '=', 'GF.bookingdocid')
                ->leftJoin('busssource as BS', function ($join) {
                    $join->on('GF.busssource', '=', 'BS.bcode')
                        ->where('BS.propertyid', $this->propertyid);
                })
                ->leftJoin('subgroup as S', function ($join) {
                    $join->on('GF.company', '=', 'S.sub_code')
                        ->where('S.propertyid', $this->propertyid);
                })
                ->leftJoin('plan_mast as PL', function ($join) {
                    $join->on('RO.plancode', '=', 'PL.pcode')
                        ->where('PL.propertyid', $this->propertyid);
                })
                ->where([['RM.type', 'RO'], ['RM.inclcount', 'Y'], ['RM.propertyid', $this->propertyid]])
                ->groupBy([
                    'RM.rcode',
                    'RC.name',
                    'RO.foliono',
                    'RO.sno1',
                    'RO.docid',
                    'RO.chkindate',
                    'RO.depdate',
                    'RO.adult',
                    'RO.children',
                    'PL.name',
                    'RO.roomrate',
                    'RO.planamt',
                    'GF.name',
                    'B.bookedby',
                    'BS.name',
                    'S.name',
                ])
                ->orderBy('RO.roomno')
                ->orderBy('RM.rcode')
                ->get();

            foreach ($occupiedRooms as $row) {
                $docid = $row->docid ?? '';
                $sno1 = $row->sno1 ?? '';
                $row->Advance = Paycharge::select(DB::raw('SUM(amtcr) as Advance'))
                    ->where([['folionodocid', '=', $docid], ['sno1', '=', $sno1]])
                    ->value('Advance') ?? 0;
                $row->balanceamt = Paycharge::select(DB::raw('SUM(amtdr) - SUM(amtcr) as balanceamt'))
                    ->where([['folionodocid', '=', $docid], ['sno1', '=', $sno1]])
                    ->value('balanceamt') ?? 0;
            }

            $reportData = $this->buildHousekeepingData($allrooms, $occupiedRooms, $status);

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Housekeeping Report');

            $lastCol = 'O';

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Address
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', trim(($company->address1 ?? '') . ' ' . ($statename ?? '') . ' - ' . ($company->city ?? '') . ' - ' . ($company->pin ?? '')));
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Report Title
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'Housekeeping Report — Status: ' . $status);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Headers
            $headers = ['#', 'Room No', 'Type', 'Folio No', 'Guest Name', 'Arrival', 'Departure', 'Adult/Child', 'Plan', 'Room Rate', 'Plan Amt', 'Advance', 'Balance', 'Booked By', 'MKT Segment', 'Company'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':P' . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($reportData as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row['rm_no']);
                $sheet->setCellValue('C' . $currentRow, $row['type']);
                $sheet->setCellValue('D' . $currentRow, $row['foliono']);
                $sheet->setCellValue('E' . $currentRow, $row['guestname']);
                $sheet->setCellValue('F' . $currentRow, $row['arrival']);
                $sheet->setCellValue('G' . $currentRow, $row['dep']);
                $sheet->setCellValue('H' . $currentRow, $row['person']);
                $sheet->setCellValue('I' . $currentRow, $row['planname']);
                $sheet->setCellValue('J' . $currentRow, $row['rate'] !== '' ? (float) $row['rate'] : '');
                $sheet->setCellValue('K' . $currentRow, $row['planamt'] !== '' ? (float) $row['planamt'] : '');
                $sheet->setCellValue('L' . $currentRow, $row['advance'] !== '' ? (float) $row['advance'] : '');
                $sheet->setCellValue('M' . $currentRow, $row['balance'] !== '' ? (float) $row['balance'] : '');
                $sheet->setCellValue('N' . $currentRow, $row['bookedby']);
                $sheet->setCellValue('O' . $currentRow, $row['mkt']);
                $sheet->setCellValue('P' . $currentRow, $row['companyname']);

                $sheet->getStyle('A' . $currentRow . ':P' . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['argb' => 'FFDDDDDD']]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':P' . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                $sheet->getStyle('E' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('J' . $currentRow . ':M' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle('J' . $currentRow . ':M' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);

                $currentRow++;
            }

            // Grand Total Row
            $totAdvance = 0;
            $totBalance = 0;
            foreach ($reportData as $row) {
                $totAdvance += (float) ($row['advance'] !== '' ? $row['advance'] : 0);
                $totBalance += (float) ($row['balance'] !== '' ? $row['balance'] : 0);
            }

            $sheet->mergeCells('A' . $currentRow . ':K' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Grand Total');
            $sheet->setCellValue('L' . $currentRow, $totAdvance);
            $sheet->setCellValue('M' . $currentRow, $totBalance);
            $sheet->getStyle('A' . $currentRow . ':P' . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('L' . $currentRow . ':M' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(10);
            $sheet->getColumnDimension('C')->setWidth(14);
            $sheet->getColumnDimension('D')->setWidth(10);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(12);
            $sheet->getColumnDimension('G')->setWidth(12);
            $sheet->getColumnDimension('H')->setWidth(12);
            $sheet->getColumnDimension('I')->setWidth(10);
            $sheet->getColumnDimension('J')->setWidth(12);
            $sheet->getColumnDimension('K')->setWidth(12);
            $sheet->getColumnDimension('L')->setWidth(12);
            $sheet->getColumnDimension('M')->setWidth(12);
            $sheet->getColumnDimension('N')->setWidth(12);
            $sheet->getColumnDimension('O')->setWidth(14);
            $sheet->getColumnDimension('P')->setWidth(16);

            $filename = 'Housekeeping_Report_' . $status . '_' . date('YmdHis') . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Housekeeping Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json(['error' => 'Failed to generate Excel file: ' . $e->getMessage()], 500);
        }
    }

    // ─── Shared helper: build housekeeping report data ───────────────────────────

    private function buildHousekeepingData($allrooms, $occupiedRooms, $status)
    {
        $reportData = [];
        $occupiedRoomNos = $occupiedRooms->pluck('ROOMNO')->toArray();

        $dmy = function ($date) {
            if (! $date) {
                return '';
            }

            return date('d/m/Y', strtotime($date));
        };

        if ($status === 'All') {
            foreach ($allrooms as $room) {
                if (in_array($room->ROOMNO, $occupiedRoomNos)) {
                    $r = $occupiedRooms->firstWhere('ROOMNO', $room->ROOMNO);
                    $reportData[] = [
                        'rm_no' => $r->ROOMNO,
                        'type' => $room->RoomCatName,
                        'foliono' => $r->foliono ?? '',
                        'guestname' => $r->GuestName ?? '',
                        'arrival' => $dmy($r->chkindate),
                        'dep' => $dmy($r->depdate),
                        'person' => ($r->adult ?? '') . ' / ' . ($r->Child ?? ''),
                        'planname' => $r->PlanName ?? '',
                        'rate' => $r->roomrate ?? '',
                        'planamt' => $r->planamt ?? '',
                        'advance' => $r->Advance ?? '',
                        'balance' => $r->balanceamt ?? '',
                        'bookedby' => $r->bookedby ?? '',
                        'mkt' => $r->MarketSeg ?? '',
                        'companyname' => $r->CompanyName ?? '',
                    ];
                } else {
                    $reportData[] = [
                        'rm_no' => $room->ROOMNO,
                        'type' => $room->RoomCatName,
                        'foliono' => '',
                        'guestname' => '',
                        'arrival' => '',
                        'dep' => '',
                        'person' => '',
                        'planname' => '',
                        'rate' => '',
                        'planamt' => '',
                        'advance' => '',
                        'balance' => '',
                        'bookedby' => '',
                        'mkt' => '',
                        'companyname' => '',
                    ];
                }
            }
        } elseif ($status === 'Occupied') {
            foreach ($occupiedRooms as $r) {
                $reportData[] = [
                    'rm_no' => $r->ROOMNO,
                    'type' => $r->RoomCatName,
                    'foliono' => $r->foliono ?? '',
                    'guestname' => $r->GuestName ?? '',
                    'arrival' => $dmy($r->chkindate),
                    'dep' => $dmy($r->depdate),
                    'person' => ($r->adult ?? '') . ' / ' . ($r->Child ?? ''),
                    'planname' => $r->PlanName ?? '',
                    'rate' => $r->roomrate ?? '',
                    'planamt' => $r->planamt ?? '',
                    'advance' => $r->Advance ?? '',
                    'balance' => $r->balanceamt ?? '',
                    'bookedby' => $r->bookedby ?? '',
                    'mkt' => $r->MarketSeg ?? '',
                    'companyname' => $r->CompanyName ?? '',
                ];
            }
        } else {
            foreach ($allrooms as $room) {
                if (! in_array($room->ROOMNO, $occupiedRoomNos)) {
                    $reportData[] = [
                        'rm_no' => $room->ROOMNO,
                        'type' => $room->RoomCatName,
                        'foliono' => '',
                        'guestname' => '',
                        'arrival' => '',
                        'dep' => '',
                        'person' => '',
                        'planname' => '',
                        'rate' => '',
                        'planamt' => '',
                        'advance' => '',
                        'balance' => '',
                        'bookedby' => '',
                        'mkt' => '',
                        'companyname' => '',
                    ];
                }
            }
        }

        return $reportData;
    }

    // ─── Room Wise Amenities Report ───────────────────────────────────────────────

    public function roomwiseamenitiesreport()
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.roomwiseamenitiesreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function roomwiseamenitiesreportfetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $data = DB::table('hkcleaningftr as HF')
            ->select(
                'HD.roommo',
                'I.Name as Item',
                DB::raw('SUM(HF.qty) as Qty')
            )
            ->join('itemmast as I', 'HF.item', '=', 'I.Code')
            ->leftJoin('hkcleaninghdr as HD', 'HF.assid', '=', 'HD.assno')
            ->where('HF.propertyid', $this->propertyid)
            ->where('I.Property_ID', $this->propertyid)
            ->where('HF.Ctype', 'Amenities')
            ->whereBetween('HD.cleaningdate', [$fromdate, $todate])
            ->groupBy('HF.item', 'HD.roommo', 'I.Name')
            ->orderBy('HD.roommo')
            ->get();

        return response()->json($data);
    }

    // ─── Room Wise Amenities Report — Print (DomPDF) ──────────────────────────────

    public function printroomwiseamenitiesreport(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $data = DB::table('hkcleaningftr as HF')
            ->select(
                'HD.roommo',
                'I.Name as Item',
                DB::raw('SUM(HF.qty) as Qty')
            )
            ->join('itemmast as I', 'HF.item', '=', 'I.Code')
            ->leftJoin('hkcleaninghdr as HD', 'HF.assid', '=', 'HD.assno')
            ->where('HF.propertyid', $this->propertyid)
            ->where('I.Property_ID', $this->propertyid)
            ->where('HF.Ctype', 'Amenities')
            ->whereBetween('HD.cleaningdate', [$fromdate, $todate])
            ->groupBy('HF.item', 'HD.roommo', 'I.Name')
            ->orderBy('HD.roommo')
            ->get();

        $pdf = Pdf::loadView('property.print.roomwiseamenitiesreportprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('room-wise-amenities-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Room Wise Amenities Report — Export Excel (PhpSpreadsheet) ───────────────

    public function exportroomwiseamenitiesreport(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $data = DB::table('hkcleaningftr as HF')
                ->select(
                    'HD.roommo',
                    'I.Name as Item',
                    DB::raw('SUM(HF.qty) as Qty')
                )
                ->join('itemmast as I', 'HF.item', '=', 'I.Code')
                ->leftJoin('hkcleaninghdr as HD', 'HF.assid', '=', 'HD.assno')
                ->where('HF.propertyid', $this->propertyid)
                ->where('I.Property_ID', $this->propertyid)
                ->where('HF.Ctype', 'Amenities')
                ->whereBetween('HD.cleaningdate', [$fromdate, $todate])
                ->groupBy('HF.item', 'HD.roommo', 'I.Name')
                ->orderBy('HD.roommo')
                ->get();

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Room Wise Amenities');

            $lastCol = 'D'; // 4 columns: A..# , B..D

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Room Wise Amenities Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $fromDisp = Carbon::parse($fromdate)->format('d/m/Y');
            $toDisp = Carbon::parse($todate)->format('d/m/Y');
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromDisp . '   To: ' . $toDisp);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Room No.', 'Item Name', 'Qty'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row->roommo);
                $sheet->setCellValue('C' . $currentRow, $row->Item);
                $sheet->setCellValue('D' . $currentRow, (float) $row->Qty);

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Item Name left-aligned
                $sheet->getStyle('C' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                // Qty number format
                $sheet->getStyle('D' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

                $currentRow++;
            }

            // Grand Total Row
            $totalQty = $data->sum(fn($r) => (float) $r->Qty);

            $sheet->mergeCells('A' . $currentRow . ':C' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Grand Total');
            $sheet->setCellValue('D' . $currentRow, $totalQty);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('D' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(14);
            $sheet->getColumnDimension('C')->setWidth(50);
            $sheet->getColumnDimension('D')->setWidth(12);

            // ── Download ───────────────────────────────────────────────────
            $filename = 'Room_Wise_Amenities_Report_' . str_replace('-', '', $fromdate) . '_to_' . str_replace('-', '', $todate) . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Room Wise Amenities Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage(),
            ], 500);
        }
    }

    // ─── Amenities Report (Item Wise Usage, Cost, Rooms, Pax) ────────────────────

    public function amenitiesreport()
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.amenitiesreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function amenitiesreportfetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        // Total Rooms in property
        $totalRooms = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->count();

        // Total Pax (inhouse guests in date range)
        $totalPax = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->whereBetween('chkindate', [$fromdate, $todate])
            ->sum(DB::raw('adult + children'));

        // Item wise amenities data
        $data = DB::table('hkamentiesmaster as AM')
            ->select(
                'AM.item',
                'I.Name as Item',
                DB::raw('SUM(S.issqty) as QtyUsed'),
                DB::raw('SUM(S.amount) as Cost'),
                DB::raw('COUNT(S.roomno) as TotalRooms')
            )
            ->join('itemmast as I', 'AM.item', '=', 'I.Code')
            ->leftJoin('stock as S', function ($join) use ($fromdate, $todate) {
                $join->on('AM.item', '=', 'S.item')
                    ->where('S.propertyid', '=', $this->propertyid)
                    ->where('S.vtype', '=', 'HKISS')
                    ->whereBetween('S.vdate', [$fromdate, $todate]);
            })
            ->where('AM.propertyid', $this->propertyid)
            ->where('I.Property_ID', $this->propertyid)
            ->where('AM.type', 'Amenities')
            ->groupBy('AM.item', 'I.Name')
            ->orderBy('I.Name')
            ->get();

        return response()->json([
            'data' => $data,
            'totalRooms' => $totalRooms,
            'totalPax' => $totalPax,
        ]);
    }

    // ─── Amenities Report — Print (DomPDF) ─────────────────────────────────────────

    public function printamenitiesreport(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        // Total Rooms in property
        $totalRooms = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->count();

        // Total Pax (inhouse guests in date range)
        $totalPax = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->whereBetween('chkindate', [$fromdate, $todate])
            ->sum(DB::raw('adult + children'));

        // Item wise amenities data
        $data = DB::table('hkamentiesmaster as AM')
            ->select(
                'AM.item',
                'I.Name as Item',
                DB::raw('SUM(S.issqty) as QtyUsed'),
                DB::raw('SUM(S.amount) as Cost'),
                DB::raw('COUNT(S.roomno) as TotalRooms')
            )
            ->join('itemmast as I', 'AM.item', '=', 'I.Code')
            ->leftJoin('stock as S', function ($join) use ($fromdate, $todate) {
                $join->on('AM.item', '=', 'S.item')
                    ->where('S.propertyid', '=', $this->propertyid)
                    ->where('S.vtype', '=', 'HKISS')
                    ->whereBetween('S.vdate', [$fromdate, $todate]);
            })
            ->where('AM.propertyid', $this->propertyid)
            ->where('I.Property_ID', $this->propertyid)
            ->where('AM.type', 'Amenities')
            ->groupBy('AM.item', 'I.Name')
            ->orderBy('I.Name')
            ->get();

        $pdf = Pdf::loadView('property.print.amenitiesreportprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $data,
            'totalRooms' => $totalRooms,
            'totalPax' => $totalPax,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('amenities-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Amenities Report — Export Excel (PhpSpreadsheet) ───────────────────────────

    public function exportamenitiesreport(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            // Total Rooms in property
            $totalRooms = DB::table('room_mast')
                ->where('propertyid', $this->propertyid)
                ->where('type', 'RO')
                ->where('inclcount', 'Y')
                ->count();

            // Total Pax (inhouse guests in date range)
            $totalPax = DB::table('roomocc')
                ->where('propertyid', $this->propertyid)
                ->whereBetween('chkindate', [$fromdate, $todate])
                ->sum(DB::raw('adult + children'));

            // Item wise amenities data
            $data = DB::table('hkamentiesmaster as AM')
                ->select(
                    'AM.item',
                    'I.Name as Item',
                    DB::raw('SUM(S.issqty) as QtyUsed'),
                    DB::raw('SUM(S.amount) as Cost'),
                    DB::raw('COUNT(S.roomno) as TotalRooms')
                )
                ->join('itemmast as I', 'AM.item', '=', 'I.Code')
                ->leftJoin('stock as S', function ($join) use ($fromdate, $todate) {
                    $join->on('AM.item', '=', 'S.item')
                        ->where('S.propertyid', '=', $this->propertyid)
                        ->where('S.vtype', '=', 'HKISS')
                        ->whereBetween('S.vdate', [$fromdate, $todate]);
                })
                ->where('AM.propertyid', $this->propertyid)
                ->where('I.Property_ID', $this->propertyid)
                ->where('AM.type', 'Amenities')
                ->groupBy('AM.item', 'I.Name')
                ->orderBy('I.Name')
                ->get();

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Amenities Report');

            $lastCol = 'E'; // A..# , B..Item Name, C..Qty Used, D..Cost, E..Total Rooms

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Amenities Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $fromDisp = Carbon::parse($fromdate)->format('d/m/Y');
            $toDisp = Carbon::parse($todate)->format('d/m/Y');
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromDisp . '   To: ' . $toDisp . '   |   Total Rooms: ' . $totalRooms . '   Total Pax: ' . $totalPax);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Item Name', 'Qty Used', 'Cost', 'Total Rooms'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, $row->Item);
                $sheet->setCellValue('C' . $currentRow, (float) $row->QtyUsed);
                $sheet->setCellValue('D' . $currentRow, (float) $row->Cost);
                $sheet->setCellValue('E' . $currentRow, (int) $row->TotalRooms);

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Item Name left-aligned
                $sheet->getStyle('B' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                // Qty & Cost number format
                $sheet->getStyle('C' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
                $sheet->getStyle('D' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

                $currentRow++;
            }

            // Grand Total Row
            $totalQty = $data->sum(fn($r) => (float) $r->QtyUsed);
            $totalCost = $data->sum(fn($r) => (float) $r->Cost);
            $totalRoomsUsed = $data->sum(fn($r) => (int) $r->TotalRooms);

            $sheet->mergeCells('A' . $currentRow . ':B' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Grand Total');
            $sheet->setCellValue('C' . $currentRow, $totalQty);
            $sheet->setCellValue('D' . $currentRow, $totalCost);
            $sheet->setCellValue('E' . $currentRow, $totalRoomsUsed);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('C' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getStyle('D' . $currentRow)->getNumberFormat()->setFormatCode('#,##0.00');

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(50);
            $sheet->getColumnDimension('C')->setWidth(14);
            $sheet->getColumnDimension('D')->setWidth(16);
            $sheet->getColumnDimension('E')->setWidth(14);

            // ── Download ───────────────────────────────────────────────────
            $filename = 'Amenities_Report_' . str_replace('-', '', $fromdate) . '_to_' . str_replace('-', '', $todate) . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Amenities Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage(),
            ], 500);
        }
    }

    // ─── Cleaning Register Report ─────────────────────────────────────────────────

    public function cleaningregister(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.cleaningregister', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
        ]);
    }

    public function fetchcleaningregister(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);

        $data = DB::table('hkcleaninghdr as HH')
            ->leftJoin('housekeeparmast as M', 'HH.housekeeperid', '=', 'M.scode')
            ->leftJoin('hksupervisor as S', 'HH.supervisorid', '=', 'S.code')
            ->where('HH.propertyid', $this->propertyid)
            ->whereBetween('HH.cleaningdate', [$fromdate, $todate])
            ->select(
                'HH.cleaningdate',
                'HH.roommo',
                'HH.assno',
                'HH.cleaningno',
                'HH.starttime',
                'HH.endtime',
                DB::raw('HH.totalminutes as duration'),
                DB::raw('M.name as cleandby'),
                DB::raw('S.name as supervisor'),
                DB::raw('HH.cleaningstatus as cleanstatus'),
                'HH.inspectionstatus'
            )
            ->orderBy('HH.cleaningdate', 'ASC')
            ->orderBy('HH.roommo', 'ASC')
            ->get();

        return response()->json(['data' => $data]);
    }

    // ─── Cleaning Register — Print (DomPDF) ───────────────────────────────────────

    public function printcleaningregister(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $data = DB::table('hkcleaninghdr as HH')
            ->leftJoin('housekeeparmast as M', 'HH.housekeeperid', '=', 'M.scode')
            ->leftJoin('hksupervisor as S', 'HH.supervisorid', '=', 'S.code')
            ->where('HH.propertyid', $this->propertyid)
            ->whereBetween('HH.cleaningdate', [$fromdate, $todate])
            ->select(
                'HH.cleaningdate',
                'HH.roommo',
                'HH.assno',
                'HH.cleaningno',
                'HH.starttime',
                'HH.endtime',
                DB::raw('HH.totalminutes as duration'),
                DB::raw('M.name as cleandby'),
                DB::raw('S.name as supervisor'),
                DB::raw('HH.cleaningstatus as cleanstatus'),
                'HH.inspectionstatus'
            )
            ->orderBy('HH.cleaningdate', 'ASC')
            ->orderBy('HH.roommo', 'ASC')
            ->get();

        $pdf = Pdf::loadView('property.print.cleaningregisterprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('cleaning-register-' . date('YmdHis') . '.pdf');
    }

    // ─── Cleaning Register — Export Excel (PhpSpreadsheet) ────────────────────────

    public function exportcleaningregister(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $data = DB::table('hkcleaninghdr as HH')
                ->leftJoin('housekeeparmast as M', 'HH.housekeeperid', '=', 'M.scode')
                ->leftJoin('hksupervisor as S', 'HH.supervisorid', '=', 'S.code')
                ->where('HH.propertyid', $this->propertyid)
                ->whereBetween('HH.cleaningdate', [$fromdate, $todate])
                ->select(
                    'HH.cleaningdate',
                    'HH.roommo',
                    'HH.assno',
                    'HH.cleaningno',
                    'HH.starttime',
                    'HH.endtime',
                    DB::raw('HH.totalminutes as duration'),
                    DB::raw('M.name as cleandby'),
                    DB::raw('S.name as supervisor'),
                    DB::raw('HH.cleaningstatus as cleanstatus'),
                    'HH.inspectionstatus'
                )
                ->orderBy('HH.cleaningdate', 'ASC')
                ->orderBy('HH.roommo', 'ASC')
                ->get();

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Cleaning Register');

            $lastCol = 'L'; // 12 columns: A..# , B..L

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Cleaning Register');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $fromDisp = Carbon::parse($fromdate)->format('d/m/Y');
            $toDisp = Carbon::parse($todate)->format('d/m/Y');
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromDisp . '   To: ' . $toDisp);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Cleaning Date', 'Room No', 'Ass No', 'Cleaning No', 'Start Time', 'End Time', 'Duration (Min)', 'Cleaned By', 'Supervisor', 'Clean Status', 'Inspection Status'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, Carbon::parse($row->cleaningdate)->format('d/m/Y'));
                $sheet->setCellValue('C' . $currentRow, $row->roommo);
                $sheet->setCellValue('D' . $currentRow, $row->assno);
                $sheet->setCellValue('E' . $currentRow, $row->cleaningno);
                $sheet->setCellValue('F' . $currentRow, $row->starttime);
                $sheet->setCellValue('G' . $currentRow, $row->endtime);
                $sheet->setCellValue('H' . $currentRow, (int) (float) $row->duration);
                $sheet->setCellValue('I' . $currentRow, $row->cleandby);
                $sheet->setCellValue('J' . $currentRow, $row->supervisor);
                $sheet->setCellValue('K' . $currentRow, $row->cleanstatus);
                $sheet->setCellValue('L' . $currentRow, $row->inspectionstatus);

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Cleaned By / Supervisor / Inspection left-aligned
                $sheet->getStyle('I' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('J' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('L' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Grand Total Row
            $totalRows = $data->count();
            $totalMinutes = $data->sum(fn($r) => (int) (float) $r->duration);

            $sheet->mergeCells('A' . $currentRow . ':G' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Total Records: ' . $totalRows);
            $sheet->setCellValue('H' . $currentRow, $totalMinutes);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);
            $sheet->getStyle('G' . $currentRow)->getAlignment()
                ->setHorizontal(Alignment::HORIZONTAL_RIGHT);

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(15);
            $sheet->getColumnDimension('C')->setWidth(10);
            $sheet->getColumnDimension('D')->setWidth(10);
            $sheet->getColumnDimension('E')->setWidth(12);
            $sheet->getColumnDimension('F')->setWidth(12);
            $sheet->getColumnDimension('G')->setWidth(12);
            $sheet->getColumnDimension('H')->setWidth(15);
            $sheet->getColumnDimension('I')->setWidth(22);
            $sheet->getColumnDimension('J')->setWidth(22);
            $sheet->getColumnDimension('K')->setWidth(15);
            $sheet->getColumnDimension('L')->setWidth(20);

            // ── Download ───────────────────────────────────────────────────
            $filename = 'Cleaning_Register_' . str_replace('-', '', $fromdate) . '_to_' . str_replace('-', '', $todate) . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Cleaning Register Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage(),
            ], 500);
        }
    }

    // ─── HK Stock Report ──────────────────────────────────────────────────────────

    public function hkstockreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $godowns = collect(); // Godown dropdown removed

        $itemgroups = DB::table('itemmast')
            ->where('Property_ID', $this->propertyid)
            ->where('ItemType', 'Store')
            ->where('ActiveYN', 'Y')
            ->select('Code as code', 'Name as name')
            ->orderBy('Name')
            ->get();

        return view('property.housekeeping.hkstockreport', [
            'company' => $company,
            'statename' => $statename,
            'godowns' => $godowns,
            'itemgroups' => $itemgroups,
            'asofdate' => $this->ncurdate,
        ]);
    }

    public function fetchhkstockreport(Request $request)
    {
        try {
            $fromdate = $request->input('fromdate', $this->ncurdate);
            $todate = $request->input('todate', $this->ncurdate);
            $propertyId = $this->propertyid;
            $godownCode = 'HK' . $propertyId;
            $itemgroupArr = $request->input('itemgroups', []);
            $filterByGroup = is_array($itemgroupArr) && count($itemgroupArr) > 0;

            $recNcat = ['PBC', 'PBR', 'MRE', 'RQI', 'STOP', 'BKREC', 'KSREC', 'KMREC'];
            $issNcat = ['PRR', 'PRC', 'RQR', 'BKISS', 'KSISS', 'KMISS', 'HKISS'];
            $allNcat = array_merge($recNcat, $issNcat);

            // ── Step 1: Item list — NO voucher_type join, NO NCAT filter ──────
            $itemsQuery = DB::table('stock as S')
                ->join('itemmast as I', function ($j) {
                    $j->on('S.Item', '=', 'I.Code')
                        ->where('I.ItemType', 'Store');
                })
                ->where('S.propertyid', $propertyId)
                ->where('S.GodownCode', $godownCode)
                ->where('S.delflag', 'N')
                ->when($filterByGroup, fn($q) => $q->whereIn('S.Item', $itemgroupArr))
                ->select('S.Item', 'I.Name as ItemName', 'I.Unit', 'I.IssueUnit')
                ->distinct()
                ->orderBy('I.Name')
                ->get()
                ->keyBy('Item');

            $itemCodes = $itemsQuery->keys()->toArray();

            if (empty($itemCodes)) {
                return response()->json(['success' => true, 'data' => []]);
            }

            // ── Step 2: Opening stock (before fromdate, with NCAT filter) ─────
            $opening = DB::table('stock as S')
                ->leftJoin('voucher_type as VT', function ($j) {
                    $j->on('S.VType', '=', 'VT.V_Type')
                        ->on('S.propertyid', '=', 'VT.propertyid');
                })
                ->where('S.propertyid', $propertyId)
                ->where('S.GodownCode', $godownCode)
                ->where('S.delflag', 'N')
                ->where('S.VDate', '<', $fromdate)
                ->whereIn('S.Item', $itemCodes)
                ->whereIn('VT.NCAT', $allNcat)
                ->select(
                    'S.Item',
                    DB::raw("SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') THEN S.RecdQty ELSE 0 END)
                           - SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','BKISS','KSISS','KMISS','HKISS') THEN S.IssQty ELSE 0 END)
                           as openingqty")
                )
                ->groupBy('S.Item')
                ->get()
                ->keyBy('Item');

            // ── Step 3: Period totals ─────────────────────────────────────────
            $period = DB::table('stock as S')
                ->leftJoin('voucher_type as VT', function ($j) {
                    $j->on('S.VType', '=', 'VT.V_Type')
                        ->on('S.propertyid', '=', 'VT.propertyid');
                })
                ->where('S.propertyid', $propertyId)
                ->where('S.GodownCode', $godownCode)
                ->where('S.delflag', 'N')
                ->whereBetween('S.VDate', [$fromdate, $todate])
                ->whereIn('S.Item', $itemCodes)
                ->whereIn('VT.NCAT', $allNcat)
                ->select(
                    'S.Item',
                    DB::raw("SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') THEN S.RecdQty ELSE 0 END) as totalrec"),
                    DB::raw("SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','BKISS','KSISS','KMISS','HKISS') THEN S.IssQty ELSE 0 END) as totaliss")
                )
                ->groupBy('S.Item')
                ->get()
                ->keyBy('Item');

            // ── Step 4: Transaction rows ──────────────────────────────────────
            $txnRows = DB::table('stock as S')
                ->leftJoin('itemmast as I', function ($j) {
                    $j->on('S.Item', '=', 'I.Code')->where('I.ItemType', 'Store');
                })
                ->leftJoin('voucher_type as VT', function ($j) {
                    $j->on('S.VType', '=', 'VT.V_Type')
                        ->on('S.propertyid', '=', 'VT.propertyid');
                })
                ->leftJoin('stock as S1', function ($j) {
                    $j->on('S.ContraDocId', '=', 'S1.DocId')
                        ->on('S.ContraSno', '=', 'S1.Sno');
                })
                ->leftJoin('godown_mast as D', 'D.scode', '=', 'S1.GodownCode')
                ->where('S.propertyid', $propertyId)
                ->whereBetween('S.VDate', [$fromdate, $todate])
                ->where('S.GodownCode', $godownCode)
                ->where('S.delflag', 'N')
                ->whereIn('S.Item', $itemCodes)
                ->whereIn('VT.NCAT', $allNcat)
                ->select(
                    'S.Item',
                    'S.VDate as vdate',
                    'S.VType as vtype',
                    'S.VNo as vno',
                    'S.Amount as amount',
                    DB::raw("CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') THEN S.RecdQty ELSE 0 END AS qtyrec"),
                    DB::raw("CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','BKISS','KSISS','KMISS','HKISS') THEN S.IssQty ELSE 0 END AS qtyiss"),
                    DB::raw("CASE WHEN VT.NCAT = 'HKISS' THEN S.roomno ELSE D.Name END AS particulars"),
                    DB::raw("CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') THEN 'A'
                                  WHEN VT.NCAT IN ('PRR','PRC','RQR','BKISS','KSISS','KMISS','HKISS') THEN 'B'
                                  ELSE 'C' END AS seqno")
                )
                ->orderBy('S.Item')
                ->orderBy('S.VDate')
                ->orderByRaw("CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','BKREC','KSREC','KMREC') THEN 'A'
                                   WHEN VT.NCAT IN ('PRR','PRC','RQR','BKISS','KSISS','KMISS','HKISS') THEN 'B'
                                   ELSE 'C' END")
                ->orderBy('S.VType')
                ->orderBy('S.VNo')
                ->get()
                ->groupBy('Item');

            // ── Step 5: Build response ────────────────────────────────────────
            $data = [];
            foreach ($itemsQuery as $code => $item) {
                $openQty = (float) ($opening->get($code)->openingqty ?? 0);
                $recQty = (float) ($period->get($code)->totalrec ?? 0);
                $issQty = (float) ($period->get($code)->totaliss ?? 0);
                $closeQty = $openQty + $recQty - $issQty;

                $bal = $openQty;
                $txnList = [];
                foreach ($txnRows->get($code, collect()) as $t) {
                    $rec = (float) $t->qtyrec;
                    $iss = (float) $t->qtyiss;
                    $bal += $rec - $iss;
                    $txnList[] = [
                        'vdate' => substr($t->vdate, 0, 10),
                        'vtype' => $t->vtype,
                        'vno' => $t->vno,
                        'amount' => (float) $t->amount,
                        'particulars' => $t->particulars,
                        'qtyrec' => $rec,
                        'qtyiss' => $iss,
                        'balance' => $bal,
                    ];
                }

                $data[] = [
                    'itemcode' => $code,
                    'itemname' => $item->ItemName ?? $code,
                    'unit' => $item->Unit ?? '',
                    'issueunit' => $item->IssueUnit ?? '',
                    'openingqty' => $openQty,
                    'totalrec' => $recQty,
                    'totaliss' => $issQty,
                    'closingqty' => $closeQty,
                    'transactions' => $txnList,
                ];
            }

            return response()->json(['success' => true, 'data' => $data]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    // ─── Amenities Usage Report ───────────────────────────────────────────────────

    public function assignmentreport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.assignmentreport', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
            'statename' => $statename,
        ]);
    }

    public function assignmentreportfetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate');

        $data = DB::table('hkroomassigns as HA')
            ->select(
                'HA.vdate as Date',
                'HM.name as Housekeeper',
                DB::raw('COUNT(HA.assno) as TotalRooms'),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'Completed'   THEN 1 ELSE 0 END) AS CompletedRooms"),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'In Progress' THEN 1 ELSE 0 END) AS InProgressRooms"),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = ''            THEN 1 ELSE 0 END) AS PendingRooms"),
                DB::raw('ROUND(AVG(TIME_TO_SEC(HA.esttime) / 60), 0) AS AvgEst'),
                DB::raw('ROUND(AVG(HC.totalminutes), 0) AS AvgActual')
            )
            ->leftJoin('housekeeparmast as HM', 'HA.code', '=', 'HM.scode')
            ->leftJoin('hkcleaninghdr as HC', 'HA.assno', '=', 'HC.assno')
            ->where('HA.propertyid', $this->propertyid)
            ->whereBetween('HA.vdate', [$fromdate, $todate])
            ->groupBy('HA.vdate', 'HA.code', 'HM.name')
            ->orderBy('HA.vdate')
            ->orderBy('HM.name')
            ->get();

        return response()->json($data);
    }

    public function fetchassignmentreport(Request $request)
    {
        $fromdate = $request->input('fromdate', $this->ncurdate);
        $todate = $request->input('todate', $this->ncurdate);

        $data = DB::table('hkcleaningftr as HF')
            ->join('itemmast as I', 'HF.item', '=', 'I.Code')
            ->leftJoin('hkcleaninghdr as HD', 'HF.assid', '=', 'HD.assno')
            ->where('HF.propertyid', $this->propertyid)
            ->where('I.Property_ID', $this->propertyid)
            ->where('HF.Ctype', 'Amenities')
            ->whereBetween('HD.cleaningdate', [$fromdate, $todate])
            ->groupBy('HF.item', 'I.Name', 'HD.roommo')
            ->select(
                'HD.roommo',
                DB::raw('I.Name as Item'),
                DB::raw('SUM(HF.qty) as Qty')
            )
            ->orderBy('HD.roommo')
            ->get();

        return response()->json(['data' => $data]);
    }

    // ─── Assignment Report — Print (DomPDF) ───────────────────────────────────────

    public function printassignmentreport(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $data = DB::table('hkroomassigns as HA')
            ->select(
                'HA.vdate as Date',
                'HM.name as Housekeeper',
                DB::raw('COUNT(HA.assno) as TotalRooms'),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'Completed'   THEN 1 ELSE 0 END) AS CompletedRooms"),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'In Progress' THEN 1 ELSE 0 END) AS InProgressRooms"),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = ''            THEN 1 ELSE 0 END) AS PendingRooms"),
                DB::raw('ROUND(AVG(TIME_TO_SEC(HA.esttime) / 60), 0) AS AvgEst'),
                DB::raw('ROUND(AVG(HC.totalminutes), 0) AS AvgActual')
            )
            ->leftJoin('housekeeparmast as HM', 'HA.code', '=', 'HM.scode')
            ->leftJoin('hkcleaninghdr as HC', 'HA.assno', '=', 'HC.assno')
            ->where('HA.propertyid', $this->propertyid)
            ->whereBetween('HA.vdate', [$fromdate, $todate])
            ->groupBy('HA.vdate', 'HA.code', 'HM.name')
            ->orderBy('HA.vdate')
            ->orderBy('HM.name')
            ->get();

        $pdf = Pdf::loadView('property.print.assignmentreportprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('assignment-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Assignment Report — Export Excel (PhpSpreadsheet) ────────────────────────

    public function exportassignmentreport(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $data = DB::table('hkroomassigns as HA')
                ->select(
                    'HA.vdate as Date',
                    'HM.name as Housekeeper',
                    DB::raw('COUNT(HA.assno) as TotalRooms'),
                    DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'Completed'   THEN 1 ELSE 0 END) AS CompletedRooms"),
                    DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'In Progress' THEN 1 ELSE 0 END) AS InProgressRooms"),
                    DB::raw("SUM(CASE WHEN HA.cleaningstatus = ''            THEN 1 ELSE 0 END) AS PendingRooms"),
                    DB::raw('ROUND(AVG(TIME_TO_SEC(HA.esttime) / 60), 0) AS AvgEst'),
                    DB::raw('ROUND(AVG(HC.totalminutes), 0) AS AvgActual')
                )
                ->leftJoin('housekeeparmast as HM', 'HA.code', '=', 'HM.scode')
                ->leftJoin('hkcleaninghdr as HC', 'HA.assno', '=', 'HC.assno')
                ->where('HA.propertyid', $this->propertyid)
                ->whereBetween('HA.vdate', [$fromdate, $todate])
                ->groupBy('HA.vdate', 'HA.code', 'HM.name')
                ->orderBy('HA.vdate')
                ->orderBy('HM.name')
                ->get();

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Assignment Report');

            $lastCol = 'I'; // 9 columns: A..# , B..I

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Assignment Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $fromDisp = Carbon::parse($fromdate)->format('d/m/Y');
            $toDisp = Carbon::parse($todate)->format('d/m/Y');
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromDisp . '   To: ' . $toDisp);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            $headers = ['#', 'Date', 'Housekeeper', 'Total Rooms', 'Completed', 'In Progress', 'Pending', 'Avg Est Time (min)', 'Avg Actual Time (min)'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, Carbon::parse($row->Date)->format('d/m/Y'));
                $sheet->setCellValue('C' . $currentRow, $row->Housekeeper);
                $sheet->setCellValue('D' . $currentRow, (int) $row->TotalRooms);
                $sheet->setCellValue('E' . $currentRow, (int) $row->CompletedRooms);
                $sheet->setCellValue('F' . $currentRow, (int) $row->InProgressRooms);
                $sheet->setCellValue('G' . $currentRow, (int) $row->PendingRooms);
                $sheet->setCellValue('H' . $currentRow, (int) $row->AvgEst);
                $sheet->setCellValue('I' . $currentRow, (int) $row->AvgActual);

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Housekeeper left-aligned
                $sheet->getStyle('C' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Grand Total Row
            $totalRooms = $data->sum(fn($r) => (int) $r->TotalRooms);
            $completed = $data->sum(fn($r) => (int) $r->CompletedRooms);
            $inProgress = $data->sum(fn($r) => (int) $r->InProgressRooms);
            $pending = $data->sum(fn($r) => (int) $r->PendingRooms);
            $rowCount = $data->count();
            $avgEst = $rowCount > 0 ? round($data->avg(fn($r) => (int) $r->AvgEst)) : 0;
            $avgActual = $rowCount > 0 ? round($data->avg(fn($r) => (int) $r->AvgActual)) : 0;

            $sheet->mergeCells('A' . $currentRow . ':C' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Grand Total');
            $sheet->setCellValue('D' . $currentRow, $totalRooms);
            $sheet->setCellValue('E' . $currentRow, $completed);
            $sheet->setCellValue('F' . $currentRow, $inProgress);
            $sheet->setCellValue('G' . $currentRow, $pending);
            $sheet->setCellValue('H' . $currentRow, $avgEst);
            $sheet->setCellValue('I' . $currentRow, $avgActual);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(14);
            $sheet->getColumnDimension('C')->setWidth(28);
            $sheet->getColumnDimension('D')->setWidth(12);
            $sheet->getColumnDimension('E')->setWidth(12);
            $sheet->getColumnDimension('F')->setWidth(13);
            $sheet->getColumnDimension('G')->setWidth(10);
            $sheet->getColumnDimension('H')->setWidth(16);
            $sheet->getColumnDimension('I')->setWidth(18);

            // ── Download ───────────────────────────────────────────────────
            $filename = 'Assignment_Report_' . str_replace('-', '', $fromdate) . '_to_' . str_replace('-', '', $todate) . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Assignment Report Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage(),
            ], 500);
        }
    }

    // ─── Housekeeper Assignment Screen ───────────────────────────────────────────

    public function assignmentreportprint(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $propertyId = $this->propertyid;
        $asOnDate = getNcurDate();
        $effectiveDate = $asOnDate;

        // ── Room Status Counts (same source as inhoseroomstatus page) ─────────
        $roomStatus = (new RoomStatus)->getRoomStatusCounts($propertyId, $asOnDate);

        // VD + OD = Total Dirty
        $vacantDirty = $roomStatus['VD'];
        $occupiedDirty = $roomStatus['OD'];
        $totalDirty = $vacantDirty + $occupiedDirty;

        // ── VIP Rooms (in-house guests with vipStatus = Y) ────────────────────
        $vipRooms = DB::table('roomocc as ro')
            ->join('guestprof as gp', function ($j) use ($propertyId) {
                $j->on('gp.guestcode', '=', 'ro.guestprof')
                    ->where('gp.propertyid', $propertyId);
            })
            ->where('ro.propertyid', $propertyId)
            ->whereNull('ro.type')
            ->where('gp.vipStatus', 'Y')
            ->count();

        // ── Early Check-in (today's arrivals not yet checked in) ─────────────
        $earlyCheckin = DB::table('grpbookingdetails as g')
            ->where('g.Property_ID', $propertyId)
            ->where('g.ArrDate', $asOnDate)
            ->where('g.Cancel', 'N')
            ->where('g.ContraDocId', '')
            ->count();

        // ── Inspection Pending (hkcleaninghdr me cleaningstatus='Completed' aur inspectionstatus='Pending') ──
        $inspectionPending = DB::table('hkcleaninghdr')
            ->where('propertyid', $propertyId)
            ->where('cleaningstatus', 'Completed')
            ->where('inspectionstatus', 'Pending')
            ->count();

        // ── Housekeepers Available / Total ────────────────────────────────────
        // housekeeparmast.activeYN stores 'Y' string (varchar)
        $hkTotal = HousekeeperMast::where('propertyid', $propertyId)->count();
        $hkAvailable = HousekeeperMast::where('propertyid', $propertyId)
            ->where('activeYN', 'Y')
            ->count();

        // ── Supervisors ───────────────────────────────────────────────────────
        $supervisors = HkSupervisor::where('propertyid', $propertyId)
            ->where('activeyn', 1)
            ->orderBy('name')
            ->get();

        // ── Unassigned Dirty Rooms ────────────────────────────────────────────
        // Rooms where room_stat = 'D' (dirty), joined with floor, room category,
        // and roomocc to determine Occupied Dirty vs Vacant Dirty and Priority.
        $unassignedRooms = DB::table('room_mast as RM')
            ->distinct()
            ->select(
                'RM.rcode as roomno',
                'FL.name as floor',
                'C.name as type',
                DB::raw("
                    CASE
                        WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Occupied Dirty'
                        ELSE 'Vacant Dirty'
                    END AS roomstatus
                "),
                DB::raw("
                    CASE
                        WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Normal'
                        ELSE 'High'
                    END AS priority
                ")
            )
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('roomocc as RC', function ($j) use ($propertyId) {
                $j->on('RM.rcode', '=', 'RC.roomno')
                    ->whereNull('RC.chkoutdate')
                    ->where('RC.propertyid', $propertyId);
            })
            ->leftJoin('grpbookingdetails as B', function ($j) use ($effectiveDate) {
                $j->on('RM.rcode', '=', 'B.RoomNo')
                    ->where('B.Cancel', 'N')
                    ->where('B.ContraDocId', '')
                    ->where('B.ArrDate', $effectiveDate);
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->where('RM.type', 'RO')
            ->where('RM.propertyid', $propertyId)
            ->where('RM.room_stat', 'D')
            ->whereNotIn('RM.rcode', function ($query) use ($propertyId, $effectiveDate) {
                $query->select('roomno')
                    ->from('hkroomassigns')
                    ->where('propertyid', $propertyId)
                    ->where('vdate', $effectiveDate)
                    ->where('status', 'dirty');
            })
            ->orderBy('RM.rcode')
            ->get();

        // ── Rooms where cleaning has been started (cleaningstatus = 'In Progress') ──
        $cleaningStartedRooms = DB::table('hkroomassigns as HA')
            ->select(
                'HA.id',
                'HA.roomno',
                'HA.code',
                'HA.assno',
                'HA.supervisor',
                'HA.ctype',
                'HA.cleaningstatus',
                'FL.name as floor',
                'C.name as type',
                'HK.name as hkname',
                'SUP.name as supname',
                'CT.name as ctypename',
                DB::raw("CASE WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Occupied Dirty' ELSE 'Vacant Dirty' END AS roomstatus")
            )
            ->join('room_mast as RM', function ($j) use ($propertyId) {
                $j->on('HA.roomno', '=', 'RM.rcode')
                    ->where('RM.propertyid', $propertyId)
                    ->where('RM.type', 'RO');
            })
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('roomocc as RC', function ($j) use ($propertyId) {
                $j->on('RM.rcode', '=', 'RC.roomno')
                    ->whereNull('RC.chkoutdate')
                    ->where('RC.propertyid', $propertyId);
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HA.code', '=', 'HK.scode')
                    ->where('HK.propertyid', $propertyId);
            })
            ->leftJoin('hksupervisor as SUP', function ($j) use ($propertyId) {
                $j->on('HA.supervisor', '=', 'SUP.code')
                    ->where('SUP.propertyid', $propertyId);
            })
            ->leftJoin('hkcleaningtype as CT', function ($j) use ($propertyId) {
                $j->on('HA.ctype', '=', 'CT.code')
                    ->where('CT.propertyid', $propertyId);
            })
            ->where('HA.propertyid', $propertyId)
            ->where('HA.vdate', $effectiveDate)
            ->where('HA.status', 'dirty')
            ->where('HA.cleaningstatus', 'In Progress')
            ->orderBy('HA.roomno')
            ->get();

        // ── Housekeepers List for Assignment Dropdown ────────────────────────
        $housekeepers = HousekeeperMast::where('propertyid', $propertyId)
            ->where('activeYN', 'Y')
            ->orderBy('name')
            ->get();

        $cleaningTypes = DB::table('hkcleaningtype')
            ->where('propertyid', $propertyId)
            ->orderBy('id')
            ->get();

        $assignedRoomsRaw = DB::table('hkroomassigns as HA')
            ->distinct()
            ->select(
                'HA.code',
                'HA.supervisor',
                'HA.roomno',
                'HA.ctype',
                'HA.esttime',
                'HA.assno',
                'FL.name as floor',
                'C.name as type',
                DB::raw("CASE WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Occupied Dirty' ELSE 'Vacant Dirty' END AS roomstatus")
            )
            ->join('room_mast as RM', function ($j) use ($propertyId) {
                $j->on('HA.roomno', '=', 'RM.rcode')
                    ->where('RM.propertyid', $propertyId)
                    ->where('RM.type', 'RO');
            })
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('roomocc as RC', function ($j) use ($propertyId) {
                $j->on('RM.rcode', '=', 'RC.roomno')
                    ->whereNull('RC.chkoutdate')
                    ->where('RC.propertyid', $propertyId);
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->where('HA.propertyid', $propertyId)
            ->where('HA.vdate', $effectiveDate)
            ->where('HA.status', 'dirty')
            ->where(function ($q) {
                $q->where('HA.cleaningstatus', '')
                    ->orWhereNull('HA.cleaningstatus');
            })
            ->orderBy('HA.code')
            ->orderBy('HA.roomno')
            ->get();

        $assignedRoomsByHk = [];
        foreach ($assignedRoomsRaw as $row) {
            if (! isset($assignedRoomsByHk[$row->code])) {
                $assignedRoomsByHk[$row->code] = [
                    'supervisor' => $row->supervisor,
                    'assno' => $row->assno,
                    'rows' => [],
                ];
            }
            $assignedRoomsByHk[$row->code]['rows'][] = $row;
        }

        return view('property.housekeeping.assignmentreportprint', [
            'company' => $company,
            'asOnDate' => $effectiveDate,
            'totalDirty' => $totalDirty,
            'vacantDirty' => $vacantDirty,
            'occupiedDirty' => $occupiedDirty,
            'vipRooms' => $vipRooms,
            'earlyCheckin' => $earlyCheckin,
            'inspectionPending' => $inspectionPending,
            'hkAvailable' => $hkAvailable,
            'hkTotal' => $hkTotal,
            'supervisors' => $supervisors,
            'unassignedRooms' => $unassignedRooms,
            'housekeepers' => $housekeepers,
            'cleaningTypes' => $cleaningTypes,
            'assignedRoomsByHk' => $assignedRoomsByHk,
            'cleaningStartedRooms' => $cleaningStartedRooms,
        ]);
    }

    public function printAssignment(Request $request)
    {
        $propertyId = $this->propertyid;
        $effectiveDate = $this->ncurdate;
        $hkCode = $request->input('hk_code', '');
        $company = Companyreg::where('propertyid', $propertyId)->first();

        $rows = DB::table('hkroomassigns as HA')
            ->distinct()
            ->select(
                'HA.code',
                'HA.supervisor',
                'HA.roomno',
                'HA.ctype',
                'HA.esttime',
                'HA.assno',
                'FL.name as floor',
                'C.name as type',
                'HK.name as hkname',
                'SUP.name as supname',
                DB::raw("CASE WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Occupied Dirty' ELSE 'Vacant Dirty' END AS roomstatus"),
                DB::raw("CASE WHEN RC.folioNo > 0 AND RM.room_stat = 'D' THEN 'Normal' ELSE 'High' END AS priority"),
                'CT.name as ctypename'
            )
            ->join('room_mast as RM', function ($j) use ($propertyId) {
                $j->on('HA.roomno', '=', 'RM.rcode')
                    ->where('RM.propertyid', $propertyId)
                    ->where('RM.type', 'RO');
            })
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('roomocc as RC', function ($j) use ($propertyId) {
                $j->on('RM.rcode', '=', 'RC.roomno')
                    ->whereNull('RC.chkoutdate')
                    ->where('RC.propertyid', $propertyId);
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HA.code', '=', 'HK.scode')
                    ->where('HK.propertyid', $propertyId);
            })
            ->leftJoin('hksupervisor as SUP', function ($j) use ($propertyId) {
                $j->on('HA.supervisor', '=', 'SUP.code')
                    ->where('SUP.propertyid', $propertyId);
            })
            ->leftJoin('hkcleaningtype as CT', function ($j) use ($propertyId) {
                $j->on('HA.ctype', '=', 'CT.code')
                    ->where('CT.propertyid', $propertyId);
            })
            ->where('HA.propertyid', $propertyId)
            ->where('HA.vdate', $effectiveDate)
            ->where('HA.status', 'dirty')
            ->where(function ($q) {
                $q->where('HA.cleaningstatus', '')
                    ->orWhereNull('HA.cleaningstatus');
            })
            ->when($hkCode, function ($q) use ($hkCode) {     // ← NEW BLOCK
                return $q->where('HA.code', $hkCode);
            })
            ->orderBy('HA.code')
            ->orderBy('HA.roomno')
            ->get();

        $groupedByHk = [];
        foreach ($rows as $row) {
            $code = $row->code;
            if (! isset($groupedByHk[$code])) {
                $groupedByHk[$code] = [
                    'hkname' => $row->hkname ?? $code,
                    'supname' => $row->supname ?? '',
                    'assno' => $row->assno ?? '',
                    'rooms' => [],
                ];
            }
            $groupedByHk[$code]['rooms'][] = $row;
        }

        $pdf = Pdf::loadView('property.print.hkassignmentprint', [
            'company' => $company,
            'groupedByHk' => $groupedByHk,
            'asOnDate' => $effectiveDate,
            'totalAssigned' => $rows->count(),
            'totalHk' => count($groupedByHk),
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('hk-assignment-' . $effectiveDate . '.pdf');
    }

    // NEW METHOD assignmentViewPage()

    public function assignmentViewPage(Request $request)
    {
        $propertyId = $this->propertyid;
        $company = Companyreg::where('propertyid', $propertyId)->first();
        $housekeepers = HousekeeperMast::where('propertyid', $propertyId)
            ->where('activeYN', 'Y')
            ->orderBy('name')
            ->get();

        return view('property.housekeeping.assignmentview', [
            'company' => $company,
            'housekeepers' => $housekeepers,
            'fromDate' => $request->input('from_date', $this->ncurdate),
            'toDate' => $request->input('to_date', $this->ncurdate),
        ]);
    }

    // assignmentViewReport()

    public function assignmentViewReport(Request $request)
    {
        $propertyId = $this->propertyid;
        $fromDate = $request->input('from_date', $this->ncurdate);
        $toDate = $request->input('to_date', $this->ncurdate);
        $hkCode = $request->input('hk_code', '');

        $data = DB::table('hkroomassigns as HA')
            ->select(
                'HA.vdate',
                'HA.code',
                'HA.roomno',
                'HA.ctype',
                'HA.supervisor',
                'HA.assno',
                'HK.name as hkname',
                'SUP.name as supname',
                'FL.name as floor',
                'C.name as type',
                'CT.name as ctypename'
            )
            ->join('room_mast as RM', function ($j) use ($propertyId) {
                $j->on('HA.roomno', '=', 'RM.rcode')
                    ->where('RM.propertyid', $propertyId)
                    ->where('RM.type', 'RO');
            })
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HA.code', '=', 'HK.scode')
                    ->where('HK.propertyid', $propertyId);
            })
            ->leftJoin('hksupervisor as SUP', function ($j) use ($propertyId) {
                $j->on('HA.supervisor', '=', 'SUP.code')
                    ->where('SUP.propertyid', $propertyId);
            })
            ->leftJoin('hkcleaningtype as CT', function ($j) use ($propertyId) {
                $j->on('HA.ctype', '=', 'CT.code')
                    ->where('CT.propertyid', $propertyId);
            })
            ->where('HA.propertyid', $propertyId)
            ->where('HA.status', 'dirty')
            ->whereBetween('HA.vdate', [$fromDate, $toDate])
            ->when($hkCode, function ($q) use ($hkCode) {
                return $q->where('HA.code', $hkCode);
            })
            ->orderBy('HA.vdate')->orderBy('HA.code')->orderBy('HA.roomno')
            ->get();

        // Group by date → HK
        $grouped = [];
        foreach ($data as $row) {
            $date = $row->vdate;
            $code = $row->code;
            if (! isset($grouped[$date])) {
                $grouped[$date] = [];
            }
            if (! isset($grouped[$date][$code])) {
                $grouped[$date][$code] = [
                    'hkname' => $row->hkname ?? $code,
                    'supname' => $row->supname ?? '',
                    'assno' => $row->assno,
                    'rooms' => [],
                ];
            }
            $grouped[$date][$code]['rooms'][] = $row;
        }

        // Build HTML table + summary
        $html = '';
        if (empty($grouped)) {
            $html = '<div class="text-center text-muted py-5">No assignments found.</div>';
        } else {
            foreach ($grouped as $date => $hks) {
                $dateFormatted = Carbon::parse($date)->format('d-M-Y');
                $dateTotal = collect($hks)->sum(fn($h) => count($h['rooms']));
                $html .= '<div class="hk-block open mb-3">';
                $html .= '<div class="hk-header px-3 py-2">📅 ' . $dateFormatted . ' — <span class="text-primary">' . $dateTotal . ' Rooms</span></div>';
                $html .= '<div class="hk-body-scroll p-0">';
                $html .= '<table class="table table-sm table-hover mb-0 align-middle">';
                $html .= '<thead class="table-light"><tr><th>HK Name</th><th>Supervisor</th><th>AssNo</th><th>Room No.</th><th>Floor</th><th>Type</th><th>CType</th></tr></thead><tbody>';
                foreach ($hks as $code => $hk) {
                    $rowspan = count($hk['rooms']);
                    $first = true;
                    foreach ($hk['rooms'] as $room) {
                        $html .= '<tr>';
                        if ($first) {
                            $html .= '<td rowspan="' . $rowspan . '" class="fw-semibold">' . e($hk['hkname']) . '</td>';
                            $html .= '<td rowspan="' . $rowspan . '">' . e($hk['supname']) . '</td>';
                            $html .= '<td rowspan="' . $rowspan . '"><span class="badge bg-info text-dark">#' . e($hk['assno'] ?? '-') . '</span></td>';
                            $first = false;
                        }
                        $html .= '<td>' . e($room->roomno) . '</td><td>' . e($room->floor ?? '—') . '</td><td>' . e($room->type ?? '—') . '</td><td>' . e($room->ctypename ?? '—') . '</td>';
                        $html .= '</tr>';
                    }
                }
                $html .= '</tbody></table></div></div>';
            }
        }

        return response()->json(['success' => true, 'html' => $html, 'total' => $data->count()]);
    }

    // assignmentViewPrint() – catalogmaster jaisa DomPDF print

    public function assignmentViewPrint(Request $request)
    {
        $propertyId = $this->propertyid;
        $fromDate = $request->input('from_date', $this->ncurdate);
        $toDate = $request->input('to_date', $this->ncurdate);
        $hkCode = $request->input('hk_code', '');

        $data = DB::table('hkroomassigns as HA')
            ->select(
                'HA.vdate',
                'HA.code',
                'HA.roomno',
                'HA.ctype',
                'HA.supervisor',
                'HA.assno',
                'HK.name as hkname',
                'SUP.name as supname',
                'FL.name as floor',
                'C.name as type',
                'CT.name as ctypename'
            )
            ->join('room_mast as RM', function ($j) use ($propertyId) {
                $j->on('HA.roomno', '=', 'RM.rcode')
                    ->where('RM.propertyid', $propertyId)
                    ->where('RM.type', 'RO');
            })
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HA.code', '=', 'HK.scode')
                    ->where('HK.propertyid', $propertyId);
            })
            ->leftJoin('hksupervisor as SUP', function ($j) use ($propertyId) {
                $j->on('HA.supervisor', '=', 'SUP.code')
                    ->where('SUP.propertyid', $propertyId);
            })
            ->leftJoin('hkcleaningtype as CT', function ($j) use ($propertyId) {
                $j->on('HA.ctype', '=', 'CT.code')
                    ->where('CT.propertyid', $propertyId);
            })
            ->where('HA.propertyid', $propertyId)
            ->where('HA.status', 'dirty')
            ->whereBetween('HA.vdate', [$fromDate, $toDate])
            ->when($hkCode, function ($q) use ($hkCode) {
                return $q->where('HA.code', $hkCode);
            })
            ->orderBy('HA.vdate')->orderBy('HA.code')->orderBy('HA.roomno')
            ->get();

        $grouped = [];
        foreach ($data as $row) {
            $date = $row->vdate;
            $code = $row->code;
            if (! isset($grouped[$date])) {
                $grouped[$date] = [];
            }
            if (! isset($grouped[$date][$code])) {
                $grouped[$date][$code] = [
                    'hkname' => $row->hkname ?? $code,
                    'supname' => $row->supname ?? '',
                    'assno' => $row->assno,
                    'rooms' => [],
                ];
            }
            $grouped[$date][$code]['rooms'][] = $row;
        }

        $hkFilterName = '';
        if ($hkCode) {
            $hkFilterName = HousekeeperMast::where('propertyid', $propertyId)->where('scode', $hkCode)->value('name') ?? '';
        }
        $company = Companyreg::where('propertyid', $propertyId)->first();

        $pdf = Pdf::loadView('property.print.assignmentviewprint', [
            'company' => $company,
            'grouped' => $grouped,
            'fromDate' => $fromDate,
            'toDate' => $toDate,
            'hkFilterName' => $hkFilterName,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('view-assignment-' . date('YmdHis') . '.pdf');
    }

    public function saveAssignmentReport(Request $request)
    {
        $propertyId = $this->propertyid;
        $asOnDate = getNcurDate();
        $assignments = json_decode($request->input('assignments', '[]'), true);
        $userName = Auth::user()->name ?? '';
        $vtime = date('H:i:s');

        DB::transaction(function () use ($propertyId, $asOnDate, $assignments, $userName, $vtime) {

            // ── Step 1: Global max assno fetch karo (property level) ──────────
            $globalMax = DB::table('hkroomassigns')
                ->where('propertyid', $propertyId)
                ->max('assno') ?? 0;

            // ── Step 2: Existing rooms fetch karo (aaj ke dirty) ─────────────
            // Sirf roomno chahiye taaki naye rooms pehchaan sakein
            $existingRoomKeys = DB::table('hkroomassigns')
                ->where('propertyid', $propertyId)
                ->where('vdate', $asOnDate)
                ->where('status', 'dirty')
                ->get(['code', 'roomno'])
                ->keyBy(function ($item) {
                    return $item->code . '_' . $item->roomno;
                });

            // ── Step 3: Har HK ko assno assign karo ──────────────────────────
            // Existing HK ka assno preserve karo, naye ko increment karo
            $existingAssnoByCode = DB::table('hkroomassigns')
                ->where('propertyid', $propertyId)
                ->where('vdate', $asOnDate)
                ->where('status', 'dirty')
                ->whereNotNull('assno')
                ->where('assno', '>', 0)
                ->get(['code', 'assno'])
                ->keyBy('code');

            $hkAssnoMap = [];
            foreach ($assignments as $hk) {
                $code = $hk['scode'] ?? '';
                $supervisor = $hk['supervisor'] ?? '';
                if (empty($code) || empty($hk['rooms']) || ! is_array($hk['rooms'])) {
                    continue;
                }
                if (isset($hkAssnoMap[$code])) {
                    continue;
                }

                // Sirf supervisor wale HK ko assno assign karo
                if (empty($supervisor)) {
                    continue;
                }

                if (isset($existingAssnoByCode[$code])) {
                    // Purana valid assno preserve karo
                    $hkAssnoMap[$code] = $existingAssnoByCode[$code]->assno;
                } else {
                    // Naya HK with supervisor → naya assno
                    $globalMax++;
                    $hkAssnoMap[$code] = $globalMax;
                }
            }

            // ── Step 4: Naye rooms INSERT karo (jo DB mein nahi hain) ────────
            $toInsert = [];
            foreach ($assignments as $hk) {
                $code = $hk['scode'] ?? '';
                if (empty($code) || empty($hk['rooms']) || ! is_array($hk['rooms'])) {
                    continue;
                }

                foreach ($hk['rooms'] as $room) {
                    if (empty($room['roomno'])) {
                        continue;
                    }
                    $key = $code . '_' . $room['roomno'];
                    if ($existingRoomKeys->has($key)) {
                        continue;
                    } // Already hai → skip INSERT

                    $toInsert[] = [
                        'propertyid' => $propertyId,
                        'code' => $code,
                        'vdate' => $asOnDate,
                        'vtime' => $vtime,
                        'roomno' => $room['roomno'],
                        'status' => 'dirty',
                        'ctype' => $room['ctype'] ?? null,
                        'esttime' => $room['esttime'] ?? null,
                        'u_name' => $userName,
                        'supervisor' => $hk['supervisor'] ?? '',
                        'assno' => $hkAssnoMap[$code] ?? null,
                    ];
                }
            }

            if (! empty($toInsert)) {
                DB::table('hkroomassigns')->insert($toInsert);
            }

            // ── Step 5: Senior ki query — per HK ek single UPDATE ────────────
            // UPDATE hkroomassigns
            //   SET assno = ?, supervisor = ?
            // WHERE propertyid = ? AND code = ? AND vdate = ? AND roomno IN (...)
            foreach ($assignments as $hk) {
                $code = $hk['scode'] ?? '';
                $supervisor = $hk['supervisor'] ?? '';
                if (empty($code) || empty($hk['rooms']) || ! is_array($hk['rooms'])) {
                    continue;
                }

                // Supervisor nahi diya → assno/supervisor update mat karo
                if (empty($supervisor)) {
                    continue;
                }

                $roomNos = collect($hk['rooms'])->pluck('roomno')->filter()->values()->toArray();
                if (empty($roomNos)) {
                    continue;
                }

                $assno = $hkAssnoMap[$code] ?? null;
                if (empty($assno)) {
                    continue;
                }

                DB::table('hkroomassigns')
                    ->where('propertyid', $propertyId)
                    ->where('code', $code)
                    ->where('vdate', $asOnDate)
                    ->whereIn('roomno', $roomNos)
                    ->update([
                        'assno' => $assno,
                        'supervisor' => $supervisor,
                        'u_name' => $userName,
                        'vtime' => $vtime,
                    ]);
            }

            // NOTE: DELETE intentionally nahi hai.
            // Rooms sirf INSERT ya UPDATE hoti hain, kabhi delete nahi hoti.
        });

        return response()->json(['success' => true, 'message' => 'Assignment saved successfully.']);
    }

    // ─── Unassign Rooms ───────────────────────────────────────────────────────────
    // Senior ki query:
    // UPDATE hkroomassigns
    //   SET assno = 0, supervisor = ''
    // WHERE propertyid = ? AND code = ? AND vdate = ncurdate AND roomno IN (...)

    public function unassignRooms(Request $request)
    {
        $propertyId = $this->propertyid;
        $asOnDate = getNcurDate();
        $rooms = json_decode($request->input('rooms', '[]'), true);  // array of {roomno, code}
        $userName = Auth::user()->name ?? '';

        if (empty($rooms) || ! is_array($rooms)) {
            return response()->json(['success' => false, 'message' => 'No rooms provided.']);
        }

        try {
            DB::transaction(function () use ($propertyId, $asOnDate, $rooms) {

                // Group rooms by HK code — ek HK ke saare rooms ek saath UPDATE honge
                $grouped = [];
                foreach ($rooms as $r) {
                    $code = $r['code'] ?? '';
                    $roomno = $r['roomno'] ?? '';
                    if (empty($code) || empty($roomno)) {
                        continue;
                    }
                    $grouped[$code][] = $roomno;
                }

                // Per HK — DELETE rows from hkroomassigns
                // DELETE FROM hkroomassigns
                // WHERE propertyid=? AND code=? AND vdate=? AND roomno IN (...)
                foreach ($grouped as $code => $roomNos) {
                    DB::table('hkroomassigns')
                        ->where('propertyid', $propertyId)
                        ->where('code', $code)
                        ->where('vdate', $asOnDate)
                        ->whereIn('roomno', $roomNos)
                        ->delete();
                }
            });

            return response()->json(['success' => true, 'message' => 'Rooms unassigned successfully.']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    // ─── Room Status Board ────────────────────────────────────────────────────────

    private function getRoomsWithStatus($propertyId)
    {
        $rooms = DB::table('room_mast as RM')
            ->select(
                'RM.rcode as roomno',
                'FL.name as floor',
                'RM.room_cat as room_cat_code',
                'C.name as roomcatname',
                'RM.room_stat',
                'RC.folioNo'
            )
            ->join('hkfloors as FL', function ($j) {
                $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
            })
            ->leftJoin('roomocc as RC', function ($j) use ($propertyId) {
                $j->on('RM.rcode', '=', 'RC.roomno')
                    ->whereNull('RC.chkoutdate')
                    ->where('RC.propertyid', $propertyId);
            })
            ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
            ->where('RM.propertyid', $propertyId)
            ->where('RM.type', 'RO')
            ->where('RM.inclcount', 'Y')
            ->orderBy('FL.name')
            ->orderBy('RM.rcode')
            ->get();

        return $rooms->map(function ($room) {
            $room->status = $this->deriveRoomStatus($room);

            return $room;
        });
    }

    public function roomstatusboard(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $propertyId = $this->propertyid;

        // 1. Fetch Master Rooms
        $allRooms = $this->getRoomsWithStatus($propertyId);

        // 1a. Overlay active blockouts (OOO / Maintenance) from roomblockout table
        // Active = cleardate still NULL (not cleared yet)
        $activeBlockouts = DB::table('roomblockout')
            ->where('propertyid', $propertyId)
            ->whereNull('cleardate')
            ->get()
            ->keyBy('roomcode');

        $allRooms = $allRooms->map(function ($room) use ($activeBlockouts) {
            $blockout = $activeBlockouts->get($room->roomno);
            if ($blockout) {
                $blockValue = strtolower(trim($blockout->block ?? ''));
                $room->status = str_contains($blockValue, 'maint') ? 'MAINT' : 'OOO';
                $room->block_reason = $blockout->reasons;
            }

            return $room;
        });

        // 2. Fetch Unique Room Types for dropdown filter
        $roomTypes = $allRooms->unique('room_cat_code')
            ->filter(fn($room) => ! empty($room->room_cat_code))
            ->map(fn($room) => [
                'room_cat_code' => $room->room_cat_code,
                'roomcatname' => $room->roomcatname ?? 'Unknown Type',
            ]);

        // 3. Dynamic Filtering
        $filteredRooms = clone $allRooms;
        if ($request->filled('floor')) {
            $filteredRooms = $filteredRooms->where('floor', $request->floor);
        }
        if ($request->filled('status')) {
            $filteredRooms = $filteredRooms->where('status', $request->status);
        }
        if ($request->filled('room_type')) {
            $filteredRooms = $filteredRooms->where('room_cat_code', $request->room_type);
        }

        // 4. TOP STAT CARDS
        $totalRooms = $allRooms->count();
        $occupiedRooms = $allRooms->where('status', 'OCC')->count();
        $occupiedDirty = $allRooms->where('status', 'OD')->count();
        $vacantDirty = $allRooms->where('status', 'VD')->count();
        $vacantClean = $allRooms->where('status', 'VC')->count();
        $outOfOrder = $allRooms->where('status', 'OOO')->count();
        $maintenanceRooms = $allRooms->where('status', 'MAINT')->count();
        // Inspection Pending count from hkcleaninghdr (not from room_mast status)
        $inspectionPending = DB::table('hkcleaninghdr')
            ->where('propertyid', $propertyId)
            ->where('cleaningstatus', 'Completed')
            ->where('inspectionstatus', 'Pending')
            ->count();

        // Pending Inspections list for bottom card
        $pendingInspections = DB::table('hkcleaninghdr as HC')
            ->select(
                'HC.roommo as roomno',
                'HC.priority',
                'HK.name as hkname'
            )
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HC.housekeeperid', '=', 'HK.scode')
                    ->where('HK.propertyid', $propertyId);
            })
            ->where('HC.propertyid', $propertyId)
            ->where('HC.cleaningstatus', 'Completed')
            ->where('HC.inspectionstatus', 'Pending')
            ->orderBy('HC.roommo')
            ->get();

        $totalActualOcc = $allRooms->whereIn('status', ['OCC', 'OD'])->count();
        $occupancyRate = $totalRooms > 0 ? round(($totalActualOcc / $totalRooms) * 100, 2) : 0;

        // 5. GROUP BY FLOOR GRID
        $roomsByFloor = $filteredRooms->groupBy('floor')->map(function ($floorRooms, $floor) {
            return [
                'floor' => $floor,
                'total' => $floorRooms->count(),
                'occ' => $floorRooms->where('status', 'OCC')->count(),
                'od' => $floorRooms->where('status', 'OD')->count(),
                'vc' => $floorRooms->where('status', 'VC')->count(),
                'vd' => $floorRooms->where('status', 'VD')->count(),
                'maint' => $floorRooms->where('status', 'MAINT')->count(),
                'rooms' => $floorRooms,
            ];
        });

        // UPDATED: system current date instead of hardcoded
        $housekeeperWorkloads = DB::table('hkroomassigns as HA')
            ->leftJoin('housekeeparmast as H', 'HA.code', '=', 'H.scode')
            ->select(
                'H.name as HouseKeeper',
                DB::raw('COUNT(HA.roomno) as total_assigned'),
                DB::raw("SUM(CASE WHEN HA.cleaningstatus = 'Completed' THEN 1 ELSE 0 END) as total_done")
            )
            ->where('HA.propertyid', $this->propertyid)
            ->where('HA.vdate', ncurdate())
            ->groupBy('H.name')
            ->get();

        $statusMap = $this->roomStatusLabelMap();
        $uniqueFloors = $allRooms->pluck('floor')->unique()->filter();

        return view('property.housekeeping.roomstatusboard', compact(
            'totalRooms',
            'occupiedRooms',
            'occupiedDirty',
            'vacantDirty',
            'vacantClean',
            'outOfOrder',
            'maintenanceRooms',
            'inspectionPending',
            'pendingInspections',
            'roomsByFloor',
            'housekeeperWorkloads',
            'statusMap',
            'roomTypes',
            'uniqueFloors',
            'company',
            'occupancyRate'
        ));
    }

    /**
     * Group an already-fetched room collection by floor, with per-floor counts,
     * for the Room Status Board grid.
     */
    private function getRoomGridByFloor($rooms)
    {
        return $rooms->groupBy('floor')->map(function ($floorRooms, $floor) {
            return [
                'floor' => $floor,
                'total' => $floorRooms->count(),
                'occ' => $floorRooms->whereIn('status', ['OCC', 'OD'])->count(),
                'vclean' => $floorRooms->where('status', 'VC')->count(),
                'rooms' => $floorRooms,
            ];
        });
    }

    /**
     * Derive a single display status code for one room, combining
     * occupancy (roomocc/folioNo) with housekeeping state (room_stat).
     * room_stat: C = Clean, D = Dirty, O = Out of Order, I = Inspection pending
     */
    private function deriveRoomStatus($room)
    {
        $isOccupied = ($room->folioNo ?? 0) > 0;

        if ($room->room_stat === 'I') {
            return 'INSPECT';
        }

        if ($isOccupied) {
            return $room->room_stat === 'D' ? 'OD' : 'OCC';
        }

        return $room->room_stat === 'D' ? 'VD' : 'VC';
    }

    /**
     * Label + CSS class map for each room status code, used by the blade grid.
     */
    private function roomStatusLabelMap()
    {
        return [
            'OCC' => ['label' => 'Occupied',          'class' => 'rsb-b-occupied'],
            'OD' => ['label' => 'Occupied Dirty',     'class' => 'rsb-b-odirty'],
            'VC' => ['label' => 'Vacant Clean',       'class' => 'rsb-b-vclean'],
            'VD' => ['label' => 'Vacant Dirty',       'class' => 'rsb-b-vdirty'],
            'OOO' => ['label' => 'Out of Order',       'class' => 'rsb-b-ooo'],
            'MAINT' => ['label' => 'Maintenance',        'class' => 'rsb-b-maint'],
            'INSPECT' => ['label' => 'Inspection Pending', 'class' => 'rsb-b-inspect'],
        ];
    }

    // ─── Start Room Cleaning ─────────────────────────────────────────────────────

    public function startcleaning(Request $request)
    {
        $propertyId = $this->propertyid;
        $asOnDate = $this->ncurdate;
        date_default_timezone_set('Asia/Kolkata');
        $startTime = date('h:i A');

        $cleaningTypes = DB::table('hkcleaningtype')
            ->where('propertyid', $propertyId)
            ->orderBy('id')
            ->get();

        // Sirf aaj (ncurdate) ki dirty rooms jisme supervisor assign ho
        // $assignedRooms = DB::table('hkroomassigns')
        //     ->select('id', 'roomno', 'code', 'supervisor', 'ctype', 'esttime')
        //     ->where('propertyid', $propertyId)
        //     ->where('vdate', $asOnDate)
        //     ->where('status', 'dirty')
        //     ->where('supervisor', '!=', '')
        //     ->whereNotNull('supervisor')
        //     ->orderBy('roomno')
        //     ->get();

        $assignedRooms = DB::table('hkroomassigns')
            ->select('id', 'roomno', 'code', 'supervisor', 'ctype', 'esttime')
            ->where('propertyid', $propertyId)
            ->where('vdate', $asOnDate)
            ->where('status', 'dirty')
            ->where(function ($q) {
                $q->where('cleaningstatus', '')
                    ->orWhereNull('cleaningstatus');
            })
            ->where('supervisor', '!=', '')
            ->whereNotNull('supervisor')
            ->orderBy('roomno')
            ->get();

        $assignId = $request->query('id');
        $fromQr = ! empty($assignId);   // QR scan se aaya hai to id hoga
        $assign = $room = $guest = $nextArrival = $housekeeper = $supervisor = null;
        $currentStatusLabel = $priority = '';

        if ($assignId) {
            $assign = DB::table('hkroomassigns')
                ->where('id', $assignId)
                ->where('propertyid', $propertyId)
                ->first();

            if ($assign) {
                $roomno = $assign->roomno;

                $room = DB::table('room_mast as RM')
                    ->select('RM.rcode as roomno', 'RM.room_stat', 'FL.name as floorname', 'C.name as roomtype')
                    ->leftJoin('hkfloors as FL', function ($j) {
                        $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
                    })
                    ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
                    ->where('RM.rcode', $roomno)
                    ->where('RM.propertyid', $propertyId)
                    ->first();

                $guest = DB::table('roomocc as RO')
                    ->join('guestprof as GP', function ($j) use ($propertyId) {
                        $j->on('GP.guestcode', '=', 'RO.guestprof')
                            ->where('GP.propertyid', $propertyId);
                    })
                    ->select('GP.name as guestname', 'GP.vipStatus', 'RO.chkouttime', 'RO.folioNo')
                    ->where('RO.roomno', $roomno)
                    ->where('RO.propertyid', $propertyId)
                    ->whereNull('RO.chkoutdate')
                    ->orderByDesc('RO.id')
                    ->first();

                $nextArrival = DB::table('grpbookingdetails')
                    ->where('RoomNo', $roomno)
                    ->where('Property_ID', $propertyId)
                    ->where('Cancel', 'N')
                    ->where('ContraDocId', '')
                    ->where('ArrDate', '>=', $asOnDate)
                    ->orderBy('ArrDate')
                    ->value('ArrTime');

                $housekeeper = DB::table('housekeeparmast')
                    ->where('propertyid', $propertyId)
                    ->where('scode', $assign->code)
                    ->first();

                $supervisor = DB::table('hksupervisor')
                    ->where('propertyid', $propertyId)
                    ->where('code', $assign->supervisor)
                    ->value('name');

                $isOccupied = $guest && ($guest->folioNo ?? 0) > 0;
                $statusMap = ['C' => 'Vacant Clean', 'D' => 'Vacant Dirty', 'O' => 'Out of Order', 'I' => 'Inspection Pending'];
                $currentStatusLabel = $isOccupied
                    ? ($room->room_stat === 'D' ? 'Occupied Dirty' : 'Occupied Clean')
                    : ($statusMap[$room->room_stat ?? 'D'] ?? 'Vacant Dirty');
                $priority = $isOccupied ? 'Normal' : 'High';
            }
        }

        return view('property.housekeeping.startcleaning', compact(
            'cleaningTypes',
            'assignedRooms',
            'assignId',
            'assign',
            'room',
            'guest',
            'nextArrival',
            'housekeeper',
            'supervisor',
            'currentStatusLabel',
            'priority',
            'startTime',
            'asOnDate',
            'fromQr'
        ));
    }

    public function startcleaningfetch(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $assignId = $request->input('assign_id');

            if (! $assignId) {
                return response()->json(['success' => false, 'message' => 'assign_id required']);
            }

            $assign = DB::table('hkroomassigns')
                ->where('id', $assignId)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $assign) {
                return response()->json(['success' => false, 'message' => 'Assignment not found']);
            }

            $asOnDate = $this->ncurdate;
            $roomno = $assign->roomno;

            $room = DB::table('room_mast as RM')
                ->select('RM.rcode as roomno', 'RM.room_stat', 'FL.name as floorname', 'C.name as roomtype')
                ->leftJoin('hkfloors as FL', function ($j) {
                    $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
                })
                ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
                ->where('RM.rcode', $roomno)
                ->where('RM.propertyid', $propertyId)
                ->first();

            $guest = DB::table('roomocc as RO')
                ->join('guestprof as GP', function ($j) use ($propertyId) {
                    $j->on('GP.guestcode', '=', 'RO.guestprof')
                        ->where('GP.propertyid', $propertyId);
                })
                ->select('GP.name as guestname', 'GP.vipStatus', 'RO.chkouttime', 'RO.folioNo')
                ->where('RO.roomno', $roomno)
                ->where('RO.propertyid', $propertyId)
                ->whereNull('RO.chkoutdate')
                ->orderByDesc('RO.id')
                ->first();

            $nextArrival = DB::table('grpbookingdetails')
                ->where('RoomNo', $roomno)
                ->where('Property_ID', $propertyId)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->where('ArrDate', '>=', $asOnDate)
                ->orderBy('ArrDate')
                ->value('ArrTime');

            $housekeeper = DB::table('housekeeparmast')
                ->where('propertyid', $propertyId)
                ->where('scode', $assign->code)
                ->first();

            $supervisor = DB::table('hksupervisor')
                ->where('propertyid', $propertyId)
                ->where('code', $assign->supervisor)
                ->value('name');

            $isOccupied = $guest && ($guest->folioNo ?? 0) > 0;
            $statusMap = ['C' => 'Vacant Clean', 'D' => 'Vacant Dirty', 'O' => 'Out of Order', 'I' => 'Inspection Pending'];
            $statusLabel = $isOccupied
                ? ($room->room_stat === 'D' ? 'Occupied Dirty' : 'Occupied Clean')
                : ($statusMap[$room->room_stat ?? 'D'] ?? 'Vacant Dirty');

            date_default_timezone_set('Asia/Kolkata');

            return response()->json([
                'success' => true,
                'assign_id' => $assign->id,
                'assign_no' => 'HKA/' . $assign->propertyid . $assign->id,
                'roomno' => $room->roomno ?? '',
                'floorname' => $room->floorname ?? '',
                'roomtype' => $room->roomtype ?? '',
                'status_label' => $statusLabel,
                'priority' => $isOccupied ? 'Normal' : 'High',
                'esttime' => $assign->esttime ?? '',
                'ctype' => $assign->ctype ?? '',
                'guestname' => $guest->guestname ?? '',
                'vipStatus' => $guest->vipStatus ?? 'N',
                'checkouttime' => ($guest && $guest->chkouttime) ? date('h:i A', strtotime($guest->chkouttime)) : '',
                'nextarrival' => $nextArrival ? date('h:i A', strtotime($nextArrival)) : '',
                'hkname' => $housekeeper->name ?? '',
                'hkcode' => $assign->code ?? '',
                'supervisor' => $supervisor ?? '',
                'starttime' => date('h:i A'),
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function submitstartcleaning(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $assign = DB::table('hkroomassigns')
                ->where('id', $request->assign_id)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $assign) {
                return response()->json(['success' => false, 'message' => 'Room select karein!'], 422);
            }

            // ── Duplicate In Progress guard ─────────────────────────────────────
            // Room ka LATEST cleaning record dekho (status ignore karke):
            // - latest 'In Progress' hai → block karo (duplicate na bane)
            // - latest 'Completed' hai → purane stale 'In Progress' records cleanup
            //   karke nayi cleaning start hone do (warna dropdown me purana dikhega)
            $latestCleaning = DB::table('hkcleaninghdr')
                ->where('propertyid', $propertyId)
                ->where('roommo', $assign->roomno)
                ->where('cleaningdate', $this->ncurdate)
                ->orderByDesc('cleaningid')
                ->first();

            if ($latestCleaning && $latestCleaning->cleaningstatus === 'In Progress') {
                return response()->json([
                    'success' => false,
                    'message' => 'Is room ki cleaning already start ho chuki hai! Cleaning No: ' . $latestCleaning->cleaningno . ' — Room Cleaning Entry se complete karein.',
                ], 422);
            }

            // Stale 'In Progress' records (latest Completed hone ke bawajood bache hue) cleanup
            if ($latestCleaning && $latestCleaning->cleaningstatus === 'Completed') {
                DB::table('hkcleaninghdr')
                    ->where('propertyid', $propertyId)
                    ->where('roommo', $assign->roomno)
                    ->where('cleaningdate', $this->ncurdate)
                    ->where('cleaningstatus', 'In Progress')
                    ->update(['cleaningstatus' => 'Completed']);
            }

            DB::beginTransaction();

            $lastNo = DB::table('hkcleaninghdr')
                ->where('propertyid', $propertyId)
                ->max(DB::raw('CAST(cleaningno AS UNSIGNED)'));
            $cleaningno = str_pad(($lastNo ? $lastNo + 1 : 1), 6, '0', STR_PAD_LEFT);

            $lastCleaningId = DB::table('hkcleaninghdr')
                ->where('propertyid', $propertyId)
                ->max('cleaningid');
            $cleaningid = ($lastCleaningId ? $lastCleaningId + 1 : 1);

            date_default_timezone_set('Asia/Kolkata');
            $now = date('Y-m-d H:i:s');

            $beforePhotoPath = null;
            if ($request->hasFile('before_photo')) {
                $rawFile = $request->file('before_photo');
                $file = (new ImageCompressionService)->compress($rawFile);
                $filename = 'hkbefore_' . $propertyId . '_' . time() . '.' . $rawFile->getClientOriginalExtension();
                $uploadDir = public_path('uploads/hkphotos');
                if (! is_dir($uploadDir)) {
                    mkdir($uploadDir, 0755, true);
                }
                $file->move($uploadDir, $filename);
                $beforePhotoPath = 'uploads/hkphotos/' . $filename;
            }

            $roomStat = DB::table('room_mast')
                ->where('rcode', $assign->roomno)
                ->where('propertyid', $propertyId)
                ->value('room_stat');

            $folioNo = DB::table('roomocc')
                ->where('roomno', $assign->roomno)
                ->where('propertyid', $propertyId)
                ->whereNull('chkoutdate')
                ->orderByDesc('id')
                ->value('folioNo');

            DB::table('hkcleaninghdr')->insert([
                'cleaningid' => $cleaningid,
                'propertyid' => $propertyId,
                'cleaningno' => $cleaningno,
                'cleaningdate' => $this->ncurdate,
                'roommo' => $assign->roomno,
                'roomstatusbefore' => $roomStat ?? 'D',
                'roomstatusafter' => null,
                'cleaningtype' => $request->cleaning_type ?? null,
                'housekeeperid' => $assign->code,
                'supervisorid' => $assign->supervisor ?? null,
                'starttime' => $now,
                'endtime' => null,
                'priority' => ($folioNo > 0) ? 'Normal' : 'High',
                'cleaningstatus' => 'In Progress',
                'inspectionrequired' => 'Y',
                'beforephoto' => $beforePhotoPath,
                'assno' => $assign->assno ?? null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $now,
                'u_ae' => 'a',
            ]);

            // ── hkroomassigns me cleaningstatus update karo ───────────────────
            DB::table('hkroomassigns')
                ->where('id', $assign->id)
                ->where('propertyid', $propertyId)
                ->update(['cleaningstatus' => 'In Progress']);

            DB::commit();

            return response()->json(['success' => true, 'message' => 'Cleaning started! No: ' . $cleaningno, 'cleaningid' => $cleaningid]);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // --- Room Cleaning Entry ---

    public function roomcleaningentry(Request $request)
    {
        $propertyId = $this->propertyid;
        $asOnDate = $this->ncurdate;   // ncur date
        $selectedCleaningId = $request->query('cleaningid');
        $fromQr = ! empty($selectedCleaningId);  // QR scan se aaya

        // Sirf aaj (ncur) ki In Progress cleaning dikhao — har room ek baar.
        // IMPORTANT: subquery me status filter NAHI lagana — room ka OVERALL latest
        // cleaningid hona chahiye. Agar room ka latest record Completed hai to woh
        // dropdown se hat jayega, chahe purana stale 'In Progress' record ho hi kyun na.
        $allRooms = DB::table('hkcleaninghdr as H')
            ->select('H.cleaningid', 'H.roommo as rcode', 'H.cleaningno', 'H.cleaningdate', 'H.cleaningstatus')
            ->where('H.propertyid', $propertyId)
            ->where('H.cleaningdate', $asOnDate)
            ->where('H.cleaningstatus', 'In Progress')
            ->whereRaw('H.cleaningid = (
                SELECT MAX(H2.cleaningid)
                FROM hkcleaninghdr H2
                WHERE H2.propertyid   = H.propertyid
                  AND H2.roommo       = H.roommo
                  AND H2.cleaningdate = H.cleaningdate
            )')
            ->orderBy('H.roommo')
            ->get();

        $checklistItems = DB::table('hkchecklistmast')
            ->where('propertyid', $propertyId)
            ->orderBy('sno')
            ->get();

        // amenities: itemmast join for item names
        $amenities = DB::table('hkamentiesmaster as A')
            ->select(
                'A.id',
                'A.item as itemcode',
                'A.type',
                'A.srno',
                DB::raw('COALESCE(I.Name, A.item) as itemname')
            )
            ->leftJoin('itemmast as I', DB::raw('CAST(I.Code AS CHAR)'), '=', DB::raw('CAST(A.item AS CHAR)'))
            ->where('A.propertyid', $propertyId)
            ->orderBy('A.srno')
            ->get()
            ->groupBy('type');

        $cleaningTypes = DB::table('hkcleaningtype')
            ->where('propertyid', $propertyId)
            ->orderBy('id')
            ->get();

        return view('property.housekeeping.roomcleaningentry', compact(
            'allRooms',
            'checklistItems',
            'amenities',
            'cleaningTypes',
            'asOnDate',
            'fromQr',
            'selectedCleaningId'
        ));
    }

    public function fetchcleaningentry(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $cleaningId = $request->input('cleaningid');

            if (! $cleaningId) {
                return response()->json(['success' => false, 'message' => 'cleaningid required']);
            }

            $hdr = DB::table('hkcleaninghdr')
                ->where('cleaningid', $cleaningId)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $hdr) {
                return response()->json(['success' => false, 'message' => 'Record not found']);
            }

            $roomno = $hdr->roommo;

            $room = DB::table('room_mast as RM')
                ->select(
                    'RM.rcode',
                    'RM.room_stat',
                    DB::raw("COALESCE(FL.name, '--') as floorname"),
                    DB::raw("COALESCE(C.name,  '--') as roomtype")
                )
                ->leftJoin('hkfloors as FL', function ($j) {
                    $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
                })
                ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
                ->where('RM.rcode', $roomno)
                ->where('RM.propertyid', $propertyId)
                ->first();

            $guest = DB::table('roomocc as RO')
                ->join('guestprof as GP', function ($j) use ($propertyId) {
                    $j->on('GP.guestcode', '=', 'RO.guestprof')->where('GP.propertyid', $propertyId);
                })
                ->select('GP.name as guestname', 'GP.vipStatus', 'RO.folioNo')
                ->where('RO.roomno', $roomno)->where('RO.propertyid', $propertyId)
                ->whereNull('RO.chkoutdate')->orderByDesc('RO.id')->first();

            $isOccupied = $guest && ($guest->folioNo ?? 0) > 0;
            $statusMap = ['C' => 'Vacant Clean', 'D' => 'Vacant Dirty', 'O' => 'Out of Order', 'I' => 'Inspection Pending'];
            $roomStatusLabel = $isOccupied
                ? ((($room->room_stat ?? 'D') === 'D') ? 'Occupied Dirty' : 'Occupied Clean')
                : ($statusMap[$room->room_stat ?? 'D'] ?? 'Vacant Dirty');

            $hkname = DB::table('housekeeparmast')->where('propertyid', $propertyId)->where('scode', $hdr->housekeeperid)->value('name');
            $supname = DB::table('hksupervisor')->where('propertyid', $propertyId)->where('code', $hdr->supervisorid)->value('name');

            // Fetch saved footer rows from hkcleaningftr
            $ftrRows = DB::table('hkcleaningftr')
                ->where('propertyid', $propertyId)
                ->where('assid', $cleaningId)
                ->orderBy('sno')
                ->get();

            // Separate checklist (complete=1) sn values — matched by item name
            $allChks = DB::table('hkchecklistmast')
                ->where('propertyid', $propertyId)
                ->orderBy('sno')
                ->get();
            $checkedItems = [];
            foreach ($ftrRows->where('ctype', 'checklist') as $row) {
                if ($row->complete) {
                    // Match by item code (stored in hkcleaningftr.item)
                    foreach ($allChks as $ci) {
                        if (mb_strtolower(trim($ci->code)) === mb_strtolower(trim($row->item ?? ''))) {
                            $checkedItems[] = (string) $ci->sno;
                        }
                    }
                }
            }

            // Amenity rows (ctype != 'checklist'), return item + type + qty
            $amenityData = [];
            foreach ($ftrRows->whereNotIn('ctype', ['checklist']) as $row) {
                if ($row->qty > 0) {
                    $amenityData[] = [
                        'itemcode' => $row->item,
                        'type' => $row->ctype,
                        'qty' => $row->qty,
                    ];
                }
            }

            date_default_timezone_set('Asia/Kolkata');

            return response()->json([
                'success' => true,
                'cleaningid' => $hdr->cleaningid,
                'cleaningno' => $hdr->cleaningno ?? '--',
                'cleaningdate' => $hdr->cleaningdate ? Carbon::parse($hdr->cleaningdate)->format('d-M-Y') : '--',
                'cleaningstatus' => $hdr->cleaningstatus ?? '',
                'roomno' => $roomno,
                'floorname' => $room->floorname ?? '--',
                'roomtype' => $room->roomtype ?? '--',
                'roomstatus' => $roomStatusLabel,
                'priority' => $hdr->priority ?? 'High',
                'cleaningtype' => $hdr->cleaningtype ?? '',
                'hkname' => $hkname ?? '--',
                'supname' => $supname ?? '--',
                // 'starttime'      => $hdr->starttime ? date('h:i A', strtotime($hdr->starttime)) : '--',
                // 'endtime'        => $hdr->endtime   ? date('h:i A', strtotime($hdr->endtime))   : '--',
                'starttime' => $hdr->starttime ? Carbon::parse($hdr->starttime)->setTimezone('Asia/Kolkata')->format('h:i A') : '--',
                'endtime' => $hdr->endtime ? Carbon::parse($hdr->endtime)->setTimezone('Asia/Kolkata')->format('h:i A') : '--',
                'totalminutes' => $hdr->totalminutes ?? null,
                'inspectionreq' => $hdr->inspectionrequired ?? 'Y',
                'remarks' => $hdr->remarks ?? '',
                'beforephoto' => $hdr->beforephoto ? asset($hdr->beforephoto) : null,
                'afterphoto' => $hdr->afterphoto ? asset($hdr->afterphoto) : null,
                'guestname' => $guest->guestname ?? '',
                'vipstatus' => $guest->vipStatus ?? 'N',
                'checkeditems' => $checkedItems,
                'amenitydata' => $amenityData,
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function submitcleaningentry(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $cleaningId = $request->input('cleaning_id');
            if (! $cleaningId) {
                return response()->json(['success' => false, 'message' => 'Cleaning record select karein!']);
            }

            $hdr = DB::table('hkcleaninghdr')
                ->where('cleaningid', $cleaningId)->where('propertyid', $propertyId)->first();
            if (! $hdr) {
                return response()->json(['success' => false, 'message' => 'Record not found!']);
            }

            date_default_timezone_set('Asia/Kolkata');
            $now = date('Y-m-d H:i:s');
            $date = $this->ncurdate;   // ncurdate use karo — server date nahi (stock/ftr me sahi date jayegi)
            $time = date('H:i:s');
            $uname = Auth::user()->u_name;

            $uploadDir = public_path('uploads/hkphotos');
            if (! is_dir($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }

            $beforePhotoPath = $hdr->beforephoto;
            if ($request->hasFile('before_photo')) {
                $rawF = $request->file('before_photo');
                $f = (new ImageCompressionService)->compress($rawF);
                $fn = 'hkbefore_' . $propertyId . '_' . $cleaningId . '_' . time() . '.' . $rawF->getClientOriginalExtension();
                $f->move($uploadDir, $fn);
                $beforePhotoPath = 'uploads/hkphotos/' . $fn;
                DB::table('hkcleaninghdr')->where('cleaningid', $cleaningId)->where('propertyid', $propertyId)
                    ->update(['beforephoto' => $beforePhotoPath]);
            }

            $afterPhotoPath = $hdr->afterphoto;
            if ($request->hasFile('after_photo')) {
                $rawF = $request->file('after_photo');
                $f = (new ImageCompressionService)->compress($rawF);
                $fn = 'hkafter_' . $propertyId . '_' . $cleaningId . '_' . time() . '.' . $rawF->getClientOriginalExtension();
                $f->move($uploadDir, $fn);
                $afterPhotoPath = 'uploads/hkphotos/' . $fn;
            }

            DB::beginTransaction();

            DB::table('hkcleaningftr')->where('propertyid', $propertyId)->where('assid', $cleaningId)->delete();

            $rows = [];
            $sno = 1;

            $checklist = json_decode($request->input('checklist', '[]'), true) ?: [];
            $allChks = DB::table('hkchecklistmast')->where('propertyid', $propertyId)->orderBy('sno')->get();
            foreach ($allChks as $ci) {
                $rows[] = [
                    'propertyid' => $propertyId,
                    'assid' => $cleaningId,
                    'sno' => $sno++,
                    'date' => $date,
                    'item' => $ci->code,
                    'ctype' => 'checklist',
                    'complete' => in_array((string) $ci->sno, array_map('strval', $checklist)) ? 1 : 0,
                    'qty' => null,
                    'time' => $time,
                    'u_name' => $uname,
                    'created_at' => $now,
                    'u_ae' => 'a',
                ];
            }

            $amenities = json_decode($request->input('amenities', '[]'), true) ?: [];
            foreach ($amenities as $am) {
                $rawQty = str_replace(',', '.', (string) ($am['qty'] ?? ''));
                $qty = is_numeric($rawQty) ? (float) $rawQty : null;
                if (! $qty || $qty <= 0) {
                    continue;
                } // skip zero/invalid amenity rows
                $rows[] = [
                    'propertyid' => $propertyId,
                    'assid' => $cleaningId,
                    'sno' => $sno++,
                    'date' => $date,
                    'item' => $am['itemcode'] ?? '',
                    'ctype' => $am['type'] ?? '',
                    'complete' => 1,
                    'qty' => $qty,
                    'time' => $time,
                    'u_name' => $uname,
                    'created_at' => $now,
                    'u_ae' => 'a',
                ];
            }

            if (! empty($rows)) {
                DB::table('hkcleaningftr')->insert($rows);
            }

            $isComplete = $request->input('action') === 'complete';
            $cleaningStatus = $isComplete ? 'Completed' : 'In Progress';
            $endTime = $totalMinutes = null;
            if ($isComplete) {
                $endTime = $now;
                $totalMinutes = (int) round((strtotime($endTime) - strtotime($hdr->starttime ?? $now)) / 60);
            }

            $updateHdr = [
                'remarks' => $request->input('remarks', ''),
                'inspectionrequired' => $request->input('inspection_required', 'N'),
                'afterphoto' => $afterPhotoPath,
                'priority' => $request->input('priority', $hdr->priority),
                'cleaningstatus' => $cleaningStatus,
                'u_name' => $uname,
                'u_ae' => 'e',
            ];
            if ($isComplete) {
                $updateHdr['endtime'] = $endTime;
                $updateHdr['totalminutes'] = $totalMinutes;
                $updateHdr['roomstatusafter'] = 'C';
                // Cleaning complete hone pe inspectionstatus = 'Pending' set karo
                $updateHdr['inspectionstatus'] = 'Pending';
            }
            if ($isComplete) {
                // Room ke saare 'In Progress' records complete karo —
                // duplicate/stale records bhi clean ho jayenge taaki room
                // dropdown se hat jaye aur table me 2 baar na dikhe.
                DB::table('hkcleaninghdr')
                    ->where('propertyid', $propertyId)
                    ->where('roommo', $hdr->roommo)
                    ->where('cleaningdate', $hdr->cleaningdate)
                    ->where('cleaningstatus', 'In Progress')
                    ->update($updateHdr);
            } else {
                DB::table('hkcleaninghdr')->where('cleaningid', $cleaningId)->where('propertyid', $propertyId)->update($updateHdr);
            }

            if ($isComplete) {
                DB::table('room_mast')
                    ->where('propertyid', $propertyId)
                    ->where('rcode', $hdr->roommo)
                    ->where('type', 'RO')
                    ->update(['room_stat' => 'C', 'updated_at' => $now]);

                // ── hkroomassigns me cleaningstatus aur status update karo ──
                // NOTE: assno se match NAHI karna — assno har housekeeper ke saare
                // rooms ke liye common hota hai aur daily regenerate hota hai.
                // Isliye room ke ACTIVE assignment (cleaningstatus='In Progress')
                // ko roomno se target karo.
                DB::table('hkroomassigns')
                    ->where('propertyid', $propertyId)
                    ->where('roomno', $hdr->roommo)
                    ->where('cleaningstatus', 'In Progress')
                    ->update([
                        'cleaningstatus' => 'Completed',
                        'status' => 'clean',
                    ]);
            }

            // ── HKISS Stock Voucher — amenities/chemical jo use hue unki stock entry ──
            // Sirf tab jab amenities ho aur qty > 0
            $amenitiesForStock = array_filter($amenities, function ($am) {
                $rawQty = str_replace(',', '.', (string) ($am['qty'] ?? ''));
                $type = $am['type'] ?? '';

                // Sirf Amenities aur Chemical — Linen stock me nahi jayega
                return is_numeric($rawQty) && (float) $rawQty > 0
                    && in_array($type, ['Amenities', 'Chemical']);
            });

            if (! empty($amenitiesForStock)) {
                $vtype = 'HKISS';
                $hkGodown = 'HK' . $propertyId;

                // VoucherPrefix se vno aur vprefix fetch karo
                $chkvpf = VoucherPrefix::where('propertyid', $propertyId)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $date)
                    ->whereDate('date_to', '>=', $date)
                    ->first();

                if ($chkvpf) {
                    $vno = Stock::where('propertyid', $propertyId)->where('vtype', $vtype)->max('vno') + 1;
                    $vprefix = $chkvpf->prefix;
                    $docid = $propertyId . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                    $stockRows = [];
                    $snoStock = 1;

                    foreach ($amenitiesForStock as $am) {
                        $rawQty = str_replace(',', '.', (string) ($am['qty'] ?? ''));
                        $qty = (float) $rawQty;
                        $icode = $am['itemcode'] ?? '';

                        // Item master se rate, unit, convratio, restcode fetch karo
                        $itemmast = DB::table('itemmast')
                            ->where('Code', $icode)
                            ->where('Property_ID', $propertyId)
                            ->first();

                        $rate = $itemmast->PurchRate ?? 0;
                        $unit = $itemmast->Unit ?? '';
                        $convratio = $itemmast->ConvRatio ?? 1;
                        $restcode = $itemmast->RestCode ?? '';

                        $stockRows[] = [
                            'propertyid' => $propertyId,
                            'docid' => $docid,
                            'sno' => $snoStock++,
                            'vprefix' => $vprefix,
                            'vtype' => $vtype,
                            'vno' => $vno,
                            'vdate' => $date,
                            'roomno' => $hdr->roommo,
                            'item' => $icode,
                            'contradocid' => '',
                            'contrasno' => 0,
                            'departcode' => $hkGodown,
                            'godowncode' => $hkGodown,
                            'rate' => $rate,
                            'recdqty' => 0,
                            'accqty' => 0,
                            'qtyiss' => $qty,
                            'issqty' => $qty,
                            'qtyrec' => 0,
                            'recdunit' => $unit,
                            'issueunit' => $unit,
                            'unit' => $unit,
                            'amount' => $qty * $rate,
                            'convratio' => $convratio,
                            'total' => 0,
                            'itemrestcode' => $restcode,
                            'remarks' => $request->input('remarks', ''),
                            'u_name' => $uname,
                            'created_at' => $now,
                            'u_ae' => 'a',
                            'delflag' => 'N',
                        ];
                    }

                    if (! empty($stockRows)) {
                        Stock::insert($stockRows);

                        // VoucherPrefix increment karo
                        VoucherPrefix::where('propertyid', $propertyId)
                            ->where('v_type', $vtype)
                            ->where('prefix', $vprefix)
                            ->increment('start_srl_no');
                    }
                }
                // Note: agar HKISS VoucherPrefix nahi mila to stock entry skip hogi,
                // cleaning complete hogi normally
            }

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => $isComplete ? 'Cleaning Completed! Room status updated to Clean.' : 'Entry saved successfully!',
                'completed' => $isComplete,
            ]);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ─── Cleaning FTR List (for table below form) ───────────────────────────────

    public function fetchcleaningftrlist(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            // 1 cleaning = 1 row — sirf aaj (ncur) ki records, har room ka LATEST
            $rows = DB::table('hkcleaninghdr as H')
                ->select(
                    'H.cleaningid',
                    'H.cleaningno',
                    'H.roommo',
                    'H.cleaningdate',
                    'H.cleaningstatus'
                )
                ->where('H.propertyid', $propertyId)
                ->where('H.cleaningdate', $this->ncurdate)
                ->whereRaw('H.cleaningid = (
                    SELECT MAX(H2.cleaningid)
                    FROM hkcleaninghdr H2
                    WHERE H2.propertyid   = H.propertyid
                      AND H2.roommo       = H.roommo
                      AND H2.cleaningdate = H.cleaningdate
                )')
                ->orderByDesc('H.cleaningid')
                ->get();

            $data = $rows->map(function ($r) {
                return [
                    'cleaningno' => $r->cleaningno ?? '--',
                    'roommo' => $r->roommo ?? '--',
                    'date' => $r->cleaningdate
                        ? Carbon::parse($r->cleaningdate)->format('d-M-Y')
                        : '--',
                    'cleaningstatus' => $r->cleaningstatus ?? '--',
                ];
            });

            return response()->json(['success' => true, 'data' => $data]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ─── Damage Report ───────────────────────────────────────────────────────────

    /**
     * Show the dedicated Damage Report form page (GET /storedamagereport).
     * Same concept as lostfoundform — form + records table.
     */
    public function damagereportform(Request $request)
    {
        $propertyId = $this->propertyid;

        $rooms = DB::table('room_mast')
            ->where('propertyid', $propertyId)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->orderBy('rcode', 'ASC')
            ->pluck('rcode');

        $records = DB::table('hkdamage')
            ->where('propertyid', $propertyId)
            ->orderByDesc('id')
            ->paginate(20);

        $preRoomno = $request->query('roomno', '');

        return view('property.housekeeping.damagereport', [
            'rooms' => $rooms,
            'records' => $records,
            'preRoomno' => $preRoomno,
            'asOnDate' => $this->ncurdate,
        ]);
    }

    /**
     * Store a new damage report entry into hkdamage.
     */
    public function storedamagereport(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $request->validate([
                'roomno' => 'required|string|max:20',
                'date' => 'required|date',
                'damagetype' => 'required|string|max:50',
                'item' => 'required|string|max:100',
                'description' => 'nullable|string',
            ]);

            date_default_timezone_set('Asia/Kolkata');
            $now = date('Y-m-d H:i:s');

            // ── Duplicate check ───────────────────────────────────────────
            $exists = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->where('roomno', strtoupper(trim($request->roomno)))
                ->where('date', $request->date)
                ->where('damagetype', $request->damagetype)
                ->where('item', trim($request->item))
                ->exists();

            if ($exists) {
                return response()->json([
                    'success' => false,
                    'message' => 'Duplicate entry! Same Room, Date, Damage Type and Item already exists.',
                ], 409);
            }

            // Auto-increment damageid per property
            // damageid is varchar — must cast to unsigned int for correct numeric MAX
            $lastId = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->selectRaw('MAX(CAST(damageid AS UNSIGNED)) as maxid')
                ->value('maxid');
            $damageid = ((int) ($lastId ?? 0)) + 1;

            DB::table('hkdamage')->insert([
                'propertyid' => $propertyId,
                'damageid' => $damageid,
                'roomno' => strtoupper(trim($request->roomno)),
                'date' => $request->date,
                'damagetype' => $request->damagetype,
                'item' => trim($request->item),
                'description' => trim($request->description ?? ''),
                'status' => 'Pending',
                'u_name' => Auth::user()->u_name ?? Auth::user()->name ?? 'system',
                'created_at' => $now,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Damage report saved successfully! ID: DR/' . $propertyId . '/' . $damageid]);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', $ve->errors())], 422);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Fetch all damage reports for the property (for DataTable refresh).
     */
    public function fetchdamagereports(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $rows = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->orderByDesc('id')
                ->get();

            return response()->json(['success' => true, 'data' => $rows]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Update an existing damage report entry.
     * POST /updatedamagereport
     */
    public function updatedamagereport(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $id = $request->input('id', $request->input('sn'));

            $request->validate([
                'id' => 'nullable|integer',
                'sn' => 'nullable|integer',
                'roomno' => 'required|string|max:20',
                'date' => 'required|date',
                'damagetype' => 'required|string|max:50',
                'item' => 'required|string|max:100',
                'description' => 'nullable|string',
                'status' => 'nullable|string|max:30',
            ]);

            if (empty($id)) {
                return response()->json(['success' => false, 'message' => 'Invalid ID provided.'], 422);
            }

            $affected = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->where('id', $id)
                ->update([
                    'roomno' => strtoupper(trim($request->roomno)),
                    'date' => $request->date,
                    'damagetype' => $request->damagetype,
                    'item' => trim($request->item),
                    'description' => trim($request->description ?? ''),
                    'status' => $request->status ?? 'Pending',
                    'u_name' => Auth::user()->u_name ?? Auth::user()->name ?? 'system',
                    'u_ae' => 'e',
                ]);

            if ($affected === 0) {
                return response()->json(['success' => false, 'message' => 'Record not found or no changes made.'], 404);
            }

            return response()->json(['success' => true, 'message' => 'Damage report updated successfully!']);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', $ve->errors())], 422);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Delete a damage report entry.
     * POST /deletedamagereport
     */
    public function deletedamagereport(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $id = $request->input('id', $request->input('sn'));

            $request->validate([
                'id' => 'nullable|integer',
                'sn' => 'nullable|integer',
            ]);

            if (empty($id)) {
                return response()->json(['success' => false, 'message' => 'Invalid ID provided.'], 422);
            }

            $affected = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->where('id', $id)
                ->delete();

            if ($affected === 0) {
                return response()->json(['success' => false, 'message' => 'Record not found.'], 404);
            }

            return response()->json(['success' => true, 'message' => 'Damage report deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Print a single damage report entry as PDF.
     * GET /damagereportprint/{id}
     */
    public function printdamagereport($id)
    {
        $propertyId = $this->propertyid;

        $record = DB::table('hkdamage')
            ->where('propertyid', $propertyId)
            ->where('id', $id)
            ->first();

        if (! $record) {
            return redirect()->back()->with('error', 'Damage report record not found.');
        }

        $company = Companyreg::where('propertyid', $propertyId)->first();

        $pdf = Pdf::loadView('property.print.damagereport', [
            'company' => $company,
            'record' => $record,
        ])->setPaper('a4', 'portrait');

        return $pdf->stream('damage-report-DR-' . $propertyId . '-' . $record->damageid . '.pdf');
    }

    // ─── Damage Report Page ───────────────────────────────────────────────────

    /**
     * Show Damage Report page.
     */
    public function damagereport(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        return view('property.damagereport', [
            'company' => $company,
            'statename' => $statename,
            'fromdate' => $this->ncurdate,
        ]);
    }

    /**
     * Fetch damage reports with date filter for the report page.
     * SELECT date, damagetype, description, u_name as ReportedBy
     * FROM hkdamage WHERE propertyid = ?
     */
    public function fetchdamagereport(Request $request)
    {
        try {
            $fromdate = $request->input('fromdate', $this->ncurdate);
            $todate = $request->input('todate', $this->ncurdate);
            $propertyId = $this->propertyid;

            $rows = DB::table('hkdamage')
                ->where('propertyid', $propertyId)
                ->whereBetween('date', [$fromdate, $todate])
                ->select('date', 'roomno', 'item', 'damagetype', 'description', 'u_name as ReportedBy')
                ->orderBy('date', 'ASC')
                ->get();

            return response()->json(['success' => true, 'data' => $rows]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    // ─── Damage Report — Print (DomPDF) ───────────────────────────────────────────

    public function printdamagereportlist(Request $request)
    {
        $fromdate = $request->query('fromdate', $this->ncurdate);
        $todate = $request->query('todate', $this->ncurdate);

        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $statename = States::where('propertyid', $this->propertyid)
            ->where('state_code', $company->state_code)
            ->value('name');

        $data = DB::table('hkdamage')
            ->where('propertyid', $this->propertyid)
            ->whereBetween('date', [$fromdate, $todate])
            ->select('date', 'roomno', 'item', 'damagetype', 'description', 'u_name as ReportedBy')
            ->orderBy('date', 'ASC')
            ->get();

        $pdf = Pdf::loadView('property.print.damagereportprint', [
            'company' => $company,
            'statename' => $statename,
            'data' => $data,
            'fromdate' => $fromdate,
            'todate' => $todate,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('damage-report-' . date('YmdHis') . '.pdf');
    }

    // ─── Damage Report — Export Excel (PhpSpreadsheet) ────────────────────────────

    public function exportdamagereportlist(Request $request)
    {
        try {
            $fromdate = $request->query('fromdate', $this->ncurdate);
            $todate = $request->query('todate', $this->ncurdate);

            $company = Companyreg::where('propertyid', $this->propertyid)->first();

            $data = DB::table('hkdamage')
                ->where('propertyid', $this->propertyid)
                ->whereBetween('date', [$fromdate, $todate])
                ->select('date', 'roomno', 'item', 'damagetype', 'description', 'u_name as ReportedBy')
                ->orderBy('date', 'ASC')
                ->get();

            $spreadsheet = new Spreadsheet;
            $sheet = $spreadsheet->getActiveSheet();
            $sheet->setTitle('Damage Report');

            $lastCol = 'G'; // 7 columns: A..# , B..Room No, C..Item, D..Damage Type, E..Description, F..Reported By

            // Row 1: Company Name
            $sheet->mergeCells('A1:' . $lastCol . '1');
            $sheet->setCellValue('A1', $company->comp_name ?? 'Company');
            $sheet->getStyle('A1')->applyFromArray([
                'font' => ['bold' => true, 'size' => 14],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 2: Report Title
            $sheet->mergeCells('A2:' . $lastCol . '2');
            $sheet->setCellValue('A2', 'Damage Report');
            $sheet->getStyle('A2')->applyFromArray([
                'font' => ['bold' => true, 'size' => 11],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 3: Date Range
            $fromDisp = Carbon::parse($fromdate)->format('d/m/Y');
            $toDisp = Carbon::parse($todate)->format('d/m/Y');
            $sheet->mergeCells('A3:' . $lastCol . '3');
            $sheet->setCellValue('A3', 'From: ' . $fromDisp . '   To: ' . $toDisp);
            $sheet->getStyle('A3')->applyFromArray([
                'font' => ['size' => 10],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ]);

            // Row 5: Column Headers
            // $headers = ['#', 'Date', 'Damage Type', 'Description', 'Reported By'];
            $headers = ['#', 'Date', 'Room No.', 'Item Name', 'Damage Type', 'Description', 'Reported By'];
            $headerRow = 5;
            foreach ($headers as $i => $h) {
                $col = Coordinate::stringFromColumnIndex($i + 1);
                $sheet->setCellValue($col . $headerRow, $h);
            }
            $sheet->getStyle('A' . $headerRow . ':' . $lastCol . $headerRow)->applyFromArray([
                'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FF4472C4']],
                'alignment' => [
                    'horizontal' => Alignment::HORIZONTAL_CENTER,
                    'vertical' => Alignment::VERTICAL_CENTER,
                    'wrapText' => false,
                ],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Data Rows
            $currentRow = $headerRow + 1;
            foreach ($data as $i => $row) {
                // $sheet->setCellValue('A'.$currentRow, $i + 1);
                // $sheet->setCellValue('B'.$currentRow, Carbon::parse($row->date)->format('d/m/Y'));
                // $sheet->setCellValue('C'.$currentRow, $row->damagetype);
                // $sheet->setCellValue('D'.$currentRow, $row->description);
                // $sheet->setCellValue('E'.$currentRow, $row->ReportedBy);
                $sheet->setCellValue('A' . $currentRow, $i + 1);
                $sheet->setCellValue('B' . $currentRow, Carbon::parse($row->date)->format('d/m/Y'));
                $sheet->setCellValue('C' . $currentRow, $row->roomno);
                $sheet->setCellValue('D' . $currentRow, $row->item);
                $sheet->setCellValue('E' . $currentRow, $row->damagetype);
                $sheet->setCellValue('F' . $currentRow, $row->description);
                $sheet->setCellValue('G' . $currentRow, $row->ReportedBy);

                $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                    'borders' => ['allBorders' => [
                        'borderStyle' => Border::BORDER_THIN,
                        'color' => ['argb' => 'FFDDDDDD'],
                    ]],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                ]);
                // Alternating row fill
                if ($i % 2 === 1) {
                    $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)
                        ->getFill()->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()->setARGB('FFF2F2F2');
                }
                // Description / Reported By left-aligned
                // $sheet->getStyle('D'.$currentRow)->getAlignment()
                //     ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                // $sheet->getStyle('E'.$currentRow)->getAlignment()
                //     ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('E' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('F' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('G' . $currentRow)->getAlignment()
                    ->setHorizontal(Alignment::HORIZONTAL_LEFT);

                $currentRow++;
            }

            // Total Row
            $totalRows = $data->count();

            // $sheet->mergeCells('A'.$currentRow.':E'.$currentRow);
            // $sheet->setCellValue('A'.$currentRow, 'Total Records: '.$totalRows);
            $sheet->mergeCells('A' . $currentRow . ':G' . $currentRow);
            $sheet->setCellValue('A' . $currentRow, 'Total Records: ' . $totalRows);

            $sheet->getStyle('A' . $currentRow . ':' . $lastCol . $currentRow)->applyFromArray([
                'font' => ['bold' => true],
                'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['argb' => 'FFD9E1F2']],
                'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
            ]);

            // Column widths
            $sheet->getColumnDimension('A')->setWidth(5);
            $sheet->getColumnDimension('B')->setWidth(14);
            $sheet->getColumnDimension('C')->setWidth(14);
            $sheet->getColumnDimension('D')->setWidth(28);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(50);
            $sheet->getColumnDimension('G')->setWidth(18);

            // ── Download ───────────────────────────────────────────────────
            $filename = 'Damage_Report_' . str_replace('-', '', $fromdate) . '_to_' . str_replace('-', '', $todate) . '.xlsx';

            if (ob_get_length()) {
                ob_end_clean();
            }

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            (new Xlsx($spreadsheet))->save('php://output');
            exit;
        } catch (Exception $e) {
            Log::error('Damage Report Excel Export Error: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString(),
            ]);

            return response()->json([
                'error' => 'Failed to generate Excel file: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Store Out of Order room blockout from damage report flow.
     */
    public function storeoutofororder(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $request->validate([
                'roomno' => 'required|string|max:20',
                'ooo_type' => 'required|string|max:50',
                'from_date' => 'required|date',
                'to_date' => 'required|date',
            ]);

            date_default_timezone_set('Asia/Kolkata');
            $now = date('Y-m-d H:i:s');
            $roomno = strtoupper(trim($request->roomno));
            $oooType = $request->ooo_type;
            // reasons comes from damage report description; fallback to ooo_type
            $reasons = trim($request->reasons ?? $oooType);

            // Close any existing open OOO blockout for this room
            RoomBlockout::where('propertyid', $propertyId)
                ->where('roomcode', $roomno)
                ->where('type', 'O')
                ->whereNull('cleardate')
                ->update([
                    'cleardate' => $this->ncurdate,
                    'cleartime' => date('H:i:s'),
                    'updated_at' => $now,
                ]);

            // Create new blockout record
            $rblkout = new RoomBlockout;
            $rblkout->propertyid = $propertyId;
            $rblkout->roomcode = $roomno;
            $rblkout->block = $oooType;      // Out of Order / Maintenance
            $rblkout->reasons = $reasons;       // damage report description
            $rblkout->fromdate = $request->from_date;
            $rblkout->todate = $request->to_date;
            $rblkout->type = 'O';
            $rblkout->u_name = Auth::user()->u_name ?? Auth::user()->name ?? 'system';
            $rblkout->created_at = $now;
            $rblkout->updated_at = null;
            $rblkout->u_ae = 'a';
            $rblkout->vtime = date('H:i:s');
            $rblkout->guestname = '';
            $rblkout->mobileno = '';
            $rblkout->save();

            // Update room_mast status to Out of Order
            RoomMast::where('propertyid', $propertyId)
                ->where('inclcount', 'Y')
                ->where('type', 'RO')
                ->where('rcode', $roomno)
                ->update(['room_stat' => 'O', 'updated_at' => $now]);

            return response()->json([
                'success' => true,
                'message' => 'Room ' . $roomno . ' marked as Out of Order (' . $oooType . ').',
            ]);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', $ve->errors())], 422);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ─── HK QR Code Generator ────────────────────────────────────────────────────

    public function hkQrGenerate(Request $request)
    {
        $rcode = $request->rcode;

        if (empty($rcode)) {
            return response()->json(['success' => false, 'message' => 'Room code required'], 422);
        }

        try {
            $compdata = companydata();

            $url = url('/hk-scan/' . $compdata->propertyid . '/' . $rcode);
            $toptext = 'Room No ' . $rcode;

            // Logo path
            $logo = null;
            if (! empty($compdata->logo)) {
                $path = storage_path('app/public/admin/property_logo/' . $compdata->logo);
                if (file_exists($path)) {
                    $logo = $path;
                }
            }
            if (! $logo) {
                $fallback = public_path('assets/img/logo.png');
                $logo = file_exists($fallback) ? $fallback : null;
            }

            $builder = Builder::create()
                ->writer(new PngWriter)
                ->data($url)
                ->encoding(new Encoding('UTF-8'))
                ->errorCorrectionLevel(ErrorCorrectionLevel::High)
                ->size(512)
                ->margin(10)
                ->roundBlockSizeMode(RoundBlockSizeMode::Margin);

            if ($logo && file_exists($logo)) {
                $builder
                    ->logoPath($logo)
                    ->logoResizeToWidth(100)
                    ->logoPunchoutBackground(true);
            }

            $result = $builder->build();
            $qrImage = imagecreatefromstring($result->getString());
            $qrWidth = imagesx($qrImage);
            $qrHeight = imagesy($qrImage);

            $fontSize = 20;
            $fontPath = realpath(__DIR__ . '/../../../vendor/endroid/qr-code/assets/noto_sans.otf');
            $textBox = imagettfbbox($fontSize, 0, $fontPath, $toptext);
            $textWidth = $textBox[2] - $textBox[0];
            $textHeight = $textBox[1] - $textBox[7];
            $padding = 15;
            $headerHeight = $textHeight + $padding * 2;

            $finalWidth = max($qrWidth, $textWidth + 20);
            $finalHeight = $qrHeight + $headerHeight;
            $finalImage = imagecreatetruecolor($finalWidth, $finalHeight);

            $white = imagecolorallocate($finalImage, 255, 255, 255);
            $black = imagecolorallocate($finalImage, 0, 0, 0);
            imagefill($finalImage, 0, 0, $white);

            $textX = intval(($finalWidth - $textWidth) / 2);
            $textY = $padding + $textHeight;
            imagettftext($finalImage, $fontSize, 0, $textX, $textY, $black, $fontPath, $toptext);

            $qrX = intval(($finalWidth - $qrWidth) / 2);
            imagecopy($finalImage, $qrImage, $qrX, $headerHeight, 0, 0, $qrWidth, $qrHeight);
            imagedestroy($qrImage);

            ob_start();
            imagepng($finalImage);
            $imageData = ob_get_clean();
            imagedestroy($finalImage);

            return response()->json([
                'success' => true,
                'message' => 'HK QR Code generated successfully',
                'file_data' => 'data:image/png;base64,' . base64_encode($imageData),
                'filename' => 'HK_Room_' . $rcode . '_QR.png',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong: ' . $e->getMessage(),
            ], 500);
        }
    }

    // ─── Service Facilities Load Up (Inconsistency Import) ───────────────────

    public function servicefacilitiesloadup()
    {
        $path = storage_path('app/public/servicefacilities.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        foreach ($jsonData as $item) {
            $type = trim($item['type'] ?? '');
            $items = $item['items'] ?? [];

            foreach ($items as $entry) {
                $serviceName = trim($entry['service'] ?? '');
                $remark = trim($entry['remark'] ?? '');
                $sno = intval($entry['sno'] ?? 0);

                if (empty($serviceName)) {
                    continue;
                }

                // Check duplicate
                if (CompServiceFacilities::where('propertyid', $propertyid)
                    ->where('service', $serviceName)
                    ->exists()
                ) {
                    $skipped[] = $serviceName;

                    continue;
                }

                CompServiceFacilities::create([
                    'propertyid' => $propertyid,
                    'displayorder' => $sno,
                    'service' => $serviceName,
                    'servicehdr' => $type,
                    'remark' => $remark,
                    'isactive' => 1,
                    'U_name' => $u_name,
                    'created_at' => $this->currenttime,
                    'u_ae' => 'a',
                ]);

                $insertedCount++;
            }
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' Service(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json(['message' => 'All Services already exist! ' . count($skipped) . ' Skipped.'], 500);
    }

    // ─── Inspection Entry ─────────────────────────────────────────────────────────

    public function inspection(Request $request)
    {
        $permission = revokeopen(151111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $propertyId = $this->propertyid;
        $asOnDate = $this->ncurdate;

        // Rooms eligible for inspection = today's Completed cleanings (latest per room)
        // Also pull rooms already in hkinspectionhdr for today so we can show re-inspect
        $completedRooms = DB::table('hkcleaninghdr as H')
            ->select(
                'H.cleaningid',
                'H.roommo as rcode',
                'H.cleaningno',
                'H.starttime',
                'H.endtime',
                'H.housekeeperid',
                'HK.name as hkname'
            )
            ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                $j->on('HK.scode', '=', 'H.housekeeperid')
                    ->where('HK.propertyid', $propertyId);
            })
            ->where('H.propertyid', $propertyId)
            ->where('H.cleaningdate', $asOnDate)
            ->where('H.cleaningstatus', 'Completed')
            ->whereRaw('H.cleaningid = (
                SELECT MAX(H2.cleaningid)
                FROM hkcleaninghdr H2
                WHERE H2.propertyid   = H.propertyid
                  AND H2.roommo       = H.roommo
                  AND H2.cleaningdate = H.cleaningdate
            )')
            // Hide rooms whose inspection is already Passed — so dropdown refreshes
            ->whereNotIn('H.cleaningid', function ($q) use ($propertyId) {
                $q->select('cleaningid')
                    ->from('hkinspectionhdr')
                    ->where('propertyid', $propertyId)
                    ->where('inspectionstatus', 'Passed');
            })
            ->orderBy('H.roommo')
            ->get();

        $checklistItems = DB::table('hkchecklistmast')
            ->where('propertyid', $propertyId)
            ->orderBy('sno')
            ->get();

        return view('property.housekeeping.inspection', compact(
            'completedRooms',
            'checklistItems',
            'asOnDate'
        ));
    }

    public function fetchinspection(Request $request)
    {
        try {
            $propertyId = $this->propertyid;
            $cleaningId = $request->input('cleaningid');

            if (! $cleaningId) {
                return response()->json(['success' => false, 'message' => 'Cleaning ID required']);
            }

            // Get cleaning header
            $hdr = DB::table('hkcleaninghdr as H')
                ->select(
                    'H.cleaningid',
                    'H.roommo as roomno',
                    'H.starttime',
                    'H.endtime',
                    'H.housekeeperid',
                    'H.roomstatusbefore',
                    'HK.name as hkname'
                )
                ->leftJoin('housekeeparmast as HK', function ($j) use ($propertyId) {
                    $j->on('HK.scode', '=', 'H.housekeeperid')
                        ->where('HK.propertyid', $propertyId);
                })
                ->where('H.cleaningid', $cleaningId)
                ->where('H.propertyid', $propertyId)
                ->first();

            if (! $hdr) {
                return response()->json(['success' => false, 'message' => 'Record not found']);
            }

            $roomno = $hdr->roomno;

            // Room details with floor & type
            $room = DB::table('room_mast as RM')
                ->select(
                    'RM.rcode',
                    'RM.room_stat',
                    DB::raw("COALESCE(FL.name, '--') as floorname"),
                    DB::raw("COALESCE(C.name,  '--') as roomtype")
                )
                ->leftJoin('hkfloors as FL', function ($j) {
                    $j->whereRaw('RM.floor COLLATE utf8mb4_unicode_ci = FL.code COLLATE utf8mb4_unicode_ci');
                })
                ->leftJoin('room_cat as C', 'RM.room_cat', '=', 'C.cat_code')
                ->where('RM.rcode', $roomno)
                ->where('RM.propertyid', $propertyId)
                ->first();

            // Occupancy check
            $isOccupied = DB::table('roomocc')
                ->where('propertyid', $propertyId)
                ->where('roomno', $roomno)
                ->whereNull('chkoutdate')
                ->exists();

            $statusMap = ['C' => 'Vacant Clean', 'D' => 'Vacant Dirty', 'O' => 'Out of Order', 'I' => 'Inspection Pending'];
            $currentStat = $room->room_stat ?? 'D';
            $beforeStatus = $isOccupied
                ? ($currentStat === 'D' ? 'Occupied Dirty' : 'Occupied Clean')
                : ($statusMap[$currentStat] ?? 'Vacant Dirty');

            // Check if inspection already done for this cleaningid today
            $existing = DB::table('hkinspectionhdr')
                ->where('propertyid', $propertyId)
                ->where('cleaningid', $cleaningId)
                ->orderByDesc('id')
                ->first();

            // Next inspection serial for auto-numbering
            $lastSn = DB::table('hkinspectionhdr')->where('propertyid', $propertyId)->max('id') ?? 0;
            $inspectionNo = 'INS-' . date('Ymd') . '-' . str_pad($lastSn + 1, 5, '0', STR_PAD_LEFT);

            date_default_timezone_set('Asia/Kolkata');

            return response()->json([
                'success' => true,
                'cleaningid' => $hdr->cleaningid,
                'roomno' => $roomno,
                'floorname' => $room->floorname ?? '--',
                'roomtype' => $room->roomtype ?? '--',
                'before_status' => $beforeStatus,
                'housekeeper' => $hdr->hkname ?? '',
                // 'starttime'      => $hdr->starttime  ? date('h:i A', strtotime($hdr->starttime))  : '--',
                // 'endtime'        => $hdr->endtime    ? date('h:i A', strtotime($hdr->endtime))    : '--',
                'starttime' => $hdr->starttime ? Carbon::parse($hdr->starttime)->setTimezone('Asia/Kolkata')->format('h:i A') : '--',
                'endtime' => $hdr->endtime ? Carbon::parse($hdr->endtime)->setTimezone('Asia/Kolkata')->format('h:i A') : '--',
                'inspection_no' => $inspectionNo,
                'already_done' => $existing ? true : false,
                'prev_status' => $existing->inspectionstatus ?? null,
                'prev_score' => $existing->inspectionscore ?? null,
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function submitinspection(Request $request)
    {
        try {
            $propertyId = $this->propertyid;

            $request->validate([
                'cleaningid' => 'required|integer',
                'inspectionstatus' => 'required|string|in:Passed,Failed',
            ]);

            date_default_timezone_set('Asia/Kolkata');
            $now = date('Y-m-d H:i:s');

            // Verify the cleaning record belongs to this property
            $hdr = DB::table('hkcleaninghdr')
                ->where('cleaningid', $request->cleaningid)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $hdr) {
                return response()->json(['success' => false, 'message' => 'Invalid cleaning record'], 422);
            }

            $roomno = $hdr->roommo;

            // Parse checklist JSON
            $checklistData = json_decode($request->input('checklist_data', '[]'), true) ?: [];
            $totalItems = count($checklistData);
            $passedItems = collect($checklistData)->where('status', 'Pass')->count();
            $score = $totalItems > 0 ? round(($passedItems / $totalItems) * 100, 2) : 0;

            DB::beginTransaction();

            // Check if inspection already exists for this cleaningid
            $existingInspection = DB::table('hkinspectionhdr')
                ->where('propertyid', $propertyId)
                ->where('cleaningid', $request->cleaningid)
                ->first();

            if ($existingInspection) {
                // UPDATE existing record
                $inspectionId = $existingInspection->inspectionid;
                $insSn = $existingInspection->id;

                DB::table('hkinspectionhdr')
                    ->where('propertyid', $propertyId)
                    ->where('cleaningid', $request->cleaningid)
                    ->update([
                        'inspectiondate' => $now,
                        'inspectionTime' => $now,
                        'inspectionstatus' => $request->inspectionstatus,
                        'inspectionscore' => $score,
                        'remarks' => mb_substr($request->input('remarks', ''), 0, 50) ?: null,
                        'u_name' => mb_substr(Auth::user()->u_name ?? '', 0, 15),
                        'u_ae' => 'e',
                        'created_at' => $now,
                    ]);

                // Delete old checklist detail rows so we can re-insert fresh ones
                DB::table('hkinspectionhdtl')
                    ->where('propertyid', $propertyId)
                    ->where('inspectionid', $inspectionId)
                    ->delete();
            } else {
                // INSERT new record
                $inspectionId = (DB::table('hkinspectionhdr')
                    ->where('propertyid', $propertyId)
                    ->max('inspectionid') ?? 0) + 1;

                $insSn = DB::table('hkinspectionhdr')->insertGetId([
                    'cleaningid' => $request->cleaningid,
                    'assignmentid' => $hdr->assno ?? 0,
                    'propertyid' => $propertyId,
                    'roomno' => $roomno,
                    'inspectionid' => $inspectionId,
                    'inspectiondate' => $now,
                    'inspectionTime' => $now,
                    'inspectionstatus' => $request->inspectionstatus,
                    'inspectionscore' => $score,
                    'remarks' => mb_substr($request->input('remarks', ''), 0, 50) ?: null,
                    'approvedby' => null,
                    'approveddate' => null,
                    'u_name' => mb_substr(Auth::user()->u_name ?? '', 0, 15),
                    'u_ae' => 'a',
                    'created_at' => $now,
                ]);
            }

            // Insert checklist detail rows into original hkinspectionhdtl table
            $sno = 0;
            foreach ($checklistData as $item) {
                $sno++;
                $result = strtoupper($item['status'] ?? 'Fail');
                if (! in_array($result, ['PASS', 'FAIL', 'NA'], true)) {
                    $result = 'FAIL';
                }
                DB::table('hkinspectionhdtl')->insert([
                    'propertyid' => $propertyId,
                    'inspectionid' => $inspectionId,
                    'sno' => $sno,
                    'checklistid' => (int) ($item['sn'] ?? 0),
                    'u_name' => mb_substr(Auth::user()->u_name ?? '', 0, 15),
                    'created_at' => $now,
                    'u_ae' => 'a',
                    'result' => $result,
                    'score' => $result === 'PASS' ? 100 : 0,
                    'remarks' => mb_substr($item['remarks'] ?? '', 0, 50) ?: null,
                ]);
            }

            // Update room_stat based on outcome
            if ($request->inspectionstatus === 'Passed') {
                // Pass & Complete → Clean (C)
                DB::table('room_mast')
                    ->where('propertyid', $propertyId)
                    ->where('rcode', $roomno)
                    ->update(['room_stat' => 'C', 'updated_at' => $now]);

                // hkcleaninghdr update
                DB::table('hkcleaninghdr')
                    ->where('propertyid', $propertyId)
                    ->where('cleaningid', $request->cleaningid)
                    ->update([
                        'inspectionstatus' => 'Passed',
                        'roomstatusafter' => 'Clean',
                    ]);
            } elseif ($request->inspectionstatus === 'Failed') {
                // Fail → Dirty (D) — goes back to cleaning queue
                DB::table('room_mast')
                    ->where('propertyid', $propertyId)
                    ->where('rcode', $roomno)
                    ->update(['room_stat' => 'D', 'updated_at' => $now]);

                // hkcleaninghdr update
                DB::table('hkcleaninghdr')
                    ->where('propertyid', $propertyId)
                    ->where('cleaningid', $request->cleaningid)
                    ->update([
                        'inspectionstatus' => 'Failed',
                        'roomstatusafter' => 'Dirty',
                    ]);
            }

            DB::commit();

            $msg = 'Inspection saved! Score: ' . $score . '%';

            session()->flash('success', $msg);

            return response()->json([
                'success' => true,
                'message' => $msg,
                'inspection_sn' => $insSn,
                'score' => $score,
                'inspectionstatus' => $request->inspectionstatus,
            ]);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', Arr::flatten($ve->errors()))], 422);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // LAUNDRY MODULE — Send / Receive (Dirty & Clean Linen)
    // Tables: laundry_hdr (header) + laundry_ftr (detail)
    // ═══════════════════════════════════════════════════════════════════════

    // ── Laundry Send (GET) ─────────────────────────────────────────────────
    public function laundrysend(Request $request)
    {
        $permission = revokeopen(151311);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'No permission!');
        }

        // Safe voucher number fetch — avoids null crash if load not yet run
        $chkvpfDisplay = $this->getLaundryVoucherPrefix('LAISS', $this->ncurdate);
        $sendNo = $chkvpfDisplay
            ? 'LAISS' . str_pad($chkvpfDisplay->start_srl_no + 1, 4, '0', STR_PAD_LEFT)
            : 'LAISS0001';

        $linenItems = DB::table('hkamentiesmaster as H')
            ->join('itemmast as I', 'I.Code', '=', 'H.item')
            ->where('H.propertyid', $this->propertyid)
            ->where('H.type', 'Linen')
            ->orderBy('H.srno', 'asc')
            ->select('H.item as item_code', 'I.name as item_name')
            ->get();

        // ── Existing send vouchers (history table below the form) ─────────
        // Fetch from DB so the user sees exactly what was saved + status.
        $sentVouchers = DB::table('laundry_hdr')
            ->where('propertyid', $this->propertyid)
            ->orderBy('id', 'desc')
            ->select('id', 'vno', 'vprefix', 'vdate', 'vtime', 'sent_by', 'challan_no', 'expected_return_date', 'send_status', 'recv_date', 'recv_by', 'recv_vno', 'recv_vprefix', 'u_name', 'created_at')
            ->get();

        $voucherFtrs = DB::table('laundry_ftr')
            ->where('propertyid', $this->propertyid)
            ->whereIn('hdr_sn', $sentVouchers->pluck('id')->all())
            ->orderBy('id', 'asc')
            ->get()
            ->groupBy('hdr_sn');

        return view('property.housekeeping.laundrysend', [
            'sendNo' => $sendNo,
            'linenItems' => $linenItems,
            'ncurdate' => $this->ncurdate,
            'sentVouchers' => $sentVouchers,
            'voucherFtrs' => $voucherFtrs,
        ]);
    }

    // ── Laundry Send Store (POST) — creates LAISS voucher ─────────────────
    public function laundrysendstore(Request $request)
    {
        try {
            $request->validate([
                'vdate' => 'required|date',
                'vtime' => 'nullable',
                'sent_by' => 'required|string|max:25',
            ]);

            $permission = revokeopen(151311);
            if (is_null($permission) || $permission->view == 0) {
                return response()->json(['success' => false, 'message' => 'No permission!'], 403);
            }

            $sendQtys = $request->input('send_qty', []);
            $itemCodes = $request->input('item_code', []);
            $itemNames = $request->input('item_name', []);
            $rowRemarks = $request->input('send_remarks', []);

            // keep only rows with qty > 0
            $rows = [];
            $hasQty = false;
            foreach ($sendQtys as $i => $qty) {
                $qty = (int) $qty;
                if ($qty <= 0) {
                    continue;
                }
                $hasQty = true;
                $rows[] = [
                    'item_code' => mb_substr((string) ($itemCodes[$i] ?? ''), 0, 10),
                    'item_name' => mb_substr((string) ($itemNames[$i] ?? ''), 0, 40),
                    'send_qty' => $qty,
                    'send_remarks' => isset($rowRemarks[$i]) && $rowRemarks[$i] !== ''
                        ? mb_substr((string) $rowRemarks[$i], 0, 200)
                        : null,
                ];
            }

            if (! $hasQty) {
                return response()->json(['success' => false, 'message' => 'At least one item quantity must be greater than zero.'], 422);
            }

            $vtype = 'LAISS';
            $vdate = $request->vdate;
            $u_name = mb_substr(Auth::user()->u_name ?? '', 0, 15);

            DB::beginTransaction();

            // Lock the series row so two concurrent sends can't get same number
            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $vdate)
                ->whereDate('date_to', '>=', $vdate)
                ->lockForUpdate()
                ->first();

            if (is_null($chkvpf)) {
                DB::rollBack();

                return response()->json(['success' => false, 'message' => 'LAISS voucher prefix not configured for ' . $vdate . '. Run /loadvoucherprefix (voucherprefixloadupdate).'], 422);
            }

            $vprefix = $chkvpf->prefix;
            $vno = $chkvpf->start_srl_no + 1;
            $docid = $this->propertyid . $vtype . '  ' . $vprefix . '    ' . $vno;

            $hdr = LaundryHdr::create([
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vtype' => $vtype,
                'vno' => $vno,
                'vprefix' => $vprefix,
                'vdate' => $vdate,
                'vtime' => $request->vtime ?: date('H:i:s'),
                'sent_by' => mb_substr($request->sent_by, 0, 25),
                'challan_no' => $request->challan_no ? mb_substr($request->challan_no, 0, 20) : null,
                'contractor_recv_by' => $request->contractor_recv_by ? mb_substr($request->contractor_recv_by, 0, 25) : null,
                'expected_return_date' => $request->expected_return_date ?: null,
                'send_remarks' => $request->hdr_send_remarks ? mb_substr($request->hdr_send_remarks, 0, 200) : null,
                'send_status' => 'Open',
                'recv_docid' => null,
                'recv_vtype' => null,
                'recv_vno' => null,
                'recv_vprefix' => null,
                'recv_date' => null,
                'recv_time' => null,
                'recv_by' => null,
                'delivered_by' => null,
                'recv_challan_no' => null,
                'recv_remarks' => null,
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'updated_at' => null,
                'u_ae' => 'a',
            ]);

            foreach ($rows as $row) {
                LaundryFtr::create([
                    'propertyid' => $this->propertyid,
                    'hdr_sn' => $hdr->id,
                    'item_code' => $row['item_code'],
                    'item_name' => $row['item_name'],
                    'uom' => 'Nos',
                    'send_qty' => $row['send_qty'],
                    'send_remarks' => $row['send_remarks'],
                    'received_qty' => null,
                    'good_qty' => null,
                    'missing_qty' => null,
                    'damage_qty' => null,
                    'recv_remarks' => null,
                    'u_name' => $u_name,
                    'created_at' => $this->currenttime,
                    'u_ae' => 'a',
                ]);
            }

            $chkvpf->increment('start_srl_no');

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Saved',
                'sendNo' => 'LAISS' . str_pad($vno, 4, '0', STR_PAD_LEFT),
            ]);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', Arr::flatten($ve->errors()))], 422);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ── Laundry Receive (GET) ──────────────────────────────────────────────
    public function laundryreceive(Request $request)
    {
        $permission = revokeopen(151312);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'No permission!');
        }

        $openVouchers = DB::table('laundry_hdr')
            ->where('propertyid', $this->propertyid)
            ->whereIn('send_status', ['Open', 'Partial'])
            ->orderBy('id', 'desc')
            ->select('id', 'vno', 'vprefix', 'vdate', 'sent_by', 'challan_no')
            ->get();

        // ── Received vouchers (history table below the form) ──────────────
        // Partial + Received dono yahan dikhte hain (partial dobara receive ho sakta hai)
        $receivedVouchers = DB::table('laundry_hdr')
            ->where('propertyid', $this->propertyid)
            ->whereIn('send_status', ['Partial', 'Received'])
            ->orderBy('id', 'desc')
            ->select('id', 'vno', 'vprefix', 'vdate', 'sent_by', 'challan_no', 'send_status', 'recv_docid', 'recv_vtype', 'recv_vno', 'recv_vprefix', 'recv_date', 'recv_time', 'recv_by', 'delivered_by', 'recv_challan_no', 'recv_remarks')
            ->get();

        $receivedFtrs = DB::table('laundry_ftr')
            ->where('propertyid', $this->propertyid)
            ->whereIn('hdr_sn', $receivedVouchers->pluck('id')->all())
            ->orderBy('id', 'asc')
            ->get()
            ->groupBy('hdr_sn');

        return view('property.housekeeping.laundryreceive', [
            'openVouchers' => $openVouchers,
            'receivedVouchers' => $receivedVouchers,
            'receivedFtrs' => $receivedFtrs,
            'ncurdate' => $this->ncurdate,
        ]);
    }

    // ── Laundry Receive Store (POST) — creates LAREC voucher ──────────────
    public function laundryreceivestore(Request $request)
    {
        try {
            $request->validate([
                'hdr_id' => 'required|integer',
                'recv_date' => 'required|date',
                'recv_by' => 'required|string|max:50',
            ]);

            $permission = revokeopen(151312);
            if (is_null($permission) || $permission->view == 0) {
                return response()->json(['success' => false, 'message' => 'No permission!'], 403);
            }

            $u_name = mb_substr(Auth::user()->u_name ?? '', 0, 15);

            DB::beginTransaction();

            $hdr = LaundryHdr::where('propertyid', $this->propertyid)
                ->where('id', $request->hdr_id)
                ->lockForUpdate()
                ->first();

            if (is_null($hdr)) {
                DB::rollBack();

                return response()->json(['success' => false, 'message' => 'Laundry send voucher not found.'], 422);
            }

            if ($hdr->send_status === 'Received') {
                DB::rollBack();

                return response()->json(['success' => false, 'message' => 'This voucher is already received.'], 422);
            }

            $ftrIds = $request->input('ftr_id', $request->input('ftr_sn', []));
            $recvQtys = $request->input('received_qty', []);
            $missQtys = $request->input('missing_qty', []);
            $damageQtys = $request->input('damage_qty', []);
            $ftrRemarks = $request->input('recv_remarks', []);

            // Compute per-row values SERVER-SIDE — don't trust client.
            // good = received - missing - damage (minimum 0)
            $ftrData = [];
            $allReceived = true;
            foreach ($ftrIds as $i => $ftrId) {
                $sendQty = (int) DB::table('laundry_ftr')
                    ->where('id', $ftrId)
                    ->value('send_qty');

                $recv = max(0, (int) ($recvQtys[$i] ?? 0));
                $missing = max(0, (int) ($missQtys[$i] ?? 0));
                $damage = max(0, (int) ($damageQtys[$i] ?? 0));
                $good = max(0, $recv - $missing - $damage);

                if ($recv < $sendQty) {
                    $allReceived = false;
                }

                $ftrData[$ftrId] = [
                    'received_qty' => $recv,
                    'good_qty' => $good,
                    'missing_qty' => $missing,
                    'damage_qty' => $damage,
                    'recv_remarks' => isset($ftrRemarks[$i]) && $ftrRemarks[$i] !== ''
                        ? mb_substr((string) $ftrRemarks[$i], 0, 200)
                        : null,
                ];
            }

            // ── LAREC voucher number (receive) ────────────────────────────
            $recvVtype = 'LAREC';
            $recvDate = $request->recv_date;

            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $recvVtype)
                ->whereDate('date_from', '<=', $recvDate)
                ->whereDate('date_to', '>=', $recvDate)
                ->lockForUpdate()
                ->first();

            if (is_null($chkvpf)) {
                DB::rollBack();

                return response()->json(['success' => false, 'message' => 'LAREC voucher prefix not configured for ' . $recvDate . '. Run /loadvoucherprefix (voucherprefixloadupdate).'], 422);
            }

            $recvVno = $chkvpf->start_srl_no + 1;
            $recvVprefix = $chkvpf->prefix;
            $recvDocid = $this->propertyid . $recvVtype . '  ' . $recvVprefix . '    ' . $recvVno;

            $hdr->update([
                'recv_docid' => $recvDocid,
                'recv_vtype' => $recvVtype,
                'recv_vno' => $recvVno,
                'recv_vprefix' => $recvVprefix,
                'recv_date' => $recvDate,
                'recv_time' => $request->recv_time ?: date('H:i:s'),
                'recv_by' => mb_substr($request->recv_by, 0, 25),
                'delivered_by' => $request->delivered_by ? mb_substr($request->delivered_by, 0, 25) : null,
                'recv_challan_no' => $request->recv_challan_no ? mb_substr($request->recv_challan_no, 0, 20) : null,
                'recv_remarks' => $request->hdr_recv_remarks ? mb_substr($request->hdr_recv_remarks, 0, 200) : null,
                'send_status' => $allReceived ? 'Received' : 'Partial',
                'u_name' => $u_name,
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ]);

            foreach ($ftrData as $ftrId => $data) {
                LaundryFtr::where('propertyid', $this->propertyid)
                    ->where('id', $ftrId)
                    ->update(array_merge($data, [
                        'u_name' => $u_name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'e',
                    ]));
            }

            $chkvpf->increment('start_srl_no');

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Received Successfully — LAREC' . str_pad($recvVno, 4, '0', STR_PAD_LEFT),
                'recvNo' => 'LAREC' . str_pad($recvVno, 4, '0', STR_PAD_LEFT),
            ]);
        } catch (ValidationException $ve) {
            return response()->json(['success' => false, 'message' => implode(' ', Arr::flatten($ve->errors()))], 422);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    // ── Get Laundry Send Items (AJAX GET) — permission check added ────────
    public function getlaundrysenditems($hdr_id)
    {
        $permission = revokeopen(151312);
        if (is_null($permission) || $permission->view == 0) {
            return response()->json(['success' => false, 'message' => 'No permission!'], 403);
        }

        $header = LaundryHdr::where('propertyid', $this->propertyid)
            ->where('id', $hdr_id)
            ->first();

        if (is_null($header)) {
            return response()->json(['success' => false, 'message' => 'Voucher not found.'], 404);
        }

        $items = LaundryFtr::where('propertyid', $this->propertyid)
            ->where('hdr_sn', $hdr_id)
            ->orderBy('id', 'asc')
            ->get();

        return response()->json([
            'success' => true,
            'header' => $header,
            'items' => $items,
        ]);
    }

    // ── Shared: voucher prefix row for a date (reused by send + receive) ──
    private function getLaundryVoucherPrefix($vtype, $vdate)
    {
        return VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $vdate)
            ->whereDate('date_to', '>=', $vdate)
            ->first();
    }

    // ─── Service Master (Sidebar CRUD Page) ────────────────────────────────────

    public function servicemaster()
    {
        $data = HkService::where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')->get();

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.housekeeping.servicemaster', compact('data', 'departments'));
    }

    public function submitservicemaster(Request $request)
    {
        if (HkService::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Service name already exists!']);
        }

        $last = HkService::where('propertyid', $this->propertyid)
            ->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            HkService::create([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'dcode' => $request->dcode ?: null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Service saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updateservicemaster(Request $request)
    {
        if (HkService::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('sn', '!=', $request->sn)->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Service name already exists!']);
        }

        try {
            HkService::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper($request->name),
                    'dcode' => $request->dcode ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Service updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deleteservicemaster(Request $request)
    {
        try {
            HkService::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)->delete();

            return response()->json(['success' => true, 'message' => 'Service deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ─── HK Service - JSON Import (Inconsistency) ─────────────────────────────

    public function hkserviceloadup()
    {
        $path = storage_path('app/public/hkservice.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        $lastSno = HkService::where('propertyid', $propertyid)->max('sn') ?? 0;
        $lastCodeRaw = HkService::where('propertyid', $propertyid)->max('code');
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            if (HkService::where('propertyid', $propertyid)
                ->where('name', $name)->exists()
            ) {
                $skipped[] = $name;

                continue;
            }

            $lastSno++;
            $lastCode++;
            $code = $propertyid . $lastCode;

            HkService::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'name' => $name,
                'dcode' => null,
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' HK Service(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json([
            'message' => 'All HK Services already exist! ' . count($skipped) . ' Skipped.',
        ], 500);
    }

    // ─── Maintenance Master (Sidebar CRUD Page) ────────────────────────────────

    public function maintenancemaster()
    {
        $data = HkMaintenance::where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')->get();

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.housekeeping.maintenancemaster', compact('data', 'departments'));
    }

    public function submitmaintenancemaster(Request $request)
    {
        if (HkMaintenance::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Maintenance name already exists!']);
        }

        $last = HkMaintenance::where('propertyid', $this->propertyid)
            ->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            HkMaintenance::create([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'dcode' => $request->dcode ?: null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Maintenance saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updatemaintenancemaster(Request $request)
    {
        if (HkMaintenance::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('sn', '!=', $request->sn)->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Maintenance name already exists!']);
        }

        try {
            HkMaintenance::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper($request->name),
                    'dcode' => $request->dcode ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Maintenance updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deletemaintenancemaster(Request $request)
    {
        try {
            HkMaintenance::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)->delete();

            return response()->json(['success' => true, 'message' => 'Maintenance deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ─── HK Maintenance - JSON Import (Inconsistency) ─────────────────────────

    public function hkmaintenanceloadup()
    {
        $path = storage_path('app/public/hkmaintenance.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        $lastSno = HkMaintenance::where('propertyid', $propertyid)->max('sn') ?? 0;
        $lastCodeRaw = HkMaintenance::where('propertyid', $propertyid)->max('code');
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            if (HkMaintenance::where('propertyid', $propertyid)
                ->where('name', $name)->exists()
            ) {
                $skipped[] = $name;

                continue;
            }

            $lastSno++;
            $lastCode++;
            $code = $propertyid . $lastCode;

            HkMaintenance::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'name' => $name,
                'dcode' => null,
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' HK Maintenance(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json([
            'message' => 'All HK Maintenance items already exist! ' . count($skipped) . ' Skipped.',
        ], 500);
    }

    // ─── HK Laundry Service - JSON Import (Inconsistency) ────────────────────

    public function hklaundryloadup()
    {
        $path = storage_path('app/public/hklaundryservicemaster.json');

        if (! file_exists($path)) {
            return response()->json(['message' => "File not found: $path"], 500);
        }

        $raw = ltrim(file_get_contents($path), "\xEF\xBB\xBF");
        $jsonData = json_decode($raw, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
        }

        $propertyid = $this->propertyid;
        $u_name = Auth::user()->u_name;
        $insertedCount = 0;
        $skipped = [];

        $lastSno = HkLaundryService::where('propertyid', $propertyid)->max('sn') ?? 0;
        $lastCodeRaw = HkLaundryService::where('propertyid', $propertyid)->max('code');
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        foreach ($jsonData as $item) {
            $name = strtoupper(trim($item['Name']));

            if (HkLaundryService::where('propertyid', $propertyid)
                ->where('name', $name)->exists()
            ) {
                $skipped[] = $name;

                continue;
            }

            $lastSno++;
            $lastCode++;
            $code = $propertyid . $lastCode;

            HkLaundryService::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'name' => $name,
                'dcode' => '',
                'u_name' => $u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $insertedCount++;
        }

        if ($insertedCount > 0) {
            return response()->json([
                'message' => $insertedCount . ' HK Laundry Service(s) Inserted Successfully! And ' . count($skipped) . ' Skipped.',
            ]);
        }

        return response()->json([
            'message' => 'All HK Laundry Services already exist! ' . count($skipped) . ' Skipped.',
        ], 500);
    }

    // ─── Guest Lookup ──────────────────────────────────────────────────────────

    public function guestlookup()
    {
        return view('property.housekeeping.guestlookup');
    }

    public function fetchguestlookup(Request $request)
    {
        $propertyid = $this->propertyid;
        $fromDate = $request->input('fromDate');
        $toDate = $request->input('toDate');

        $dateWhere = '';
        $params = [];
        if ($fromDate && $toDate) {
            $dateWhere = " AND DATE_FORMAT(AA.dob, '%m-%d')
                BETWEEN DATE_FORMAT(?, '%m-%d')
                AND DATE_FORMAT(?, '%m-%d') ";
            $params = [$fromDate, $toDate];
        }

        $query = DB::select("
            SELECT
                AA.docid,
                AA.Name AS GuestName,
                MAX(R.chkindate) as 'Last Checkin',
                MAX(S.vdate) as LasVisit,
                AA.Add1 AS Address1,
                AA.Add2 AS Address2,
                AA.Bday AS BirthDay,
                AA.Aday AS Anniversary,
                AA.mobile_no,
                AA.email_id,
                AA.city_name AS City,
                AA.state_name AS State,
                AA.country_name AS Nation,
                CASE
                    WHEN AA.fom = 1 AND AA.pos = 1 THEN 'FOM, POS'
                    WHEN AA.fom = 1 THEN 'FOM'
                    WHEN AA.pos = 1 THEN 'POS'
                    ELSE ''
                END AS Department
            FROM
            (
                SELECT
                    CASE
                        WHEN DATE_ADD(
                            guestprof.dob,
                            INTERVAL TIMESTAMPDIFF(YEAR, guestprof.dob, CURDATE()) YEAR
                        ) < CURDATE()
                        THEN DATE_ADD(
                            guestprof.dob,
                            INTERVAL (TIMESTAMPDIFF(YEAR, guestprof.dob, CURDATE()) + 1) YEAR
                        )
                        ELSE DATE_ADD(
                            guestprof.dob,
                            INTERVAL TIMESTAMPDIFF(YEAR, guestprof.dob, CURDATE()) YEAR
                        )
                    END AS Bday,
                    CASE
                        WHEN DATE_ADD(
                            guestprof.anniversary,
                            INTERVAL TIMESTAMPDIFF(YEAR, guestprof.anniversary, CURDATE()) YEAR
                        ) < CURDATE()
                        THEN DATE_ADD(
                            guestprof.anniversary,
                            INTERVAL (TIMESTAMPDIFF(YEAR, guestprof.anniversary, CURDATE()) + 1) YEAR
                        )
                        ELSE DATE_ADD(
                            guestprof.anniversary,
                            INTERVAL TIMESTAMPDIFF(YEAR, guestprof.anniversary, CURDATE()) YEAR
                        )
                    END AS Aday,
                    guestprof.*
                FROM guestprof guestprof
            ) AS AA
            LEFT JOIN roomocc R
                ON AA.docid = R.docid
                AND AA.fom = 1
            LEFT JOIN sale1 S
                ON AA.docid = S.docid
                AND AA.pos = 1
            WHERE AA.propertyid = ?
            $dateWhere
            GROUP BY AA.mobile_no
            ORDER BY AA.mobile_no
        ", array_merge([$propertyid], $params));

        return response()->json($query);
    }

    public function updateguestfield(Request $request)
    {
        $request->validate([
            'docid' => 'required',
            'field' => 'required|string|in:dob,anniversary,mobile_no,email_id',
            'value' => 'nullable|string|max:255',
        ]);

        $docid = $request->docid;
        $field = $request->field;
        $value = $request->value;

        // Date fields ke liye format validate aur convert karo
        if (in_array($field, ['dob', 'anniversary']) && ! empty($value)) {
            // Accept YYYY-MM-DD format only
            $parsed = \DateTime::createFromFormat('Y-m-d', $value);
            if (! $parsed || $parsed->format('Y-m-d') !== $value) {
                return response()->json(['success' => false, 'message' => 'Invalid date format. Use YYYY-MM-DD (e.g. 1990-05-15)']);
            }
        }

        try {
            $guest = GuestProf::where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->first();

            if (! $guest) {
                return response()->json(['success' => false, 'message' => 'Guest not found!']);
            }

            // Eloquent UPDATED_AT khud handle karta hai, manually mat do
            $guest->update([
                $field => (! empty($value)) ? $value : null,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ]);

            return response()->json(['success' => true, 'message' => 'Updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }

    public function laundrymaster()
    {
        $data = HkLaundryService::where('propertyid', $this->propertyid)
            ->orderBy('id', 'asc')->get();

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.housekeeping.laundrymaster', compact('data', 'departments'));
    }

    public function submitlaundrymaster(Request $request)
    {
        if (HkLaundryService::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Laundry service name already exists!']);
        }

        $last = HkLaundryService::where('propertyid', $this->propertyid)
            ->orderBy('id', 'desc')->value('code');
        $increment = $last ? (intval(substr($last, strlen((string) $this->propertyid))) + 1) : 1;
        $code = $this->propertyid . $increment;

        try {
            HkLaundryService::create([
                'propertyid' => $this->propertyid,
                'code' => $code,
                'name' => strtoupper($request->name),
                'dcode' => $request->dcode ?: null,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            return response()->json(['success' => true, 'message' => 'Laundry service saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to save: ' . $e->getMessage()]);
        }
    }

    public function updatelaundrymaster(Request $request)
    {
        if (HkLaundryService::where('propertyid', $this->propertyid)
            ->where('name', strtoupper($request->name))
            ->where('sn', '!=', $request->sn)->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Laundry service name already exists!']);
        }

        try {
            HkLaundryService::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper($request->name),
                    'dcode' => $request->dcode ?: null,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                    'u_upddt' => $this->currenttime,
                ]);

            return response()->json(['success' => true, 'message' => 'Laundry service updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function deletelaundrymaster(Request $request)
    {
        try {
            HkLaundryService::where('sn', $request->sn)
                ->where('propertyid', $this->propertyid)->delete();

            return response()->json(['success' => true, 'message' => 'Laundry service deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }
}
