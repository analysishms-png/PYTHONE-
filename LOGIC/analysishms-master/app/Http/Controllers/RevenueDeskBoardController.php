<?php

namespace App\Http\Controllers;

use App\Models\Companyreg;
use App\Services\OccupancyForecastRevenue;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class RevenueDeskBoardController extends Controller
{
    protected $propertyid;

    protected $ncurdate;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

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
    /*  Page load */
    /* ------------------------------------------------------------------ */
    public function index(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        return view('property.revenuedeskboard', [
            'ncurdate' => $this->ncurdate,
            'company' => $company,
        ]);
    }

    /* ------------------------------------------------------------------ */
    /*  AJAX fetch — date-wise occupancy + revenue data */
    /* ------------------------------------------------------------------ */
    public function fetch(Request $request)
    {
        $fromdate = $request->input('fromdate');
        $todate = $request->input('todate') ?: $fromdate;
        $catdate = $request->input('catdate') ?: $todate;
        $pid = $this->propertyid;

        if (! $fromdate) {
            return response()->json(['error' => 'Invalid date'], 422);
        }

        $start = Carbon::parse($fromdate);
        $end = Carbon::parse($todate);
        $catDate = Carbon::parse($catdate)->toDateString();
        $dateList = [];
        for ($d = $start->copy(); $d->lte($end); $d->addDay()) {
            $dateList[] = $d->toDateString();
        }

        $revenueByDate = (new OccupancyForecastRevenue)->dailyRevenue($pid, $dateList);

        $rows = [];
        $sumRooms = 0;
        $sumOccupied = 0;
        $sumRevenue = 0.0;

        foreach ($dateList as $dateStr) {
            $date = Carbon::parse($dateStr);

            // Total available rooms (excluding out-of-order blockouts)
            $totalRooms = DB::table('room_mast as R')
                ->where('R.propertyid', $pid)
                ->where('R.type', 'RO')
                ->where('R.inclcount', 'Y')
                ->whereNotExists(function ($q) use ($dateStr) {
                    $q->select(DB::raw(1))
                        ->from('roomblockout as B')
                        ->whereColumn('B.propertyid', 'R.propertyid')
                        ->whereColumn('B.roomcode', 'R.rcode')
                        ->where('B.type', 'O')
                        ->whereRaw('? BETWEEN DATE(B.fromdate) AND DATE(B.todate)', [$dateStr]);
                })
                ->count();

            // Expected arrivals
            $arrival = DB::table('grpbookingdetails')
                ->where('Property_ID', $pid)
                ->where('ArrDate', $dateStr)
                ->where('Cancel', 'N')
                ->where('ContraDocId', '')
                ->count();

            // Stay-overs
            $stayOver = DB::table('roomocc')
                ->where('propertyid', $pid)
                ->where('DepDate', '>', $dateStr)
                ->where('chkindate', '<=', $dateStr)
                ->count();

            $occupiedRooms = $arrival + $stayOver;
            $availableRooms = max(0, $totalRooms - $occupiedRooms);
            $totalRevenue = (float) ($revenueByDate[$dateStr] ?? 0);
            $arr = $occupiedRooms > 0 ? round($totalRevenue / $occupiedRooms, 2) : 0;
            $revpar = $totalRooms > 0 ? round($totalRevenue / $totalRooms, 2) : 0;
            $occPct = $totalRooms > 0 ? round($occupiedRooms / $totalRooms * 100, 2) : 0;

            $rows[] = [
                'date' => $dateStr,
                'date_label' => $date->format('d M'),
                'day_name' => $date->format('D'),
                'total_rooms' => $totalRooms,
                'occupied_rooms' => $occupiedRooms,
                'available_rooms' => $availableRooms,
                'arrival' => $arrival,
                'stay_over' => $stayOver,
                'occ_percent' => $occPct,
                'total_revenue' => $totalRevenue,
                'arr' => $arr,
                'revpar' => $revpar,
            ];

            $sumRooms += $totalRooms;
            $sumOccupied += $occupiedRooms;
            $sumRevenue += $totalRevenue;
        }

        $days = count($dateList);
        $avgRooms = $days > 0 ? round($sumRooms / $days) : 0;
        $avgOccupied = $days > 0 ? round($sumOccupied / $days, 1) : 0;
        $avgOccPct = $avgRooms > 0 ? round($avgOccupied / $avgRooms * 100, 2) : 0;
        $avgAdr = $sumOccupied > 0 ? round($sumRevenue / $sumOccupied, 2) : 0;
        $avgRevpar = ($avgRooms * $days) > 0 ? round($sumRevenue / ($avgRooms * $days), 2) : 0;

        return response()->json([
            'rows' => $rows,
            'summary' => [
                'total_rooms' => $avgRooms,
                'occupied_rooms' => $avgOccupied,
                'occ_percent' => $avgOccPct,
                'total_revenue' => round($sumRevenue, 2),
                'arr' => $avgAdr,
                'revpar' => $avgRevpar,
                'days' => $days,
            ],
            'cat_date' => $catDate,
            'room_categories' => $this->roomCategoryOccupancy($pid, $catDate),
        ]);
    }

    /* ------------------------------------------------------------------ */
    /*  Room category wise occupancy for a single date */
    /* ------------------------------------------------------------------ */
    private function roomCategoryOccupancy($pid, string $dateStr): array
    {
        $sql = <<<'SQL'
WITH
RoomMaster AS
(
    SELECT propertyid, room_cat AS CatCode, COUNT(DISTINCT rcode) AS TotalRooms
    FROM room_mast
    WHERE propertyid = ? AND type = 'RO' AND inclcount = 'Y'
    GROUP BY propertyid, room_cat
),
InHouse AS
(
    SELECT DISTINCT propertyid, roomcat AS CatCode, roomno
    FROM roomocc
    WHERE propertyid = ? AND type IS NULL
      AND chkindate <= ? AND depdate > ?
      AND roomno IS NOT NULL AND roomno <> ''
),
InHouseCount AS
(
    SELECT CatCode, COUNT(*) AS InHouseRooms
    FROM InHouse
    GROUP BY CatCode
),
ReservationCount AS
(
    SELECT G.RoomCat AS CatCode, COUNT(*) AS ReservedRooms
    FROM grpbookingdetails G
    WHERE G.Property_ID = ?
      AND G.ArrDate <= ? AND G.DepDate > ?
      AND G.Cancel = 'N'
      AND (G.ContraDocId IS NULL OR TRIM(G.ContraDocId) = '')
      AND NOT EXISTS
      (
          SELECT 1
          FROM InHouse I
          WHERE I.propertyid = G.Property_ID
            AND I.roomno = G.RoomNo
            AND G.RoomNo <> ''
      )
    GROUP BY G.RoomCat
),
OutOfOrder AS
(
    SELECT M.room_cat AS CatCode, COUNT(DISTINCT B.roomcode) AS OORooms
    FROM roomblockout B
    INNER JOIN room_mast M
        ON M.propertyid = B.propertyid
       AND M.rcode = B.roomcode
       AND M.type = 'RO'
       AND M.inclcount = 'Y'
    WHERE B.propertyid = ?
      AND B.type = 'O'
      AND B.fromdate <= ? AND B.todate >= ?
    GROUP BY M.room_cat
)
SELECT
    C.name AS room_category,
    IFNULL(M.TotalRooms, 0) - IFNULL(O.OORooms, 0) AS total_rooms,
    IFNULL(R.ReservedRooms, 0) AS reserved_rooms,
    IFNULL(I.InHouseRooms, 0) AS inhouse_rooms,
    IFNULL(O.OORooms, 0) AS out_of_order,
    IFNULL(R.ReservedRooms, 0) + IFNULL(I.InHouseRooms, 0) AS booked_rooms,
    GREATEST(
        IFNULL(M.TotalRooms, 0)
        - IFNULL(O.OORooms, 0)
        - IFNULL(R.ReservedRooms, 0)
        - IFNULL(I.InHouseRooms, 0),
        0
    ) AS available_rooms,
    ROUND(
        (IFNULL(R.ReservedRooms, 0) + IFNULL(I.InHouseRooms, 0)) * 100.0
        / NULLIF(IFNULL(M.TotalRooms, 0) - IFNULL(O.OORooms, 0), 0),
        2
    ) AS occ_percent
FROM room_cat C
LEFT JOIN RoomMaster M
    ON M.propertyid = C.propertyid AND M.CatCode = C.cat_code
LEFT JOIN ReservationCount R
    ON R.CatCode = C.cat_code
LEFT JOIN InHouseCount I
    ON I.CatCode = C.cat_code
LEFT JOIN OutOfOrder O
    ON O.CatCode = C.cat_code
WHERE C.propertyid = ? AND C.type = 'RO'
ORDER BY C.name
SQL;

        $bindings = [
            $pid, $pid, $dateStr, $dateStr,
            $pid, $dateStr, $dateStr,
            $pid, $dateStr, $dateStr,
            $pid,
        ];

        return array_map(function ($row) {
            return [
                'room_category' => $row->room_category,
                'total_rooms' => (int) $row->total_rooms,
                'reserved_rooms' => (int) $row->reserved_rooms,
                'inhouse_rooms' => (int) $row->inhouse_rooms,
                'out_of_order' => (int) $row->out_of_order,
                'booked_rooms' => (int) $row->booked_rooms,
                'available_rooms' => (int) $row->available_rooms,
                'occ_percent' => (float) $row->occ_percent,
            ];
        }, DB::select($sql, $bindings));
    }
}
