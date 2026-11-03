<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Applicationlogs;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;

class ApplicationLogController extends Controller
{
    public function index()
    {

        $properties = Applicationlogs::query()
            ->leftJoin(
                'company',
                'application_logs.propertyid',
                '=',
                'company.propertyid'
            )
            ->select(
                'application_logs.propertyid',
                'company.comp_name'
            )
            ->whereNotNull('application_logs.propertyid')
            ->where('application_logs.propertyid', '!=', '')
            ->distinct()
            ->orderBy('application_logs.propertyid')
            ->get();

        $usernames = Applicationlogs::query()
            ->leftJoin(
                'company',
                'application_logs.propertyid',
                '=',
                'company.propertyid'
            )
            ->select(
                'application_logs.username',
                'application_logs.propertyid',
                'company.comp_name'
            )
            ->whereNotNull('application_logs.username')
            ->where('application_logs.username', '!=', '')
            ->distinct()
            ->orderBy('application_logs.username')
            ->get();

        $levels = Applicationlogs::query()
            ->whereNotNull('level')
            ->where('level', '!=', '')
            ->distinct()
            ->orderBy('level')
            ->pluck('level');

        $minDate = Applicationlogs::min('created_at');

        $maxDate = Applicationlogs::max('created_at');

        $topErrors = DB::table('application_logs')
            ->select(
                'message',
                'file',
                DB::raw('COUNT(*) AS total_occurrences')
            )
            ->where('level', 'ERROR')
            ->groupBy('message', 'file')
            ->orderByDesc('total_occurrences')
            ->orderBy('message')
            ->limit(10)
            ->get();

        foreach ($topErrors as $error) {
            $propertyQuery = DB::table('application_logs')
                ->select(
                    'propertyid',
                    DB::raw('COUNT(*) AS property_occurrences')
                )
                ->where('level', 'ERROR');

            if ($error->message === null) {
                $propertyQuery->whereNull('message');
            } else {
                $propertyQuery->where(
                    'message',
                    '=',
                    $error->message
                );
            }

            if ($error->file === null) {
                $propertyQuery->whereNull('file');
            } else {
                $propertyQuery->where(
                    'file',
                    '=',
                    $error->file
                );
            }

            $property = $propertyQuery
                ->whereNotNull('propertyid')
                ->where('propertyid', '!=', '')
                ->groupBy('propertyid')
                ->orderByDesc('property_occurrences')
                ->orderBy('propertyid')
                ->first();

            $error->most_affected_property =
                $property->propertyid ?? '-';

            $error->property_occurrences =
                $property->property_occurrences ?? 0;
        }

        return view('admin.application_logs', compact(
            'properties',
            'usernames',
            'levels',
            'minDate',
            'maxDate',
            'topErrors'
        ));
    }

    public function data(Request $request)
    {

        $validated = $request->validate([
            'from_date' => [
                'nullable',
                'date_format:Y-m-d\TH:i',
            ],

            'to_date' => [
                'nullable',
                'date_format:Y-m-d\TH:i',
                'after_or_equal:from_date',
            ],

            'level' => [
                'nullable',
                'string',
                'max:50',
            ],

            'propertyid' => [
                'nullable',
                'string',
                'max:100',
            ],

            'username' => [
                'nullable',
                'string',
                'max:255',
            ],
        ]);

        $start = max(
            0,
            (int) $request->input('start', 0)
        );

        $length = (int) $request->input('length', 25);

        if ($length < 1) {
            $length = 25;
        }

        $length = min($length, 100);

        $baseQuery = Applicationlogs::query();

        $recordsTotal = (clone $baseQuery)->count();

        $filteredQuery = clone $baseQuery;

        if (!empty($validated['from_date'])) {
            $fromDate = Carbon::createFromFormat(
                'Y-m-d\TH:i',
                $validated['from_date']
            );

            $filteredQuery->where(
                'created_at',
                '>=',
                $fromDate
            );
        }

        if (!empty($validated['to_date'])) {
            $toDate = Carbon::createFromFormat(
                'Y-m-d\TH:i',
                $validated['to_date']
            );

            $filteredQuery->where(
                'created_at',
                '<=',
                $toDate
            );
        }

        if (!empty($validated['level'])) {
            $filteredQuery->where(
                'level',
                $validated['level']
            );
        }

        if (!empty($validated['propertyid'])) {
            $filteredQuery->where(
                'propertyid',
                $validated['propertyid']
            );
        }

        if (!empty($validated['username'])) {
            $filteredQuery->where(
                'username',
                $validated['username']
            );
        }

        $search = trim(
            (string) $request->input('search.value', '')
        );

        if ($search !== '') {
            $filteredQuery->where(function ($query) use ($search) {
                $query
                    ->where('message', 'LIKE', "%{$search}%")
                    ->orWhere('level', 'LIKE', "%{$search}%")
                    ->orWhere('username', 'LIKE', "%{$search}%")
                    ->orWhere('file', 'LIKE', "%{$search}%")
                    ->orWhere('ipaddress', 'LIKE', "%{$search}%")
                    ->orWhere('propertyid', 'LIKE', "%{$search}%");
            });
        }

        $recordsFiltered = (clone $filteredQuery)->count();

        $sortableColumns = [
            0 => 'created_at',
            1 => 'level',
            2 => 'message',
            3 => 'file',
            4 => 'username',
            5 => 'propertyid',
            6 => 'ipaddress',
        ];

        $orderColumnIndex = (int) $request->input(
            'order.0.column',
            0
        );

        $orderDirection = strtolower(
            (string) $request->input(
                'order.0.dir',
                'desc'
            )
        );

        $orderColumn = $sortableColumns[$orderColumnIndex]
            ?? 'created_at';

        if (!in_array($orderDirection, ['asc', 'desc'], true)) {
            $orderDirection = 'desc';
        }

        $rows = $filteredQuery
            ->select([
                'id',
                'created_at',
                'level',
                'message',
                'file',
                'line',
                'username',
                'userid',
                'ipaddress',
                'propertyid',
                'context',
            ])
            ->orderBy($orderColumn, $orderDirection)
            ->orderByDesc('id')
            ->offset($start)
            ->limit($length)
            ->get();

        $data = $rows->map(function ($row) {
            $createdAt = $row->created_at;

            if (!empty($createdAt)) {
                try {
                    $createdAt = Carbon::parse($createdAt)
                        ->format('d-M-Y h:i A');
                } catch (\Throwable $e) {
                    // Preserve the original value if parsing fails.
                }
            }

            /*
             * Decode JSON context when possible.
             */
            $context = $row->context;

            if (is_string($context) && $context !== '') {
                $decodedContext = json_decode($context, true);

                if (json_last_error() === JSON_ERROR_NONE) {
                    $context = json_encode(
                        $decodedContext,
                        JSON_PRETTY_PRINT
                        | JSON_UNESCAPED_SLASHES
                        | JSON_UNESCAPED_UNICODE
                    );
                }
            } elseif (is_array($context) || is_object($context)) {
                $context = json_encode(
                    $context,
                    JSON_PRETTY_PRINT
                    | JSON_UNESCAPED_SLASHES
                    | JSON_UNESCAPED_UNICODE
                );
            }

            return [
                'id' => $row->id,
                'created_at' => $createdAt,
                'level' => $row->level ?? '-',
                'message' => $row->message ?? '-',
                'file' => $row->file ?? '-',
                'line' => $row->line ?? '-',
                'username' => $row->username ?? '-',
                'userid' => $row->userid ?? '-',
                'ipaddress' => $row->ipaddress ?? '-',
                'propertyid' => $row->propertyid ?? '-',
                'context' => $context ?? '-',
            ];
        });

        return response()->json([
            'draw' => (int) $request->input('draw', 0),
            'recordsTotal' => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data' => $data,
        ]);
    }
}