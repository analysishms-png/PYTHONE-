<?php

namespace App\Http\Controllers\FrontOffice;

use App\Http\Controllers\Controller;
use App\Jobs\SyncInventoryJob;
use App\Models\Bookings;
use App\Models\GrpBookinDetail;
use App\Models\Remark;
use App\Models\RoomInclusive;
use App\Models\RoomMast;
use App\Models\RoomOcc;
use App\Services\Channel\SyncInventory;
use App\Services\Insert\RemarkService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class InhouseAction extends Controller
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
            $this->propertyid = Auth::user()->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function checkamountpayable(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $tbl = DB::table('paycharge')
                ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                ->where('folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->first();
        } else {
            $tbl = DB::table('paycharge')
                ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->first();
        }

        return response()->json([
            'tbl' => $tbl
        ]);
    }

    public function remarkstore(Request $request)
    {
        $docid = $request->input('docid');
        $type = $request->input('type');
        $description = $request->input('description');

        RemarkService::insert([
            [
                'docid' => $docid,
                'type' => $type,
                'description' => $description,
            ],
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Remark saved successfully'
        ]);
    }

    public function remarkupdate(Request $request)
    {
        RemarkService::insert([
            [
                'docid' => $request->input('docid'),
                'sno' => $request->input('sno'),
                'type' => $request->input('type'),
                'description' => $request->input('description'),
            ],
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Remark updated successfully'
        ]);
    }

    public function updateroominclusive(Request $request)
    {
        $validated = $request->validate([
            'docid' => ['required', 'string', 'max:255'],
            'inclusions' => ['required', 'array', 'min:1'],
            'inclusions.*.sno' => ['nullable', 'integer', 'min:1'],
            'inclusions.*.rev_code' => ['required', 'string', 'max:255'],
            'inclusions.*.amount' => ['nullable', 'numeric', 'min:0'],
            'inclusions.*.chargepost' => [
                'nullable',
                'in:Daily,Once,Group',
            ],
        ]);

        try {
            $propertyId = session('propertyid');

            if (!$propertyId) {
                return response()->json([
                    'success' => false,
                    'message' => 'Property session not found.',
                ], 401);
            }

            $savedInclusions = DB::transaction(function () use (
                $validated,
                $propertyId
            ) {
                $docid = $validated['docid'];

                // Identify the booking source.
                $roomocc = RoomOcc::where('docid', $docid)->first();

                if ($roomocc) {
                    $vtype = $roomocc->vtype;
                    $vprefix = $roomocc->vprefix;
                    $vno = $roomocc->vno;
                } else {
                    $booking = Bookings::where('DocId', $docid)->first();

                    if (!$booking) {
                        throw ValidationException::withMessages([
                            'docid' => ['Booking not found.'],
                        ]);
                    }

                    $vtype = $booking->Vtype;
                    $vprefix = $booking->Vprefix;
                    $vno = $booking->BookNo;
                }

                $existingRecords = RoomInclusive::where('propertyid', $propertyId)
                    ->where('docid', $docid)
                    ->lockForUpdate()
                    ->get();

                $nextSno = ((int) $existingRecords->max('sno')) + 1;

                foreach ($validated['inclusions'] as $inclusion) {
                    $revCode = $inclusion['rev_code'];
                    $sno = $inclusion['sno'] ?? null;

                    $amountValue = $inclusion['amount'] ?? null;
                    $amount = ($amountValue === '' || $amountValue === null)
                        ? 0
                        : (float) $amountValue;


                    $query = RoomInclusive::where('propertyid', $propertyId)
                        ->where('docid', $docid);

                    if ($sno !== null) {
                        $query->where('sno', $sno);
                    } else {
                        $query->where('rev_code', $revCode);
                    }

                    $record = $query->first();

                    if ($record && (string) $record->rev_code !== (string) $revCode) {
                        throw ValidationException::withMessages([
                            'inclusions' => [
                                "Revenue code does not match sno {$sno}.",
                            ],
                        ]);
                    }

                    // Empty or zero amount: delete existing record, if any.
                    if ($amount <= 0) {
                        if ($record) {
                            $record->delete();
                        }

                        continue;
                    }

                    if (empty($inclusion['chargepost'])) {
                        throw ValidationException::withMessages([
                            'inclusions' => [
                                "Charge posting is required for {$revCode}.",
                            ],
                        ]);
                    }

                    if ($record) {
                        // Update existing row.
                        $record->amount = $amount;
                        $record->chargepost = $inclusion['chargepost'];
                        $record->u_name = Auth::user()->name;
                        $record->save();
                    } else {
                        // Insert new row.
                        $newRecord = new RoomInclusive();

                        $newRecord->propertyid = $propertyId;
                        $newRecord->docid = $docid;
                        $newRecord->bookno = $vno;
                        $newRecord->vtype = $vtype;
                        $newRecord->vprefix = $vprefix;
                        $newRecord->vdate = now();
                        $newRecord->sno = $nextSno++;
                        $newRecord->rev_code = $revCode;
                        $newRecord->amount = $amount;
                        $newRecord->chargepost = $inclusion['chargepost'];
                        $newRecord->u_name = Auth::user()->name;

                        $newRecord->save();
                    }
                }

                return RoomInclusive::where('propertyid', $propertyId)
                    ->where('docid', $docid)
                    ->orderBy('sno')
                    ->get();
            });

            return response()->json([
                'success' => true,
                'message' => 'Room inclusions saved successfully.',
                'data' => $savedInclusions,
            ]);
        } catch (ValidationException $e) {
            throw $e;
        } catch (\Throwable $e) {
            Log::error('Failed to update room inclusions.', [
                'docid' => $request->input('docid'),
                'exception' => $e->getMessage(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Unable to save room inclusions.',
            ], 500);
        }
    }

    public function submitroomchangedrag(Request $request)
    {
        $request->validate([
            'docid'      => 'required',
            'sno'        => 'required|integer',
            'targetRoom' => 'required',
            'targetDate' => 'required|date',
            'reason'     => 'required|string',
        ]);

        try {

            DB::beginTransaction();

            // Get current active reservation
            $booking = GrpBookinDetail::where('BookingDocid', $request->docid)
                ->where('Sno', $request->sno)
                ->where('Cancel', 'N')
                ->first();


            if (!$booking) {
                throw new \Exception('Active reservation record not found.');
            }

            $oldroomno = $booking->RoomNo;
            $oldroomcat = $booking->RoomCat;
            $oldroomaarrdate = $booking->ArrDate;
            $oldroomdepdate = $booking->DepDate;

            // Get target room
            $room = RoomMast::where('type', 'RO')
                ->where('rcode', $request->targetRoom)
                ->first();

            if (!$room) {
                throw new \Exception('Target room not found.');
            }

            // Calculate original stay duration
            $oldArrDate = \Carbon\Carbon::parse($booking->ArrDate);
            $oldDepDate = \Carbon\Carbon::parse($booking->DepDate);

            $dateDifference = $oldArrDate->diffInDays($oldDepDate);

            // New arrival date
            $newArrDate = \Carbon\Carbon::parse($request->targetDate);

            // Keep same stay duration
            $newDepDate = $newArrDate->copy()
                ->addDays($dateDifference);

            // Update existing reservation row
            $booking->RoomNo = $request->targetRoom;
            $booking->RoomCat = $room->room_cat;
            $booking->ArrDate = $newArrDate->format('Y-m-d');
            $booking->DepDate = $newDepDate->format('Y-m-d');
            $booking->U_Name = Auth::user()->u_name;
            $booking->updated_at = now();

            $booking->save();

            $newroomcat = $booking->RoomCat;
            $newroomaarrdate = $booking->ArrDate;
            $newroomdepdate = $booking->DepDate;
            $propertyId = (int) Auth::user()->propertyid;
            $u_name = Auth::user()->u_name;

            $remarkSno = Remark::where('docid', $booking->BookingDocid)
                ->max('sno');

            $desc = "Room changed from {$oldroomno} to {$request->targetRoom} by {$booking->U_Name} for the period {$newArrDate->format('d-m-Y')} to {$newDepDate->format('d-m-Y')} at time " . now()->format('d-m-Y H:i:s') . ". Reason: {$request->reason}";

            Remark::create([
                'docid'       => $booking->BookingDocid,
                'sno'         => ((int) $remarkSno) + 1,
                'type'        => 'Room Change',
                'status'      => 1,
                'description' => $desc,
                'ipaddr'      => $request->ip(),
                'u_name'      => Auth::user()->u_name,
            ]);

            DB::commit();

            SyncInventoryJob::dispatch(
                $oldroomcat,
                $newroomcat,
                $oldroomaarrdate,
                $newroomaarrdate,
                $oldroomdepdate,
                $newroomdepdate,
                $propertyId,
                $u_name
            );

            return response()->json([
                'success' => true,
                'message' => 'Room changed successfully.',
            ]);
        } catch (\Throwable $e) {

            DB::rollBack();

            \Log::error('Room change failed', [
                'docid'      => $request->docid,
                'sno'        => $request->sno,
                'targetRoom' => $request->targetRoom,
                'targetDate' => $request->targetDate,
                'error'      => $e->getMessage(),
            ]);

            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 500);
        }
    }
}
