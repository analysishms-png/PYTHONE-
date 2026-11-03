<?php

namespace App\Http\Controllers;

use App\Events\RoomKeyEvent;
use App\Models\Roomkey;
use App\Services\TenantDatabase;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\Facades\Log;

class PythonRoomKeyController extends Controller
{
    public function updateroomkeydata(Request $request)
    {
        $request->validate([
            'property_id' => 'required|integer|min:1',
            'id' => 'required|integer|min:1',
            'reason' => 'nullable|string',
        ]);

        $propertyId = (int) $request->input('property_id');
        $roomkeyId = (int) $request->input('id');
        $connection = 'main';

        if ($propertyId > 100) {
            try {
                TenantDatabase::connect($propertyId);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'success' => false,
                    'message' => 'Database not found for Property ID: ' . $propertyId,
                ], 500);
            }
        }

        try {
            $updated = Roomkey::on($connection)
                ->where('propertyid', $propertyId)
                ->where('id', $roomkeyId)
                ->where('status', 0)
                ->update([
                    'status' => 1,
                    'reason' => $request->input('reason'),
                ]);

            return response()->json([
                'status' => $updated ? 'success' : 'not_updated',
                'message' => $updated
                    ? 'Room key queue updated'
                    : 'Room key row not found or already processed',
                'updated_count' => $updated,
            ]);
        } catch (\Throwable $e) {
            Log::error('Room key success update failed', [
                'property_id' => $propertyId,
                'roomkey_id' => $roomkeyId,
                'error' => $e->getMessage(),
            ]);

            return response()->json([
                'status' => 'error',
                'message' => 'Unknown Error Occurred',
            ], 500);
        }
    }

    public function updateroomkeyfailed(Request $request)
    {
        $request->validate([
            'property_id' => 'required|integer|min:1',
            'id' => 'required|integer|min:1',
            'reason' => 'required|string',
        ]);

        $propertyId = (int) $request->input('property_id');
        $roomkeyId = (int) $request->input('id');
        $reason = $request->input('reason');
        $connection = 'main';

        if ($propertyId > 100) {
            try {
                TenantDatabase::connect($propertyId);
                $connection = 'tenant';
            } catch (\Throwable $e) {
                return response()->json([
                    'success' => false,
                    'message' => 'Database not found for Property ID: ' . $propertyId,
                ], 500);
            }
        }

        try {
            $updated = Roomkey::on($connection)
                ->where('propertyid', $propertyId)
                ->where('id', $roomkeyId)
                ->where('status', 0)
                ->update([
                    'reason' => $reason,
                    'status' => 2,
                ]);

            return response()->json([
                'status' => $updated ? 'success' : 'not_updated',
                'message' => $updated
                    ? 'Room key queue marked as failed'
                    : 'Room key row not found or already processed',
                'updated_count' => $updated,
            ]);
        } catch (\Throwable $e) {
            Log::error('Room key failure update failed', [
                'property_id' => $propertyId,
                'roomkey_id' => $roomkeyId,
                'error' => $e->getMessage(),
            ]);

            return response()->json([
                'status' => 'error',
                'message' => 'Unknown Error Occurred',
            ], 500);
        }
    }
}
