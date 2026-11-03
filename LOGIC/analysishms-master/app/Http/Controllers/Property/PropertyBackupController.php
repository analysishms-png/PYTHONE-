<?php

namespace App\Http\Controllers\Property;

use App\Http\Controllers\Controller;
use App\Jobs\BackupSinglePropertyJob;
use App\Models\Backuplog;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Throwable;
use Carbon\Carbon;

class PropertyBackupController extends Controller
{
    public function index()
    {
        return view('property.extras.backup.index');
    }

    public function fetchBackups(Request $request): JsonResponse
    {
        $propertyId = (int) Auth::user()->propertyid;
        $username = Auth::user()->u_name;

        $query = Backuplog::on('main')
            ->select('id', 'propertyid', 'username', 'filename', 'filepath', 'filesize', 'status', 'downloaded_by', 'downloaded_at', 'created_at')
            ->where('propertyid', $propertyId);

        if ($request->filled('date_from') && $request->filled('date_to')) {
            $query->whereBetween('created_at', [
                Carbon::parse($request->date_from)->startOfDay(),
                Carbon::parse($request->date_to)->endOfDay(),
            ]);
        } else {
            if ($request->filled('date_from')) {
                $query->where('created_at', '>=', Carbon::parse($request->date_from)->startOfDay());
            }

            if ($request->filled('date_to')) {
                $query->where('created_at', '<=', Carbon::parse($request->date_to)->endOfDay());
            }
        }

        if ($request->filled('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('filename', 'like', "%{$search}%")
                    ->orWhere('username', 'like', "%{$search}%")
                    ->orWhere('downloaded_by', 'like', "%{$search}%");
            });
        }

        $totalRecords = Backuplog::on('main')->where('propertyid', $propertyId)->count();

        $columnMap = [
            0 => 'id',
            1 => 'filename',
            2 => 'filesize',
            3 => 'username',
            4 => 'created_at',
            5 => 'status',
            6 => 'downloaded_by',
            7 => 'downloaded_at',
        ];

        $orderColumn = $columnMap[$request->input('order.0.column', 4)] ?? 'created_at';
        $orderDir = $request->input('order.0.dir', 'desc');
        $query->orderBy($orderColumn, $orderDir);

        $filteredRecords = $query->count();

        $start = (int) $request->input('start', 0);
        $length = (int) $request->input('length', 10);
        $backups = $query->skip($start)->take($length)->get();

        $data = [];
        $serial = $start + 1;

        foreach ($backups as $backup) {
            $statusBadge = $backup->status == 1
                ? '<span class="badge badge-success">Downloaded</span>'
                : '<span class="badge badge-warning">Not Downloaded</span>';

            $downloadedBy = $backup->downloaded_by ?? '-';
            $downloadedOn = $backup->downloaded_at
                ? \Carbon\Carbon::parse($backup->downloaded_at)->format('l, d F Y h:i A')
                : '-';

            $downloadBtn = '
                        <button class="btn btn-sm ' . ($backup->status ? 'btn-secondary' : 'btn-primary') . ' download-btn"
                                data-id="' . $backup->id . '"
                                data-filename="' . e($backup->filename) . '">
                            <i class="fa ' . ($backup->status ? 'fa-check' : 'fa-download') . '"></i>
                            ' . ($backup->status ? 'Downloaded' : 'Download') . '
                        </button>';

            $data[] = [
                $serial++,
                $backup->filename,
                $this->formatBytes($backup->filesize),
                $backup->username,
                \Carbon\Carbon::parse($backup->created_at)->format('l, d F Y h:i A'),
                $statusBadge,
                $downloadedBy,
                $downloadedOn,
                $downloadBtn,
            ];
        }

        return response()->json([
            'draw' => (int) $request->input('draw', 1),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $filteredRecords,
            'data' => $data,
        ]);
    }

    public function generateBackup(): JsonResponse
    {
        try {
            $propertyId = (int) Auth::user()->propertyid;
            $username = Auth::user()->u_name;

            BackupSinglePropertyJob::dispatch($propertyId, $username);

            logData(
                'Backup',
                "Property backup queued",
                $propertyId
            );

            return response()->json([
                'status' => 'success',
                'message' => 'Backup has been queued successfully.'
            ]);
        } catch (Throwable $e) {
            logData(
                'Backup',
                "Property backup queue failed : {$e->getMessage()}",
                Auth::user()->propertyid
            );

            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }

    public function downloadBackup(Request $request)
    {
        $backupId = (int) $request->input('id');
        $propertyId = (int) Auth::user()->propertyid;
        $username = Auth::user()->u_name;

        $backup = Backuplog::on('main')
            ->where('id', $backupId)
            ->where('propertyid', $propertyId)
            ->first();

        if (!$backup) {
            return response()->json([
                'status' => 'error',
                'message' => 'Backup record not found or access denied.'
            ], 404);
        }

        $filePath = public_path($backup->filepath);

        if (!file_exists($filePath)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Backup file not found on server.'
            ], 404);
        }

        DB::connection('main')->table('backuplog')
            ->where('id', $backupId)
            ->where('propertyid', $propertyId)
            ->update([
                'status' => 1,
                'downloaded_by' => $username,
                'downloaded_at' => now(),
            ]);

        return response()->download($filePath, $backup->filename);
    }

    private function formatBytes(int $bytes): string
    {
        if ($bytes >= 1073741824) {
            return number_format($bytes / 1073741824, 1) . ' GB';
        } elseif ($bytes >= 1048576) {
            return number_format($bytes / 1048576, 1) . ' MB';
        } elseif ($bytes >= 1024) {
            return number_format($bytes / 1024, 1) . ' KB';
        }
        return $bytes . ' Bytes';
    }
}
