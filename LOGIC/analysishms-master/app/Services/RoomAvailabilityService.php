<?php

namespace App\Services;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class RoomAvailabilityService
{
    public function getAvailability(array $dates, int $propertyId): array
    {
        $totalRooms = DB::table('room_cat')
            ->where('propertyid', $propertyId)
            ->where('inclcount', 'Y')
            ->where('type', 'RO')
            ->sum('norooms');

        $categories = DB::table('room_cat')
            ->where('propertyid', $propertyId)
            ->where('type', 'RO')
            ->where('inclcount', 'Y')
            ->get();

        $result = [];

        foreach ($dates as $date) {
            $date = Carbon::parse($date)->toDateString();

            $occupiedOcc = DB::table('roomocc')
                ->where('propertyid', $propertyId)
                ->where(function ($query) {
                    $query->where('type', '!=', 'C')
                        ->orWhereNull('type');
                })
                ->where('chkindate', '<=', $date)
                ->where(function ($query) use ($date) {
                    $query->where('chkoutdate', '>', $date)
                        ->orWhere(function ($query) use ($date) {
                            $query->whereNull('chkoutdate')
                                ->where('depdate', '>', $date);
                        });
                })
                ->distinct()
                ->pluck('roomno')
                ->all();

            $occupiedGrp = DB::table('grpbookingdetails')
                ->where('Property_ID', $propertyId)
                ->where('ArrDate', '<=', $date)
                ->where('DepDate', '>', $date)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->where('RoomNo', '!=', 0)
                ->distinct()
                ->pluck('RoomNo')
                ->all();

            $blockedRooms = DB::table('roomblockout')
                ->where('propertyid', $propertyId)
                ->where('type', 'O')
                ->where('fromdate', '<=', $date)
                ->where('todate', '>', $date)
                ->distinct()
                ->pluck('roomcode')
                ->all();

            $unavailableRooms = array_unique(array_merge(
                $occupiedOcc,
                $occupiedGrp,
                $blockedRooms
            ));

            $totalUnavailable = count($unavailableRooms);

            $occupancy = $totalRooms > 0
                ? round(($totalUnavailable / $totalRooms) * 100, 2)
                : 0;

            $bookingsocc = DB::table('roomocc')
                ->join('room_mast as rm', 'rm.rcode', '=', 'roomocc.roomno')
                ->select(
                    'rm.room_cat',
                    DB::raw('COUNT(DISTINCT roomocc.roomno) as booked')
                )
                ->where('roomocc.propertyid', $propertyId)
                ->where(function ($query) {
                    $query->where('roomocc.type', '!=', 'C')
                        ->orWhereNull('roomocc.type');
                })
                ->where('roomocc.chkindate', '<=', $date)
                ->where(function ($query) use ($date) {
                    $query->where('roomocc.chkoutdate', '>', $date)
                        ->orWhere(function ($query) use ($date) {
                            $query->whereNull('roomocc.chkoutdate')
                                ->where('roomocc.depdate', '>', $date);
                        });
                })
                ->groupBy('rm.room_cat')
                ->pluck('booked', 'rm.room_cat');

            $bookingsgrp = DB::table('grpbookingdetails')
                ->select(
                    'RoomCat',
                    DB::raw('COUNT(DISTINCT RoomNo) as booked')
                )
                ->where('Property_ID', $propertyId)
                ->where('ArrDate', '<=', $date)
                ->where('DepDate', '>', $date)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->where('RoomNo', '!=', 0)
                ->groupBy('RoomCat')
                ->pluck('booked', 'RoomCat');

            $categoryData = [];

            foreach ($categories as $cat) {
                $occupiedRoomCodes = DB::table('roomocc')
                    ->join('room_mast as rm', function ($join) {
                        $join->on('rm.rcode', '=', 'roomocc.roomno')
                            ->on('rm.propertyid', '=', 'roomocc.propertyid');
                    })
                    ->where('rm.propertyid', $propertyId)
                    ->where('rm.room_cat', $cat->cat_code)
                    ->where('roomocc.propertyid', $propertyId)
                    ->where(function ($query) {
                        $query->where('roomocc.type', '!=', 'C')
                            ->orWhereNull('roomocc.type');
                    })
                    ->where('roomocc.chkindate', '<=', $date)
                    ->where(function ($query) use ($date) {
                        $query->where('roomocc.chkoutdate', '>', $date)
                            ->orWhere(function ($query) use ($date) {
                                $query->whereNull('roomocc.chkoutdate')
                                    ->where('roomocc.depdate', '>', $date);
                            });
                    })
                    ->pluck('roomocc.roomno')
                    ->all();

                $groupRoomCodes = DB::table('grpbookingdetails')
                    ->where('Property_ID', $propertyId)
                    ->where('RoomCat', $cat->cat_code)
                    ->where('ArrDate', '<=', $date)
                    ->where('DepDate', '>', $date)
                    ->where('Cancel', 'N')
                    ->where('ContraDocId', '')
                    ->where('RoomNo', '!=', 0)
                    ->pluck('RoomNo')
                    ->all();

                $blockedRoomCodes = DB::table('roomblockout as rb')
                    ->join('room_mast as rm', function ($join) {
                        $join->on('rm.rcode', '=', 'rb.roomcode')
                            ->on('rm.propertyid', '=', 'rb.propertyid');
                    })
                    ->where('rm.propertyid', $propertyId)
                    ->where('rm.room_cat', $cat->cat_code)
                    ->where('rb.propertyid', $propertyId)
                    ->where('rb.type', 'O')
                    ->where('rb.fromdate', '<=', $date)
                    ->where('rb.todate', '>', $date)
                    ->pluck('rb.roomcode')
                    ->all();

                $categoryUnavailable = count(array_unique(array_merge(
                    $occupiedRoomCodes,
                    $groupRoomCodes,
                    $blockedRoomCodes
                )));

                $categoryData[$cat->cat_code] = [
                    'total' => (int) $cat->norooms,
                    'available' => max(
                        0,
                        (int) $cat->norooms - $categoryUnavailable
                    ),
                ];
            }

            $result[$date] = [
                'total_available' => max(
                    0,
                    (int) $totalRooms - $totalUnavailable
                ),
                'occupancy' => min(100, $occupancy),
                'categories' => $categoryData,
            ];
        }

        return $result;
    }
}
