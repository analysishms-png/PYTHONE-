<?php

namespace App\Services;

use App\Models\Roomkey;
use App\Models\RoomOcc;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Models\Log as MaintainLog;

class RoomKeyService
{
    public function store(array $data): array
    {
        return [
            'status' => true,
            'message' => 'Success',
            'data' => $data
        ];
    }

    public function push($docid, $sno1, ?string $departureTime = null, string $command = 'KR'): array
    {

        try {
            $propertyid = Auth::user()->propertyid;

            // Check if an unprocessed request already exists for this docid
            $exists = Roomkey::where('propertyid', $propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->whereIn('status', [0, 2])
                ->exists();

            if ($exists) {
                Roomkey::where('propertyid', $propertyid)
                    ->where('docid', $docid)
                    ->where('sno1', $sno1)
                    ->whereIn('status', [0, 2])
                    ->delete();
            }

            $roomoccs = RoomOcc::where('propertyid', $propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->whereNull('type')
                ->get();

            if ($roomoccs->isEmpty()) {
                return [
                    'success' => false,
                    'message' => 'Room occupancy not found'
                ];
            }

            $requests = [];

            foreach ($roomoccs as $roomocc) {
                $requests[] = [
                    'roomno' => $roomocc->roomno,
                    'guest_no' => $roomocc->guestprof,
                    'guest_name' => $roomocc->name,
                    'arrival_date' => date('ymd', strtotime($roomocc->chkindate)),
                    'departure_date' => date('ymd', strtotime($roomocc->depdate)),
                    'departure_time' => \Carbon\Carbon::parse($departureTime ?: $roomocc->deptime)
                        ->subHours(5)
                        ->subMinutes(30)
                        ->format('H:i'),
                    'keytype' => 'KTN',
                    'keys' => '01',
                    'keycoder' => 'KC01',
                ];
            }

            RoomOcc::where('propertyid', $propertyid)
                ->where('docid', $docid)
                ->where('sno1', $sno1)
                ->update(['deptime' => $departureTime ?: now()->format('H:i')]);

            $payload = [
                'command' => $command,
                'workstation' => 'WSBH.COM.694798548',
                'request_date' => now()->format('ymd'),
                'request_time' => now()->format('His'),
                'requests' => $requests
            ];

            $roomkey = Roomkey::create([
                'propertyid' => $propertyid,
                'docid' => $docid,
                'sno1' => $sno1,
                'data' => $payload,
                'u_name' => Auth::user()->name,
                'status' => 0
            ]);

            // Dispatch Room Key request through WebSocket for Property ID 156 only.
            if ((string) $propertyid === '156') {
                try {
                    event(new \App\Events\RoomKeyEvent([
                        'propertyid' => (string) $propertyid,
                        'data' => [
                            [
                                'id' => $roomkey->id,
                                'propertyid' => (string) $propertyid,
                                'docid' => $docid,
                                'data' => $payload,
                            ],
                        ],
                    ], $propertyid));

                    Log::info(
                        'Room Key WebSocket event dispatched',
                        [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'roomkey_id' => $roomkey->id,
                        ]
                    );
                } catch (\Throwable $e) {
                    Log::error(
                        'Room Key WebSocket event dispatch failed',
                        [
                            'propertyid' => $propertyid,
                            'docid' => $docid,
                            'error' => $e->getMessage(),
                        ]
                    );
                }
            }

            $waitTimeoutSeconds = 3;
            $pollIntervalMicroseconds = 500000; // 0.5 seconds
            $deadline = microtime(true) + $waitTimeoutSeconds;
            $finalStatus = $roomkey->status;
            $finalReason = null;

            while (microtime(true) < $deadline) {
                usleep($pollIntervalMicroseconds);

                $roomkey = Roomkey::where('propertyid', $propertyid)
                    ->where('docid', $docid)
                    ->where('sno1', $sno1)
                    ->orderByDesc('id')
                    ->first(['status', 'reason']);

                if (!$roomkey) {
                    break;
                }

                $finalStatus = $roomkey->status;
                $finalReason = $roomkey->reason ?? null;

                if ($finalStatus === 1 || $finalStatus === 2) {
                    break;
                }
            }

            if ($finalStatus === 1) {
                return [
                    'success' => true,
                    'message' => 'Room key allotted successfully',
                    'status' => 1
                ];
            }

            if ($finalStatus === 2) {
                return [
                    'success' => false,
                    'message' => 'Room key push failed' . ($finalReason ? ': ' . $finalReason : ''),
                    'status' => 2,
                    'reason' => $finalReason
                ];
            }

            return [
                'success' => true,
                'message' => 'Key request queued',
                'status' => 0
            ];
        } catch (\Exception $e) {

            MaintainLog::create([
                'propertyid' => Auth::user()->propertyid,
                'username' => Auth::user()->name,
                'log_type' => 'RoomKeyService',
                'message' => $e->getMessage(),
                'line' => $e->getLine(),
                'file' => $e->getFile(),
                'ip_address' => request()->ip()
            ]);

            return [
                'success' => false,
                'message' => 'Error: ' . $e->getMessage()
            ];
        }
    }
}
