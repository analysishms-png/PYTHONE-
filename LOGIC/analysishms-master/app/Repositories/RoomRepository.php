<?php

namespace App\Repositories;

use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;

class RoomRepository
{
    public function getAvailableRooms(
        int $categoryId,
        string $checkInDate,
        string $checkOutDate
    ) {
        return $this->availableRoomsQuery(
            $categoryId,
            $checkInDate,
            $checkOutDate
        )->get();
    }

    public function findFirstAvailableRoom(
        int $categoryId,
        string $checkInDate,
        string $checkOutDate
    ) {
        return $this->availableRoomsQuery(
            $categoryId,
            $checkInDate,
            $checkOutDate
        )->first();
    }

    private function availableRoomsQuery(
        int $categoryId,
        string $checkInDate,
        string $checkOutDate
    ): Builder {
        return DB::table('room_mast as rm')
            ->select('rm.rcode', 'rm.room_cat')
            ->where('rm.room_cat', $categoryId)

            ->whereNotIn('rm.rcode', function ($query) use (
                $categoryId,
                $checkInDate,
                $checkOutDate
            ) {
                $query->select('ro.roomno')
                    ->from('roomocc as ro')
                    ->whereNull('ro.type')
                    ->where('ro.roomcat', $categoryId)
                    ->where('ro.chkindate', '<', $checkOutDate)
                    ->where('ro.depdate', '>', $checkInDate);
            })

            ->whereNotIn('rm.rcode', function ($query) use (
                $checkInDate,
                $checkOutDate
            ) {
                $query->select('gb.RoomNo')
                    ->from('grpbookingdetails as gb')
                    ->where('gb.ArrDate', '<', $checkOutDate)
                    ->where('gb.DepDate', '>', $checkInDate)
                    ->where('gb.chkoutyn', 'N')
                    ->where('gb.Cancel', 'N')
                    ->where('gb.ContraDocId', '')
                    ->where('gb.RoomNo', '!=', 0);
            })

            ->whereNotIn('rm.rcode', function ($query) use (
                $checkInDate,
                $checkOutDate
            ) {
                $query->select('rb.roomcode')
                    ->from('roomblockout as rb')
                    ->where('rb.fromdate', '<', $checkOutDate)
                    ->where('rb.todate', '>', $checkInDate)
                    ->where('rb.type', 'O');
            });
    }
}
