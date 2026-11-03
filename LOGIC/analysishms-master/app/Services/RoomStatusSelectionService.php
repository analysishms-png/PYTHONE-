<?php

namespace App\Services;

use InvalidArgumentException;
use Carbon\Carbon;

class RoomStatusSelectionService
{
    // public function convert(?string $selected): array
    // {
    //     if (empty($selected)) {
    //         return [];
    //     }

    //     $data = json_decode($selected, true);

    //     if (json_last_error() !== JSON_ERROR_NONE) {
    //         throw new InvalidArgumentException(
    //             'Invalid room status selection: ' . json_last_error_msg()
    //         );
    //     }

    //     return collect($data)
    //         ->filter(fn($item) => !empty($item['roomno']))
    //         ->groupBy(fn($item) => $item['roomcategory'] . '_' . $item['roomno'])
    //         ->map(function ($items) {
    //             $fromdate = $items->min('date');
    //             $todate = $items->max('date');

    //             if ($fromdate === $todate) {
    //                 $todate = Carbon::parse($todate)->addDay()->format('Y-m-d');
    //             }

    //             return (object) [
    //                 'roomcategory' => $items->first()['roomcategory'] ?? null,
    //                 'roomno'       => $items->first()['roomno'] ?? null,
    //                 'fromdate'     => $fromdate,
    //                 'todate'       => $todate,
    //             ];
    //         })
    //         ->values()
    //         ->all();
    // }

    public function convert(?string $selected, bool $filterOccupiedRooms = false): array
    {
        if (empty($selected)) {
            return [];
        }

        $data = json_decode($selected, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new InvalidArgumentException(
                'Invalid room status selection: ' . json_last_error_msg()
            );
        }

        $rooms = collect($data)
            ->filter(fn($item) => !empty($item['roomno']))
            ->groupBy(fn($item) => $item['roomcategory'] . '_' . $item['roomno'])
            ->map(function ($items) {
                $fromdate = $items->min('date');
                $todate = $items->max('date');

                if ($fromdate === $todate) {
                    $todate = Carbon::parse($todate)->addDay()->format('Y-m-d');
                }

                return (object) [
                    'roomcategory' => $items->first()['roomcategory'] ?? null,
                    'roomno'       => $items->first()['roomno'] ?? null,
                    'fromdate'     => $fromdate,
                    'todate'       => $todate,
                ];
            });

        if ($filterOccupiedRooms) {
            $rooms = $rooms->reject(function ($room) {
                return \App\Models\RoomOcc::whereNull('type')
                    ->where('depdate', $room->fromdate)
                    ->where('roomno', $room->roomno)
                    ->exists();
            });
        }

        return $rooms->values()->all();
    }
}
