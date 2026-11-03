<?php

namespace App\Services;

use App\Models\MallUnittype;
use App\Models\RoomOcc;
use Illuminate\Support\Facades\DB;
use Throwable;

class NotificationCreatorService
{
    public function createWalkinCheckin(
        int|string $propertyId,
        string $docid,
    ): ?string {
        try {

            $leaderroomyn = RoomOcc::where('propertyid', $propertyId)->where('docid', $docid)->where('leaderyn', 'Y')->first(); // will use this condition later

            $rooms = DB::table('roomocc')
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.propertyid', '=', 'roomocc.propertyid')
                        ->on('guestfolio.docid', '=', 'roomocc.docid');
                })
                ->where('roomocc.propertyid', $propertyId)
                ->where('roomocc.docid', $docid)
                ->select([
                    'roomocc.roomno',
                    'guestfolio.name as guestname',
                ])
                ->get();

            if ($rooms->isEmpty()) {
                return null;
            }

            $roomNumbers = $rooms
                ->pluck('roomno')
                ->filter(fn($room) => $room !== null && $room !== '')
                ->unique()
                ->values();

            $guestName = $rooms
                ->pluck('guestname')
                ->filter(fn($name) => $name !== null && trim($name) !== '')
                ->first();

            if ($roomNumbers->isEmpty()) {
                return null;
            }

            $roomText = $roomNumbers->implode(', ');

            $guestText = $guestName
                ? ' Guest Name: ' . $guestName
                : '';

            return 'Room No. ' . $roomText . ' has been checked in now.' . $guestText;
        } catch (Throwable $e) {
            report($e);

            return null;
        }
    }

    public function unitmaster(
        int|string $propertyId,
        string $typecode,
    ): ?string {
        try {

            $unitmast = MallUnittype::where('propertyid', $propertyId)->where('typecode', $typecode)->first();

            if (!$unitmast) {
                return null;
            }

            $notitext = $unitmast->typename
                ? ', Description: ' . $unitmast->description
                : '';

            return 'New Unit ' . $notitext . ' has been created now.';
        } catch (Throwable $e) {
            report($e);

            return null;
        }
    }
}
