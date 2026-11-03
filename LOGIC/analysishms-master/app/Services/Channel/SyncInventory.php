<?php

namespace App\Services\Channel;

use App\Models\RoomCat;
use App\Services\RoomAvailabilityService;
use App\Services\TenantDatabase;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

class SyncInventory
{
    protected RoomAvailabilityService $roomAvailabilityService;

    public function __construct(RoomAvailabilityService $roomAvailabilityService)
    {
        $this->roomAvailabilityService = $roomAvailabilityService;
    }

    public function sync(
        $oldcategory,
        $newcategory,
        $oldarrdate,
        $newarrdate,
        $olddepdate,
        $newdepdate,
        int $propertyId,
        string $u_name,
        bool $forceRefresh = false
    ): void {
        TenantDatabase::connect($propertyId);

        Log::info('SyncInventory started', [
            'oldcategory' => $oldcategory,
            'newcategory' => $newcategory,
            'oldarrdate' => $oldarrdate,
            'newarrdate' => $newarrdate,
            'olddepdate' => $olddepdate,
            'newdepdate' => $newdepdate,
            'propertyId' => $propertyId,
            'forceRefresh' => $forceRefresh,
        ]);

        $oldcategorytbl = RoomCat::where('cat_code', $oldcategory)->first();
        $newcategorytbl = RoomCat::where('cat_code', $newcategory)->first();

        if (!$oldcategorytbl || !$newcategorytbl) {
            Log::error('SyncInventory: Room category not found', [
                'oldcategory' => $oldcategory,
                'newcategory' => $newcategory,
                'propertyId' => $propertyId,
            ]);

            return;
        }

        /*
         * CASE 1:
         * Room added or removed.
         *
         * Category and dates remain the same, but availability
         * must be recalculated and pushed to the channel.
         */
        if (
            $forceRefresh &&
            $oldcategory == $newcategory &&
            $oldarrdate == $newarrdate &&
            $olddepdate == $newdepdate
        ) {
            $dates = $this->getDateRange($newarrdate, $newdepdate);

            $availability = $this->roomAvailabilityService->getAvailability(
                $dates,
                $propertyId
            );

            Log::info('SyncInventory CASE 1 check', [
                'oldCategoryExists' => (bool) $oldcategorytbl,
                'newCategoryExists' => (bool) $newcategorytbl,
                'dates' => $dates,
                'map_code' => $newcategorytbl->map_code ?? null,
            ]);

            foreach ($dates as $date) {
                $availableRooms = $availability[$date]['categories'][$newcategory]['available'] ?? 0;
                Log::info('SyncInventory sending inventory', [
                    'date' => $date,
                    'category' => $newcategory,
                    'map_code' => $newcategorytbl->map_code,
                    'availability' => $availableRooms,
                ]);
                app(UpdateInventory::class)->updateInventory(
                    [[
                        'category' => $newcategorytbl->map_code,
                        'availability' => max(0, (int) $availableRooms),
                    ]],
                    $date,
                    $date,
                    $propertyId,
                    $u_name
                );
            }

            Log::info('SyncInventory: Forced inventory refresh completed', [
                'category' => $newcategory,
                'arrival_date' => $newarrdate,
                'departure_date' => $newdepdate,
                'dates_updated' => $dates,
                'propertyId' => $propertyId,
            ]);

            return;
        }

        /*
         * CASE 2:
         * Same category, but arrival or departure dates changed.
         *
         * Refresh the old date range and the new date range.
         */
        if (
            $newcategory == $oldcategory &&
            (
                $oldarrdate != $newarrdate ||
                $olddepdate != $newdepdate
            )
        ) {
            $oldDates = $this->getDateRange($oldarrdate, $olddepdate);

            if (!empty($oldDates)) {
                $oldAvailability = $this->roomAvailabilityService->getAvailability(
                    $oldDates,
                    $propertyId
                );

                foreach ($oldDates as $date) {
                    $availableRooms = $oldAvailability[$date]['categories'][$oldcategory]['available'] ?? 0;

                    app(UpdateInventory::class)->updateInventory(
                        [[
                            'category' => $oldcategorytbl->map_code,
                            'availability' => max(0, (int) $availableRooms),
                        ]],
                        $date,
                        $date,
                        $propertyId,
                        $u_name
                    );
                }
            }

            $newDates = $this->getDateRange($newarrdate, $newdepdate);

            if (!empty($newDates)) {
                $newAvailability = $this->roomAvailabilityService->getAvailability(
                    $newDates,
                    $propertyId
                );

                foreach ($newDates as $date) {
                    $availableRooms = $newAvailability[$date]['categories'][$newcategory]['available'] ?? 0;

                    app(UpdateInventory::class)->updateInventory(
                        [[
                            'category' => $newcategorytbl->map_code,
                            'availability' => max(0, (int) $availableRooms),
                        ]],
                        $date,
                        $date,
                        $propertyId,
                        $u_name
                    );
                }
            }
        }

        /*
         * CASE 3:
         * Category changed.
         *
         * Refresh the old category's availability and the new
         * category's availability for their respective date ranges.
         */ elseif ($newcategory != $oldcategory) {
            $oldDates = $this->getDateRange($oldarrdate, $olddepdate);

            if (!empty($oldDates)) {
                $oldAvailability = $this->roomAvailabilityService->getAvailability(
                    $oldDates,
                    $propertyId
                );

                foreach ($oldDates as $date) {
                    $availableRooms = $oldAvailability[$date]['categories'][$oldcategory]['available'] ?? 0;

                    app(UpdateInventory::class)->updateInventory(
                        [[
                            'category' => $oldcategorytbl->map_code,
                            'availability' => max(0, (int) $availableRooms),
                        ]],
                        $date,
                        $date,
                        $propertyId,
                        $u_name
                    );
                }
            }

            $newDates = $this->getDateRange($newarrdate, $newdepdate);

            if (!empty($newDates)) {
                $newAvailability = $this->roomAvailabilityService->getAvailability(
                    $newDates,
                    $propertyId
                );

                foreach ($newDates as $date) {
                    $availableRooms = $newAvailability[$date]['categories'][$newcategory]['available'] ?? 0;

                    app(UpdateInventory::class)->updateInventory(
                        [[
                            'category' => $newcategorytbl->map_code,
                            'availability' => max(0, (int) $availableRooms),
                        ]],
                        $date,
                        $date,
                        $propertyId,
                        $u_name
                    );
                }
            }
        }

        Log::info('SyncInventory execution check', [
            'oldcategory' => $oldcategory,
            'newcategory' => $newcategory,
            'oldarrdate' => $oldarrdate,
            'newarrdate' => $newarrdate,
            'olddepdate' => $olddepdate,
            'newdepdate' => $newdepdate,
            'forceRefresh' => $forceRefresh,
            'category_unchanged' => $newcategory == $oldcategory,
            'arrival_changed' => $oldarrdate != $newarrdate,
            'departure_changed' => $olddepdate != $newdepdate,
        ]);
    }

    /**
     * Generate an inclusive date range.
     */
    private function getDateRange($arrivalDate, $departureDate): array
    {
        $dates = [];

        $startDate = Carbon::parse($arrivalDate);
        $endDate = Carbon::parse($departureDate);

        for (
            $date = $startDate->copy();
            $date->lte($endDate);
            $date->addDay()
        ) {
            $dates[] = $date->toDateString();
        }

        return $dates;
    }
}
