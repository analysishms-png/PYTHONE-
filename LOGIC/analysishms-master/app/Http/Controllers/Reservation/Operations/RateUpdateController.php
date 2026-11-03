<?php

namespace App\Http\Controllers\Reservation\Operations;

use App\Http\Controllers\Controller;
use App\Models\GrpBookinDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Throwable;

class RateUpdateController extends Controller
{
    public function update(Request $request)
    {
        $validated = $request->validate([
            'docid' => ['required', 'string', 'max:255'],
            'tarrif' => ['required', 'numeric', 'min:0'],
            'inc_tax' => ['required', 'in:Y,N'],
            'sno' => ['nullable', 'integer', 'min:1'],
            'mode' => ['nullable', 'in:single,bulk,reverse'],
        ]);

        try {
            $propertyId = Auth::user()->propertyid;
            $incTax = $validated['inc_tax'];
            $isSingle = !empty($validated['sno']);
            $mode = $validated['mode'] ?? ($isSingle ? 'single' : 'bulk');
            $submittedTarrif = (float) $validated['tarrif'];

            $result = DB::transaction(function () use (
                $validated,
                $propertyId,
                $submittedTarrif,
                $incTax,
                $isSingle,
                $mode
            ) {
                $query = GrpBookinDetail::where('Property_ID', $propertyId)
                    ->where('BookingDocid', $validated['docid'])
                    ->where('Cancel', 'N');

                if ($isSingle) {
                    $query->where('Sno', $validated['sno']);
                }

                $bookings = $query->lockForUpdate()->get();

                if ($bookings->isEmpty()) {
                    return null;
                }

                $roomCount = $bookings->count();

                // Calculate per-room tariff based on mode
                $perRoomTarrif = match ($mode) {
                    'reverse' => round($submittedTarrif / $roomCount, 2), // total ÷ rooms
                    'bulk' => $submittedTarrif, // already per-room rate
                    default => $submittedTarrif, // 'single'
                };

                // For reverse mode, we should respect each room's existing tax structure
                // For single/bulk, use the submitted inc_tax value
                foreach ($bookings as $booking) {
                    $roomIncTax = ($mode === 'reverse') ? $booking->IncTax : $incTax;
                    
                    $booking->update([
                        'Tarrif' => $perRoomTarrif,
                        'IncTax' => $roomIncTax,
                        'updated_at' => now(),
                    ]);
                }

                return [
                    'updated_records' => $roomCount,
                    'total_tarrif' => match ($mode) {
                        'single' => null,
                        'reverse' => $submittedTarrif,
                        'bulk' => $perRoomTarrif * $roomCount,
                    },
                    'per_room_tarrif' => $perRoomTarrif,
                    'inc_tax' => $incTax,
                    'mode' => $mode,
                ];
            });

            if ($result === null) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Booking record not found.',
                ], 404);
            }

            $message = match ($result['mode']) {
                'single' => 'Rate updated successfully.',
                'reverse' => 'Reverse calculation complete. Total amount of ' . number_format($result['total_tarrif'], 2)
                    . ' distributed across ' . $result['updated_records']
                    . ' rooms at ' . number_format($result['per_room_tarrif'], 2)
                    . ' per room (each room retains its tax setting).',
                'bulk' => 'Bulk update complete. Per-room tariff of ' . number_format($result['per_room_tarrif'], 2)
                    . ' applied to ' . $result['updated_records']
                    . ' rooms. Total: ' . number_format($result['per_room_tarrif'] * $result['updated_records'], 2)
                    . '.',
                default => 'Bulk update complete. Total amount of ' . number_format($result['total_tarrif'], 2)
                    . ' distributed across ' . $result['updated_records']
                    . ' rooms at ' . number_format($result['per_room_tarrif'], 2)
                    . ' per room.',
            };

            return response()->json([
                'status' => 'success',
                'message' => $message,
                'updated_records' => $result['updated_records'],
                'data' => [
                    'docid' => $validated['docid'],
                    'tarrif' => $result['per_room_tarrif'],
                    'total_tarrif' => $result['total_tarrif'],
                    'per_room_tarrif' => $result['per_room_tarrif'],
                    'inc_tax' => $result['inc_tax'],
                    'sno' => $validated['sno'] ?? null,
                    'mode' => $result['mode'],
                ],
            ]);
        } catch (Throwable $e) {
            report($e);

            return response()->json([
                'status' => 'error',
                'message' => 'Failed to update rate: ' . $e->getMessage(),
            ], 500);
        }
    }
}
