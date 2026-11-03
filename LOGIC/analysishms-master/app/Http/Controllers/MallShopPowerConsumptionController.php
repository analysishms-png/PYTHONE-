<?php

namespace App\Http\Controllers;

use App\Models\MallShopPowerConsumption;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class MallShopPowerConsumptionController extends Controller
{
    protected $username;

    protected $propertyid;

    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }
            $this->username = Auth::user()->name;
            $prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $prpid)->first();
            $this->propertyid = $propertydata ? $propertydata->propertyid : $prpid;
            $this->ncurdate = DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->value('ncur');

            return $next($request);
        });
    }

    /* ------------------------------------------------------------------ */
    /*  Get monthly avg KESCO% and DG% from mall_dailypowerentry */
    /* ------------------------------------------------------------------ */
    private function getMonthlyPercentages(string $month): array
    {
        $propertyid = $this->propertyid;
        $monthStart = $month.'-01';
        $monthEnd = date('Y-m-t', strtotime($monthStart));

        try {
            $result = DB::table('mall_dailypowerentry')
                ->where('propertyid', $propertyid)
                ->whereBetween('entry_date', [$monthStart, $monthEnd])
                ->selectRaw('SUM(kesco) as total_kesco, SUM(solar) as total_solar, SUM(dg) as total_dg')
                ->first();

            $totalKesco = $result ? (float) $result->total_kesco : 0;
            $totalSolar = $result ? (float) $result->total_solar : 0;
            $totalDg = $result ? (float) $result->total_dg : 0;
            $totalSum = $totalKesco + $totalSolar + $totalDg;

            if ($totalSum > 0) {
                return [
                    'kesco_pct' => round($totalKesco / $totalSum * 100, 2),
                    'dg_pct' => round($totalDg / $totalSum * 100, 2),
                ];
            }
        } catch (\Exception $e) {
            // table may not exist
        }

        return ['kesco_pct' => 0, 'dg_pct' => 0];
    }

    private function getShops()
    {
        $propertyid = $this->propertyid;

        // Floor: mall_shopmast.floorid = hkfloors.id  (confirmed from DB)
        // Party: mall_shopmast.shopcode -> mall_partylocation.shopcode
        //        mall_partylocation.tenantcode -> subgroup.sub_code -> name
        return DB::table('mall_shopmast as s')
            ->leftJoin('hkfloors as f', function ($j) use ($propertyid) {
                $j->on('f.code', '=', 's.floorid')
                    ->where('f.propertyid', '=', $propertyid);
            })
            ->leftJoin(DB::raw(
                "(SELECT shopcode, tenantcode FROM mall_partylocation
                  WHERE propertyid = {$propertyid} AND activeyn = 1
                  GROUP BY shopcode) as pl"
            ), 'pl.shopcode', '=', 's.shopcode')
            ->leftJoin('subgroup as sg', 'sg.sub_code', '=', 'pl.tenantcode')
            ->where('s.propertyid', $propertyid)
            ->where('s.activeyn', 1)
            ->orderByRaw("COALESCE(f.name, 'ZZZZ')")
            ->orderBy('s.shopcode')
            ->get([
                's.shopcode',
                's.shopname',
                DB::raw("COALESCE(f.name, '')   as floorname"),
                DB::raw('COALESCE(sg.name, s.shopname) as partyname'),
            ]);
    }

    /* ------------------------------------------------------------------ */
    /*  Build rows for a given month */
    /* ------------------------------------------------------------------ */
    private function buildRows(string $month): Collection
    {
        $propertyid = $this->propertyid;
        $monthStart = $month.'-01';
        $monthEnd = date('Y-m-t', strtotime($monthStart));
        $dayBefore = date('Y-m-d', strtotime($monthStart.' -1 day'));

        // Get KESCO% and DG% from dailypowerentry for this month
        $pcts = $this->getMonthlyPercentages($month);
        $defaultKescoPct = $pcts['kesco_pct'];
        $defaultDgPct = $pcts['dg_pct'];

        // Get rates for this month from mall_power_rates
        $monthRates = $this->getMonthRates($month);
        $defaultKescoRate = $monthRates['kesco_rate'];
        $defaultDgRate    = $monthRates['dg_rate'];

        $shops = $this->getShops();
        if ($shops->isEmpty()) {
            return collect();
        }

        $shopCodes = $shops->pluck('shopcode')->toArray();

        // Prev KWh: from the FIRST reading of the month → use its previous_reading
        // (fallback: last reading BEFORE the month → current_reading)
        $firstOfMonth = DB::connection('tenant')->table('mall_meter_reading as r')
            ->joinSub(
                DB::connection('tenant')->table('mall_meter_reading')
                    ->select('shopid', DB::raw('MIN(reading_date) as min_date'))
                    ->where('propertyid', $propertyid)
                    ->whereIn('shopid', $shopCodes)
                    ->whereDate('reading_date', '>=', $monthStart)
                    ->whereDate('reading_date', '<=', $monthEnd)
                    ->groupBy('shopid'),
                'first',
                fn ($j) => $j->on('r.shopid', '=', 'first.shopid')
                    ->on('r.reading_date', '=', 'first.min_date')
            )
            ->where('r.propertyid', $propertyid)
            ->get(['r.shopid', 'r.previous_reading'])
            ->keyBy('shopid');

        // Fallback: last reading BEFORE the month
        $prevReadings = DB::connection('tenant')->table('mall_meter_reading as r')
            ->joinSub(
                DB::connection('tenant')->table('mall_meter_reading')
                    ->select('shopid', DB::raw('MAX(reading_date) as max_date'))
                    ->where('propertyid', $propertyid)
                    ->whereIn('shopid', $shopCodes)
                    ->whereDate('reading_date', '<=', $dayBefore)
                    ->groupBy('shopid'),
                'last',
                fn ($j) => $j->on('r.shopid', '=', 'last.shopid')
                    ->on('r.reading_date', '=', 'last.max_date')
            )
            ->where('r.propertyid', $propertyid)
            ->get(['r.shopid', 'r.current_reading'])
            ->keyBy('shopid');

        // On Date KWh: last reading's current_reading WITHIN the month
        $onDateReadings = DB::connection('tenant')->table('mall_meter_reading as r')
            ->joinSub(
                DB::connection('tenant')->table('mall_meter_reading')
                    ->select('shopid', DB::raw('MAX(reading_date) as max_date'))
                    ->where('propertyid', $propertyid)
                    ->whereIn('shopid', $shopCodes)
                    ->whereDate('reading_date', '>=', $monthStart)
                    ->whereDate('reading_date', '<=', $monthEnd)
                    ->groupBy('shopid'),
                'latest',
                fn ($j) => $j->on('r.shopid', '=', 'latest.shopid')
                    ->on('r.reading_date', '=', 'latest.max_date')
            )
            ->where('r.propertyid', $propertyid)
            ->get(['r.shopid', 'r.current_reading'])
            ->keyBy('shopid');

        // Already saved records
        $saved = MallShopPowerConsumption::where('property_id', $propertyid)
            ->where('month', $month)
            ->get()
            ->keyBy('shop_code');

        return $shops->map(function ($shop) use ($saved, $prevReadings, $onDateReadings, $firstOfMonth, $defaultKescoPct, $defaultDgPct, $defaultKescoRate, $defaultDgRate) {
            $rec        = $saved->get($shop->shopcode);
            $prevRec    = $prevReadings->get($shop->shopcode);
            $onRec      = $onDateReadings->get($shop->shopcode);
            $firstRec   = $firstOfMonth->get($shop->shopcode);

            $prevKwh = $rec ? $rec->prev_dt_kwh
                            : ($firstRec ? $firstRec->previous_reading
                                        : ($prevRec ? $prevRec->current_reading : ''));

            $onKwh = $rec ? $rec->on_date_kwh
                          : ($onRec ? $onRec->current_reading : '');

            $consumption = $rec ? $rec->consumption_kwh
                                : (($prevKwh !== '' && $onKwh !== '')
                                    ? max(0, (float) $onKwh - (float) $prevKwh)
                                    : '');

            $kescoPct  = $rec ? $rec->kesco_percentage : $defaultKescoPct;
            $dgPct     = $rec ? $rec->dg_percentage    : $defaultDgPct;
            // Always use month-level rate from mall_power_rates
            $kescoRate = $defaultKescoRate;
            $dgRate    = $defaultDgRate;

            // KESCO amount = consumption_kesco_kwh × kesco_rate
            // consumption_kesco = consumption × kesco_pct / 100
            $kescoKwh = $consumption !== '' ? round((float) $consumption * $kescoPct / 100, 2) : '';
            $dgKwh = $consumption !== '' ? round((float) $consumption * $dgPct / 100, 2) : '';

            $kesco = $rec ? $rec->kesco
                          : ($kescoKwh !== '' && $kescoRate > 0 ? round($kescoKwh * $kescoRate, 2) : ($kescoKwh !== '' ? $kescoKwh : ''));
            $dg = $rec ? $rec->dg
                          : ($dgKwh !== '' && $dgRate > 0 ? round($dgKwh * $dgRate, 2) : ($dgKwh !== '' ? $dgKwh : ''));
            $total = $rec ? $rec->total
                          : ($kesco !== '' ? round((float) $kesco + (float) $dg, 2) : '');

            return (object) [
                'shop_code' => $shop->shopcode,
                'shop_name' => $shop->partyname,
                'floor' => $shop->floorname,
                'prev_dt_kwh' => $prevKwh,
                'on_date_kwh' => $onKwh,
                'consumption_kwh' => $consumption,
                'kesco_percentage' => $kescoPct,
                'dg_percentage' => $dgPct,
                'kesco_rate' => $kescoRate,
                'dg_rate' => $dgRate,
                'kesco' => $kesco,
                'dg' => $dg,
                'total' => $total,
            ];
        });
    }

    /* ------------------------------------------------------------------ */
    /*  Helper: get rates for a month from mall_power_rates table         */
    /* ------------------------------------------------------------------ */
    private function getMonthRates(string $month): array
    {
        try {
            $rec = DB::connection('tenant')->table('mall_power_rates')
                ->where('property_id', $this->propertyid)
                ->where('month', $month)
                ->first(['kesco_rate', 'dg_rate']);

            return [
                'kesco_rate' => $rec ? (float) $rec->kesco_rate : 0,
                'dg_rate'    => $rec ? (float) $rec->dg_rate    : 0,
            ];
        } catch (\Exception $e) {
            return ['kesco_rate' => 0, 'dg_rate' => 0];
        }
    }

    /* ------------------------------------------------------------------ */
    /*  Main page */
    /* ------------------------------------------------------------------ */
    public function index(Request $request)
    {
        $month = $request->get('month', date('Y-m'));
        $ncurdate = $this->ncurdate;
        $rows = $this->buildRows($month);
        $pcts = $this->getMonthlyPercentages($month);
        $rates = $this->getMonthRates($month);

        return view('property.mallmanagement.shoppowerconsumption', compact(
            'rows', 'month', 'ncurdate', 'pcts', 'rates'
        ));
    }

    /* ------------------------------------------------------------------ */
    /*  AJAX fetch */
    /* ------------------------------------------------------------------ */
    public function fetch(Request $request)
    {
        try {
            $month = $request->month ?? date('Y-m');
            $rows = $this->buildRows($month);

            $data = $rows->map(fn ($r) => [
                'shop_code' => $r->shop_code,
                'shop_name' => $r->shop_name,
                'floor' => $r->floor,
                'prev_dt_kwh' => $r->prev_dt_kwh !== '' ? (float) $r->prev_dt_kwh : null,
                'on_date_kwh' => $r->on_date_kwh !== '' ? (float) $r->on_date_kwh : null,
                'consumption_kwh' => $r->consumption_kwh !== '' ? (float) $r->consumption_kwh : null,
                'kesco_percentage' => (float) $r->kesco_percentage,
                'dg_percentage' => (float) $r->dg_percentage,
                'kesco_rate' => (float) $r->kesco_rate,
                'dg_rate' => (float) $r->dg_rate,
                'kesco' => $r->kesco !== '' ? (float) $r->kesco : null,
                'dg' => $r->dg !== '' ? (float) $r->dg : null,
                'total' => $r->total !== '' ? (float) $r->total : null,
            ]);

            $rates = $this->getMonthRates($month);

            return response()->json([
                'status' => true,
                'rows'   => $data->values(),
                'pcts'   => $this->getMonthlyPercentages($month),
                'rates'  => $rates,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status'  => false,
                'message' => $e->getMessage(),
                'rows'    => [],
            ], 500);
        }
    }

    /* ------------------------------------------------------------------ */
    /*  AJAX save rates only (month-wise KESCO & DG rate)                 */
    /* ------------------------------------------------------------------ */
    public function saveRates(Request $request)
    {
        $propertyid = $this->propertyid;
        $month      = $request->month;
        $kescoRate  = (float) ($request->kesco_rate ?? 0);
        $dgRate     = (float) ($request->dg_rate    ?? 0);

        if (! $month) {
            return response()->json(['status' => false, 'message' => 'Month required'], 422);
        }

        try {
            // Create table if not exists (for properties that haven't run migration yet)
            DB::connection('tenant')->statement('CREATE TABLE IF NOT EXISTS mall_power_rates (id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, property_id BIGINT UNSIGNED NOT NULL, month VARCHAR(7) NOT NULL, kesco_rate DECIMAL(10,2) NOT NULL DEFAULT 0, dg_rate DECIMAL(10,2) NOT NULL DEFAULT 0, created_at TIMESTAMP NULL DEFAULT NULL, updated_at TIMESTAMP NULL DEFAULT NULL, UNIQUE KEY uq_mall_power_rates (property_id, month)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4');

            DB::connection('tenant')->table('mall_power_rates')->updateOrInsert(
                ['property_id' => $propertyid, 'month' => $month],
                [
                    'kesco_rate' => $kescoRate,
                    'dg_rate'    => $dgRate,
                    'updated_at' => now(),
                    'created_at' => now(),
                ]
            );

            return response()->json(['status' => true, 'message' => 'Rates saved']);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    /* ------------------------------------------------------------------ */
    /*  AJAX save */
    /* ------------------------------------------------------------------ */
    public function save(Request $request)
    {
        $propertyid = $this->propertyid;
        $month = $request->month;
        $entries = $request->entries;

        if (! $month || ! is_array($entries)) {
            return response()->json(['status' => false, 'message' => 'Invalid data'], 422);
        }

        try {
            DB::beginTransaction();

            // Save rates in dedicated table (month-wise)
            $kescoRateGlobal = (float) ($entries[0]['kesco_rate'] ?? 0);
            $dgRateGlobal    = (float) ($entries[0]['dg_rate']    ?? 0);

            DB::connection('tenant')->table('mall_power_rates')->updateOrInsert(
                ['property_id' => $propertyid, 'month' => $month],
                [
                    'kesco_rate' => $kescoRateGlobal,
                    'dg_rate'    => $dgRateGlobal,
                    'updated_at' => now(),
                    'created_at' => now(),
                ]
            );

            foreach ($entries as $entry) {
                if (empty($entry['shop_code'])) {
                    continue;
                }

                $onKwh = (float) ($entry['on_date_kwh'] ?? 0);
                $prevKwh = (float) ($entry['prev_dt_kwh'] ?? 0);
                $kescoPct = (float) ($entry['kesco_percentage'] ?? 97.38);
                $dgPct = (float) ($entry['dg_percentage'] ?? 2.62);
                $kescoRate = (float) ($entry['kesco_rate'] ?? 0);
                $dgRate = (float) ($entry['dg_rate'] ?? 0);

                $consumption = max(0, $onKwh - $prevKwh);
                $kescoKwh = round($consumption * $kescoPct / 100, 2);
                $dgKwh = round($consumption * $dgPct / 100, 2);
                $kesco = $kescoRate > 0 ? round($kescoKwh * $kescoRate, 2) : $kescoKwh;
                $dg = $dgRate > 0 ? round($dgKwh * $dgRate, 2) : $dgKwh;
                $total = round($kesco + $dg, 2);

                MallShopPowerConsumption::updateOrCreate(
                    ['property_id' => $propertyid, 'shop_code' => $entry['shop_code'], 'month' => $month],
                    [
                        'floor' => $entry['floor'] ?? null,
                        'shop' => $entry['shop_name'] ?? null,
                        'on_date_kwh' => $onKwh,
                        'prev_dt_kwh' => $prevKwh,
                        'consumption_kwh' => $consumption,
                        'kesco_percentage' => $kescoPct,
                        'dg_percentage' => $dgPct,
                        'kesco_rate' => $kescoRate,
                        'dg_rate' => $dgRate,
                        'kesco' => $kesco,
                        'dg' => $dg,
                        'total' => $total,
                    ]
                );
            }

            DB::commit();

            return response()->json(['status' => true, 'message' => 'Saved successfully']);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }
}
