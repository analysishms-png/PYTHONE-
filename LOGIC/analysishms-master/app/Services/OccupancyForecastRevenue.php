<?php

namespace App\Services;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

/**
 * Day-wise "Total Charges" revenue for the Occupancy Forecast report.
 *
 * This mirrors the amount shown as "Total Charges" in the Room Status
 * reservation popup (public/admin/js/room.js -> openbookngreservemodal), whose
 * data is produced by App\Services\Fetch\PreformaFetch.
 *
 * Per booking the popup shows:
 *
 *   Room Charges : sum over room rows of
 *                  (IncTax == 'Y' ? Tarrif / (1 + (cgst + sgst) / 100) : Tarrif) * NoDays
 *   Room Inclusive : sum over room_inclusive rows (all rows, including future
 *                  reservations not yet checked in) of
 *                  amount' * baseQty
 *                    amount'  = IncTax == 'Y' ? amount / (1 + (cgst + sgst) / 100) : amount
 *                    baseQty  = Daily ? total_nights : (Once ? total_roomdet : 1)
 *                    cgst/sgst = amount <= 7500 ? 2.5 : 9
 *
 * A booking occupies NoDays consecutive nights starting at ArrDate. This class
 * charges one night's worth of that total to every date it occupies, so summing
 * a booking's contribution over its own nights equals the popup's "Total Charges".
 *
 * Both future reservations and stays already converted to a check-in
 * (ContraDocId) are counted, so every date in the requested range reports revenue.
 */
class OccupancyForecastRevenue
{
    /**
     * @param  array<int, string>  $dates  Date list in Y-m-d format.
     * @return array<string, float> Map of Y-m-d => revenue.
     */
    public function dailyRevenue(int $propertyid, array $dates): array
    {
        $dates = array_values(array_unique($dates));
        $result = array_fill_keys($dates, 0.0);

        if (empty($dates)) {
            return $result;
        }

        $from = min($dates);
        $to   = max($dates);

        $taxMap = $this->taxRateMap($propertyid);

        // ── 1. Future reservations (not yet checked in) ───────────────────────
        // Only grpbookingdetails rows where ContraDocId is empty (not converted).
        $bookings = DB::table('grpbookingdetails')
            ->where('Property_ID', $propertyid)
            ->where('Cancel', 'N')
            ->where('ContraDocId', '')
            ->where('ArrDate', '<=', $to)
            ->whereRaw('DATE_ADD(ArrDate, INTERVAL NoDays DAY) > ?', [$from])
            ->get(['BookingDocid', 'Tarrif', 'IncTax', 'RoomTaxStru', 'ArrDate', 'NoDays']);

        foreach ($bookings as $booking) {
            $netTariff = $this->netTariff($booking, $taxMap);
            if ($netTariff == 0.0) {
                continue;
            }
            foreach ($this->occupiedDates($booking, $dates) as $date) {
                $result[$date] += $netTariff;
            }
        }

        // Room inclusive extras for reservations.
        foreach ($this->inclusiveRevenue($propertyid, $bookings, $dates) as $date => $amount) {
            $result[$date] = ($result[$date] ?? 0) + $amount;
        }

        // ── 2. Already checked-in guests (roomocc) ────────────────────────────
        // roomocc covers [chkindate, depdate). Add one night's net room rate
        // to every date the guest occupies within the requested range.
        $checkins = DB::table('roomocc')
            ->where('propertyid', $propertyid)
            ->whereNull('type')
            ->where('chkindate', '<=', $to)
            ->where('depdate', '>', $from)
            ->get(['roomrate', 'rrtaxinc', 'roomtaxstru', 'chkindate', 'depdate']);

        foreach ($checkins as $row) {
            $netRate = $this->netTariffFromRate(
                (float) $row->roomrate,
                strtoupper(trim((string) $row->rrtaxinc)) === 'Y',
                (string) $row->roomtaxstru,
                $taxMap
            );
            if ($netRate == 0.0) {
                continue;
            }
            $arr = substr((string) $row->chkindate, 0, 10);
            $dep = substr((string) $row->depdate, 0, 10);
            foreach ($dates as $date) {
                if ($arr <= $date && $date < $dep) {
                    $result[$date] += $netRate;
                }
            }
        }

        return $result;
    }

    /**
     * The dates (restricted to the requested list) on which this room row sits.
     *
     * @param  array<int, string>  $dates
     * @return array<int, string>
     */
    private function occupiedDates(object $booking, array $dates): array
    {
        $nights = (int) $booking->NoDays;
        if ($nights <= 0) {
            return [];
        }

        $arr = substr((string) $booking->ArrDate, 0, 10);
        $last = Carbon::parse($arr)->addDays($nights)->toDateString();

        $occupied = [];
        foreach ($dates as $date) {
            if ($arr <= $date && $date < $last) {
                $occupied[] = $date;
            }
        }

        return $occupied;
    }

    /**
     * Day-wise room-inclusive extras for the given bookings.
     *
     * @param  array<int, string>  $dates
     * @return array<string, float> Map of Y-m-d => amount.
     */
    private function inclusiveRevenue(int $propertyid, $bookings, array $dates): array
    {
        $result = array_fill_keys($dates, 0.0);

        $docids = $bookings->pluck('BookingDocid')->filter()->unique()->values()->all();
        if (empty($docids)) {
            return $result;
        }

        // Booking level totals, matching the gbd subquery used by PreformaFetch.
        $totals = DB::table('grpbookingdetails')
            ->whereIn('BookingDocid', $docids)
            ->groupBy('BookingDocid')
            ->get([
                'BookingDocid',
                DB::raw('SUM(NoDays) as total_nights'),
                DB::raw('SUM(RoomDet) as total_roomdet'),
            ])
            ->keyBy('BookingDocid');

        $extras = DB::table('room_inclusive as ri')
            ->leftJoin('revmast as rm', function ($join) {
                $join->on('rm.rev_code', '=', 'ri.rev_code')
                    ->on('rm.propertyid', '=', 'ri.propertyid');
            })
            ->where('ri.propertyid', $propertyid)
            ->whereIn('ri.docid', $docids)
            // Include all inclusive charges — both future reservations (contradocid='')
            // and already-converted/checked-in rows — so forecast revenue is visible
            // for upcoming stays, not just checked-in guests.
            ->get([
                'ri.docid',
                'ri.amount',
                'ri.chargepost',
                'rm.tax_inc',
                DB::raw('CASE WHEN ri.amount <= 7500.00 THEN 2.5 ELSE 9 END as cgst_rate'),
                DB::raw('CASE WHEN ri.amount <= 7500.00 THEN 2.5 ELSE 9 END as sgst_rate'),
            ]);

        foreach ($extras as $extra) {
            $amount = (float) $extra->amount;

            if (strtoupper(trim((string) $extra->tax_inc)) === 'Y') {
                $rate = ((float) $extra->cgst_rate + (float) $extra->sgst_rate) / 100;
                if ($rate > 0) {
                    $amount = $amount / (1 + $rate);
                }
            }

            if ($amount == 0.0) {
                continue;
            }

            $rows = $bookings->where('BookingDocid', $extra->docid);
            if ($rows->isEmpty()) {
                continue;
            }

            $post = (string) $extra->chargepost;

            if ($post === 'Daily') {
                // Charged per room per night.
                foreach ($rows as $row) {
                    foreach ($this->occupiedDates($row, $dates) as $date) {
                        $result[$date] += $amount;
                    }
                }

                continue;
            }

            // 'Once' is multiplied by the booking's room count, 'Group' (and any
            // other posting rule) counts once — both belong to the arrival date.
            $baseQty = 1;
            if ($post === 'Once') {
                $totalRoomDet = (int) ($totals->get($extra->docid)->total_roomdet ?? 0);
                $baseQty = $totalRoomDet > 0 ? $totalRoomDet : 1;
            }

            $arrival = substr((string) $rows->min('ArrDate'), 0, 10);
            if (isset($result[$arrival]) && $arrival === $arrival) {
                $result[$arrival] += $amount * $baseQty;
            }
        }

        return $result;
    }

    /**
     * Net (tax-excluded) nightly room charge for a single booked room row.
     */
    private function netTariff(object $booking, array $taxMap): float
    {
        return $this->netTariffFromRate(
            (float) $booking->Tarrif,
            strtoupper(trim((string) $booking->IncTax)) === 'Y',
            (string) $booking->RoomTaxStru,
            $taxMap
        );
    }

    /**
     * Net (tax-excluded) rate given raw values.
     * Used for both grpbookingdetails (via netTariff) and roomocc rows.
     */
    private function netTariffFromRate(float $tariff, bool $incTax, string $taxStru, array $taxMap): float
    {
        if (! $incTax) {
            return $tariff;
        }

        $rates = $taxMap[$taxStru] ?? null;
        if (! $rates) {
            // No tax structure configured → nothing to strip out.
            return $tariff;
        }

        $cgst = $tariff <= $rates['limit1'] ? $rates['cgst_between'] : $rates['cgst_lte'];
        $sgst = $tariff <= $rates['limit1'] ? $rates['sgst_between'] : $rates['sgst_lte'];

        $divisor = 1 + ($cgst + $sgst) / 100;

        return $divisor > 0 ? $tariff / $divisor : $tariff;
    }

    /**
     * Build tax rate map keyed by tax structure (str_code):
     * ['limit1', 'cgst_between', 'cgst_lte', 'sgst_between', 'sgst_lte'].
     *
     * Same resolution as PreformaFetch: the Between row supplies the tariff
     * threshold, and the tax rate is the Between rate when
     * Tariff <= limit1, otherwise the '<=' rate.
     */
    private function taxRateMap(int $propertyid): array
    {
        $cgstCode = 'CGSS'.$propertyid;
        $sgstCode = 'SGSS'.$propertyid;

        $rows = DB::table('taxstru')
            ->where('propertyid', $propertyid)
            ->whereIn('tax_code', [$cgstCode, $sgstCode])
            ->get(['str_code', 'tax_code', 'rate', 'comp_operator', 'limit1']);

        $map = [];

        foreach ($rows as $row) {
            $code = (string) $row->str_code;

            if (! isset($map[$code])) {
                $map[$code] = [
                    'limit1' => 0.0,
                    'cgst_between' => 0.0,
                    'cgst_lte' => 0.0,
                    'sgst_between' => 0.0,
                    'sgst_lte' => 0.0,
                    'limit1_set' => false,
                ];
            }

            $operator = (string) $row->comp_operator;

            if ($operator === 'Between') {
                if (! $map[$code]['limit1_set']) {
                    $map[$code]['limit1'] = (float) $row->limit1;
                    $map[$code]['limit1_set'] = true;
                }
                if ($row->tax_code === $cgstCode) {
                    $map[$code]['cgst_between'] = (float) $row->rate;
                } elseif ($row->tax_code === $sgstCode) {
                    $map[$code]['sgst_between'] = (float) $row->rate;
                }
            } elseif ($operator === '<=') {
                if ($row->tax_code === $cgstCode) {
                    $map[$code]['cgst_lte'] = (float) $row->rate;
                } elseif ($row->tax_code === $sgstCode) {
                    $map[$code]['sgst_lte'] = (float) $row->rate;
                }
            }
        }

        return $map;
    }
}
