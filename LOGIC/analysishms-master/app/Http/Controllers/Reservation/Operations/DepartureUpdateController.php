<?php

namespace App\Http\Controllers\Reservation\Operations;

use App\Http\Controllers\Controller;
use App\Models\GrpBookinDetail;
use App\Jobs\SyncInventoryJob;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Throwable;

class DepartureUpdateController extends Controller
{
    public function update(Request $request)
    {
        $validated = $request->validate([
            'docid'   => ['required', 'string', 'max:255'],
            'arrdate' => ['required', 'date_format:Y-m-d'],
            'depdate' => ['required', 'date_format:Y-m-d'],
            'sno'     => ['nullable', 'integer', 'min:1'],
        ]);

        if ($validated['depdate'] < $validated['arrdate']) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Departure date cannot be before arrival date.',
            ], 422);
        }

        try {
            $propertyId = (int) Auth::user()->propertyid;
            $u_name = Auth::user()->u_name;

            DB::beginTransaction();

            $query = GrpBookinDetail::where(
                'BookingDocid',
                $validated['docid']
            );

            if (!empty($validated['sno'])) {
                $query->where('Sno', $validated['sno']);
            }

            // Capture old values before updating.
            $oldBookings = (clone $query)
                ->get([
                    'Sno',
                    'RoomCat',
                    'ArrDate',
                    'DepDate',
                ]);

            if ($oldBookings->isEmpty()) {
                DB::rollBack();

                return response()->json([
                    'status'  => 'error',
                    'message' => 'Booking record not found.',
                ], 404);
            }

            // Update one booking or all bookings in the group.
            $updated = (clone $query)->update([
                'ArrDate'   => $validated['arrdate'],
                'DepDate'   => $validated['depdate'],
                'updated_at' => now(),
            ]);

            DB::commit();
            if (channelparameter()->checkyn == 'Y') {
                // Sync inventory for every affected booking.
                foreach ($oldBookings as $oldBooking) {
                    SyncInventoryJob::dispatch(
                        $oldBooking->RoomCat,
                        $oldBooking->RoomCat,
                        $oldBooking->ArrDate,
                        $validated['arrdate'],
                        $oldBooking->DepDate,
                        $validated['depdate'],
                        $propertyId,
                        $u_name
                    );
                }
            }

            return response()->json([
                'status'  => 'success',
                'message' => !empty($validated['sno'])
                    ? 'Arrival and departure dates updated successfully.'
                    : 'Group arrival and departure dates updated successfully.',
                'updated_records' => $updated,
                'data' => [
                    'docid'   => $validated['docid'],
                    'arrdate' => $validated['arrdate'],
                    'depdate' => $validated['depdate'],
                    'sno'     => $validated['sno'] ?? null,
                ],
            ]);
        } catch (Throwable $e) {
            if (DB::transactionLevel() > 0) {
                DB::rollBack();
            }

            Log::error('DepartureUpdateController failed', [
                'docid'   => $validated['docid'] ?? null,
                'sno'     => $validated['sno'] ?? null,
                'arrdate' => $validated['arrdate'] ?? null,
                'depdate' => $validated['depdate'] ?? null,
                'error'   => $e->getMessage(),
            ]);

            report($e);

            return response()->json([
                'status'  => 'error',
                'message' => 'Failed to update booking dates.',
            ], 500);
        }
    }
}
