<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ActivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ActivityLogController extends Controller
{
    public function index()
    {
        $today = date('Y-m-d');

        $properties = DB::connection('main')
            ->table('activity_logs')
            ->leftJoin('company', 'activity_logs.propertyid', '=', 'company.propertyid')
            ->select('activity_logs.propertyid', 'company.comp_name')
            ->distinct()
            ->whereNotNull('activity_logs.propertyid')
            ->where('activity_logs.propertyid', '!=', 10)
            ->orderBy('activity_logs.propertyid')
            ->get();

        $usernames = DB::connection('main')
            ->table('activity_logs')
            ->leftJoin('company', 'activity_logs.propertyid', '=', 'company.propertyid')
            ->select('activity_logs.username', 'activity_logs.propertyid', 'company.comp_name')
            ->whereNotNull('activity_logs.username')
            ->where('activity_logs.propertyid', '!=', 10)
            ->distinct()
            ->orderBy('activity_logs.username')
            ->orderBy('activity_logs.propertyid')
            ->get();

        $modules = DB::connection('main')
            ->table('activity_logs')
            ->select('module')
            ->distinct()
            ->whereNotNull('module')
            ->where('propertyid', '!=', 10)
            ->orderBy('module')
            ->get();

        $topRoutes = DB::connection('main')
            ->table('activity_logs')
            ->select('module', DB::raw('COUNT(*) as total_hits'))
            ->where('propertyid', '!=', 10)
            ->whereDate('created_at', $today)
            ->groupBy('module')
            ->orderByDesc('total_hits')
            ->limit(10)
            ->get();

        $topUsers = DB::connection('main')
            ->table('activity_logs')
            ->leftJoin('company', 'activity_logs.propertyid', '=', 'company.propertyid')
            ->select('activity_logs.username', 'activity_logs.propertyid', 'company.comp_name', DB::raw('COUNT(*) as total_hits'))
            ->where('activity_logs.propertyid', '!=', 10)
            ->whereDate('activity_logs.created_at', $today)
            ->groupBy('activity_logs.username', 'activity_logs.propertyid', 'company.comp_name')
            ->whereNotNull('activity_logs.username')
            ->orderByDesc('total_hits')
            ->limit(10)
            ->get();

        return view('admin.activity_logs', compact('properties', 'usernames', 'modules', 'topRoutes', 'topUsers', 'today'));
    }

    public function data(Request $request)
    {
        $draw = (int) $request->input('draw', 0);
        $start = max((int) $request->input('start', 0), 0);
        $length = (int) $request->input('length', 25);
        $length = $length > 0 ? min($length, 100) : 25;
        $searchValue = trim((string) $request->input('search.value', ''));

        $baseQuery = ActivityLog::on('main')
            ->select('activity_logs.*')
            ->where('propertyid', '!=', 10);

        if ($request->has('propertyid') && $request->propertyid != '') {
            $baseQuery->where('activity_logs.propertyid', $request->propertyid);
        }

        if ($request->has('username') && $request->username != '') {
            $baseQuery->where('activity_logs.username', $request->username);

            // If username_propertyid is also provided, filter by that specific propertyid
            if ($request->has('username_propertyid') && $request->username_propertyid != '') {
                $baseQuery->where('activity_logs.propertyid', $request->username_propertyid);
            }
        }

        if ($request->has('module') && $request->module != '') {
            $baseQuery->where('activity_logs.module', $request->module);
        }

        if ($request->has('from_date') && $request->from_date != '') {
            $baseQuery->whereDate('activity_logs.created_at', '>=', $request->from_date);
        }

        if ($request->has('to_date') && $request->to_date != '') {
            $baseQuery->whereDate('activity_logs.created_at', '<=', $request->to_date);
        }

        $totalRecords = ActivityLog::on('main')->where('propertyid', '!=', 10)->count();

        $filteredQuery = clone $baseQuery;

        if ($searchValue !== '') {
            $filteredQuery->where(function ($query) use ($searchValue) {
                $query->where('activity_logs.username', 'like', "%{$searchValue}%")
                    ->orWhere('activity_logs.module', 'like', "%{$searchValue}%")
                    ->orWhere('activity_logs.url', 'like', "%{$searchValue}%")
                    ->orWhere('activity_logs.ip_address', 'like', "%{$searchValue}%");
            });
        }

        $recordsFiltered = $filteredQuery->count();

        $rows = $filteredQuery
            ->orderBy('activity_logs.created_at', 'desc')
            ->offset($start)
            ->limit($length)
            ->get();

        // Page-level aggregates prevent one or more extra database queries per row.
        $modules = $rows->pluck('module')->filter()->unique()->values();
        $todayHits = DB::connection('main')->table('activity_logs')
            ->whereIn('module', $modules)->whereDate('created_at', date('Y-m-d'))
            ->where('propertyid', '!=', 10)->select('module', DB::raw('COUNT(*) as hits'))
            ->groupBy('module')->pluck('hits', 'module');
        $hitsByProperty = DB::connection('main')->table('activity_logs')
            ->whereIn('module', $modules)->whereDate('created_at', date('Y-m-d'))
            ->where('propertyid', '!=', 10)->select('module', 'propertyid', DB::raw('COUNT(*) as hits'))
            ->groupBy('module', 'propertyid')->orderByDesc('hits')->get()->groupBy('module');
        $monthHits = DB::connection('main')->table('activity_logs')
            ->whereIn('module', $modules)->whereDate('created_at', '>=', date('Y-m-d', strtotime('-30 days')))
            ->where('propertyid', '!=', 10)->select('module', 'propertyid', DB::raw('COUNT(*) as hits'))
            ->groupBy('module', 'propertyid')->orderByDesc('hits')->get()->groupBy('module')->map->first();

        $data = $rows->map(function ($row) use ($todayHits, $hitsByProperty, $monthHits) {
            $urlClean = str_replace(['https://', 'http://', 'localhost:8000/', 'localhost/'], '', $row->url);

            return [
                'id' => $row->id,
                'created_at' => $row->created_at ? $row->created_at->format('d-M-Y h:i A') : '-',
                'username' => $row->username ?? '-',
                'user_id' => $row->user_id ?? '-',
                'module' => $row->module ?? '-',
                'action' => $row->action ?? '-',
                'method' => $row->method ?? '-',
                'url' => $urlClean,
                'url_full' => $row->url,
                'ip_address' => $row->ip_address ?? '-',
                'propertyid' => $row->propertyid,
                'todayHits' => (int) ($todayHits[$row->module] ?? 0),
                'hitsByProperty' => $hitsByProperty[$row->module] ?? collect(),
                'monthHits' => $monthHits[$row->module] ?? null,
            ];
        });

        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $recordsFiltered,
            'data' => $data,
        ]);
    }

    public function getTopRoutes(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));
        $toDate = $request->input('to_date', date('Y-m-d'));

        $topRoutes = DB::connection('main')
            ->table('activity_logs')
            ->select('module', DB::raw('COUNT(*) as total_hits'))
            ->where('propertyid', '!=', 10)
            ->whereDate('created_at', '>=', $fromDate)
            ->whereDate('created_at', '<=', $toDate)
            ->groupBy('module')
            ->orderByDesc('total_hits')
            ->limit(10)
            ->get();

        return response()->json(['data' => $topRoutes]);
    }

    public function getTopUsers(Request $request)
    {
        $fromDate = $request->input('from_date', date('Y-m-d'));
        $toDate = $request->input('to_date', date('Y-m-d'));

        $topUsers = DB::connection('main')
            ->table('activity_logs')
            ->leftJoin('company', 'activity_logs.propertyid', '=', 'company.propertyid')
            ->select('activity_logs.username', 'activity_logs.propertyid', 'company.comp_name', DB::raw('COUNT(*) as total_hits'))
            ->where('activity_logs.propertyid', '!=', 10)
            ->whereDate('activity_logs.created_at', '>=', $fromDate)
            ->whereDate('created_at', '<=', $toDate)
            ->groupBy('activity_logs.username', 'activity_logs.propertyid', 'company.comp_name')
            ->whereNotNull('activity_logs.username')
            ->orderByDesc('total_hits')
            ->limit(10)
            ->get();

        return response()->json(['data' => $topUsers]);
    }
}
