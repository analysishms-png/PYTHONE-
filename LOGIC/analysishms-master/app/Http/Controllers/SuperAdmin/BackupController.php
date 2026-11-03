<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use App\Jobs\BulkDatabaseBackupJob;
use App\Models\Backuplog;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Throwable;

class BackupController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

            return $next($request);
        });
    }

    public function index()
    {
        return view('admin.backups');
    }

    public function toolsIndex()
    {
        return view('tools.databackups');
    }

    public function downloadStorage(Request $request)
    {
        $this->cleanOldBackups();

        $zipFileName = 'storage_backup_'.date('Y-m-d_H-i-s').'.zip';
        $zipPath = storage_path($zipFileName);

        $zip = new \ZipArchive;

        if ($zip->open($zipPath, \ZipArchive::CREATE | \ZipArchive::OVERWRITE) === true) {
            $files = File::allFiles(storage_path());

            foreach ($files as $file) {
                $fullPath = $file->getPathname();

                if (file_exists($fullPath)) {
                    $relativePath = str_replace(storage_path().'/', '', $fullPath);
                    $zip->addFile($fullPath, $relativePath);
                }
            }

            $zip->close();
        } else {
            return response()->json(['status' => 'error', 'message' => 'Could not create zip file']);
        }

        return response()->json([
            'status' => 'success',
            'url' => $this->tempDownloadUrl($zipFileName),
        ]);
    }

    public function downloadTempZip($filename)
    {
        $filePath = storage_path(basename($filename));

        if (file_exists($filePath)) {
            return response()->download($filePath)->deleteFileAfterSend(true);
        }

        abort(404);
    }

    public function downloadDatabaseBackup(Request $request)
    {
        $this->cleanOldBackups();

        $dbName = config('database.connections.mysql.database');
        $dbUser = config('database.connections.mysql.username');
        $dbHost = config('database.connections.mysql.host');
        $dbPass = $request->password;

        if (! $dbPass) {
            return response()->json([
                'status' => 'error',
                'message' => 'Database password is required',
            ]);
        }

        $fileName = 'database_backup_'.date('Y-m-d_H-i-s').'.gz';
        $filePath = storage_path($fileName);

        $command = "mysqldump -h {$dbHost} -u {$dbUser} -p{$dbPass} --single-transaction --quick --lock-tables=false {$dbName} 2>/dev/null | gzip > {$filePath}";

        $output = [];
        $returnVar = 0;
        exec($command, $output, $returnVar);

        if ($returnVar !== 0 || ! file_exists($filePath) || filesize($filePath) == 0) {
            @unlink($filePath);

            return response()->json([
                'status' => 'error',
                'message' => 'Database backup failed. Return: '.$returnVar,
            ]);
        }

        return response()->json([
            'status' => 'success',
            'url' => $this->tempDownloadUrl($fileName),
        ]);
    }

    public function generateBulkBackup(): JsonResponse
    {
        try {
            $username = Auth::user()->u_name ?? Auth::user()->name;

            BulkDatabaseBackupJob::dispatch($username);

            logData(
                'Bulk Backup',
                "Bulk database backup queued by {$username}",
                10,
                null,
                null,
                null,
                'main'
            );

            return response()->json([
                'status' => 'success',
                'message' => 'Bulk backup has been queued successfully.',
            ]);
        } catch (Throwable $e) {
            logData(
                'Bulk Backup',
                "Bulk backup queue failed: {$e->getMessage()}",
                10,
                null,
                null,
                null,
                'main'
            );

            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    public function fetchBulkBackups(Request $request): JsonResponse
    {
        $query = Backuplog::on('main')
            ->select('id', 'username', 'filename', 'filepath', 'filesize', 'total_database', 'status', 'downloaded_by', 'downloaded_at', 'created_at');

        if ($request->filled('date_from')) {
            $query->whereDate('created_at', '>=', $request->date_from);
        }

        if ($request->filled('date_to')) {
            $query->whereDate('created_at', '<=', $request->date_to);
        }

        if ($request->filled('search.value')) {
            $search = $request->input('search.value');
            $query->where(function ($q) use ($search) {
                $q->where('filename', 'like', "%{$search}%")
                    ->orWhere('username', 'like', "%{$search}%")
                    ->orWhere('downloaded_by', 'like', "%{$search}%");
            });
        }

        $totalRecords = Backuplog::on('main')->count();

        $columnMap = [
            0 => 'id',
            1 => 'filename',
            2 => 'filesize',
            3 => 'total_database',
            4 => 'username',
            5 => 'created_at',
            6 => 'status',
            7 => 'downloaded_by',
            8 => 'downloaded_at',
        ];

        $orderColumn = $columnMap[$request->input('order.0.column', 5)] ?? 'created_at';
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
                ? Carbon::parse($backup->downloaded_at)->format('l, d F Y h:i A')
                : '-';

            $downloadBtn = '<button class="btn btn-sm btn-primary download-btn" data-id="'.$backup->id.'" data-filename="'.e($backup->filename).'"><i class="fa fa-download"></i> Download</button>';

            $data[] = [
                $serial++,
                $backup->filename,
                $this->formatBytes($backup->filesize),
                $backup->total_database,
                $backup->username,
                Carbon::parse($backup->created_at)->format('l, d F Y h:i A'),
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

    public function downloadBulkBackup(Request $request)
    {
        $backupId = (int) $request->input('id');
        $username = Auth::user()->u_name ?? Auth::user()->name;

        $backup = Backuplog::on('main')
            ->where('id', $backupId)
            ->first();

        if (! $backup) {
            return response()->json([
                'status' => 'error',
                'message' => 'Backup record not found.',
            ], 404);
        }

        $filePath = public_path($backup->filepath);

        if (! file_exists($filePath)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Backup file not found on server.',
            ], 404);
        }

        DB::connection('main')->table('backuplog')
            ->where('id', $backupId)
            ->update([
                'status' => 1,
                'downloaded_by' => $username,
                'downloaded_at' => now(),
            ]);

        return response()->download($filePath, $backup->filename);
    }

    private function cleanOldBackups($folder = null, $hours = 1)
    {
        $folder = $folder ?? storage_path();
        $files = File::files($folder);

        $now = time();
        foreach ($files as $file) {
            if ($file->getExtension() === 'zip') {
                $fileTime = filemtime($file->getRealPath());
                if (($now - $fileTime) > ($hours * 3600)) {
                    @unlink($file->getRealPath());
                }
            }

            if ($file->getExtension() === 'sql' || $file->getExtension() === 'gz') {
                $fileTime = filemtime($file->getRealPath());
                if (($now - $fileTime) > ($hours * 3600)) {
                    @unlink($file->getRealPath());
                }
            }
        }
    }

    private function tempDownloadUrl(string $filename): string
    {
        if (request()->is('tools/*')) {
            return route('tools.download-temp-zip', $filename);
        }

        return url('superadmin/download-temp-zip/'.$filename);
    }

    private function formatBytes(int $bytes): string
    {
        if ($bytes >= 1073741824) {
            return number_format($bytes / 1073741824, 1).' GB';
        } elseif ($bytes >= 1048576) {
            return number_format($bytes / 1048576, 1).' MB';
        } elseif ($bytes >= 1024) {
            return number_format($bytes / 1024, 1).' KB';
        }

        return $bytes.' Bytes';
    }

    public function verifyDatabase(Request $request)
    {
        if (! $request->hasFile('backup_file')) {
            return response()->json(['status' => 'error', 'message' => 'No file uploaded']);
        }

        $file = $request->file('backup_file');
        $zip = new \ZipArchive;
        $tmpPath = storage_path('app/tmp_db_'.time());
        mkdir($tmpPath);

        if ($zip->open($file->getRealPath()) === true) {
            $zip->extractTo($tmpPath);
            $zip->close();

            $sqlFile = collect(scandir($tmpPath))
                ->filter(fn ($f) => str_ends_with($f, '.sql'))
                ->first();

            if (! $sqlFile) {
                File::deleteDirectory($tmpPath);

                return response()->json(['status' => 'error', 'message' => 'No SQL file found in backup.']);
            }

            $sqlContent = file_get_contents($tmpPath.'/'.$sqlFile);
            $enviroData = [];
            $paychargeLookup = [];

            $debugInfo = [
                'enviro_found' => 0,
                'paycharge_found' => 0,
                'sample_enviro_values' => [],
                'sample_paycharge_values' => [],
                'paycharge_keys' => [],
                'paycharge_regex_attempts' => 0,
            ];

            $paychargePos = strpos($sqlContent, 'paycharge');
            if ($paychargePos !== false) {
                $debugInfo['paycharge_context'] = substr($sqlContent, max(0, $paychargePos - 50), 200);
            } else {
                $debugInfo['paycharge_context'] = 'paycharge table not found in SQL content';
            }

            if (preg_match_all("/INSERT\s+INTO\s+`?enviro_general`?\s+VALUES\s*(.+?);/ims", $sqlContent, $matches)) {
                foreach ($matches[1] as $valuesBlock) {
                    if (preg_match_all("/\(([^)]+(?:\([^)]*\)[^)]*)*)\)/", $valuesBlock, $tupleMatches)) {
                        foreach ($tupleMatches[1] as $tuple) {
                            $values = $this->parseSqlTuple($tuple);

                            if (count($values) >= 2) {
                                $propertyid = $values[0];
                                $ncur = $values[1];

                                $propertyid = trim($propertyid, "'\"");
                                $ncur = trim($ncur, "'\"");

                                if ($propertyid && $ncur && $propertyid !== 'NULL' && $ncur !== 'NULL') {
                                    $enviroData[] = [
                                        'propertyid' => $propertyid,
                                        'ncur' => substr($ncur, 0, 10),
                                        'paycharge_count' => 0,
                                    ];

                                    if (count($debugInfo['sample_enviro_values']) < 3) {
                                        $debugInfo['sample_enviro_values'][] = [
                                            'propertyid' => $propertyid,
                                            'ncur' => substr($ncur, 0, 10),
                                        ];
                                    }
                                    $debugInfo['enviro_found']++;
                                }
                            }
                        }
                    }
                }
            }

            $pcMatches = [];

            if (preg_match_all("/INSERT\s+INTO\s+`?paycharge`?\s+VALUES\s*(.+?);/ims", $sqlContent, $matches1)) {
                $pcMatches = array_merge($pcMatches, $matches1[1]);
            }

            if (preg_match_all("/INSERT\s+INTO\s+`?paycharge`?\s+VALUES\s*\r?\n\s*(.+?)(?=\r?\n\s*(?:INSERT|CREATE|DROP|ALTER|\/\*|$))/ims", $sqlContent, $matches2)) {
                $pcMatches = array_merge($pcMatches, $matches2[1]);
            }

            if (preg_match_all("/INSERT\s+INTO\s+`?paycharge`?\s+VALUES\s*(.+?)(?=(?:\r?\n){2,}|CREATE|INSERT|$)/ims", $sqlContent, $matches3)) {
                $pcMatches = array_merge($pcMatches, $matches3[1]);
            }

            $debugInfo['paycharge_regex_attempts'] = count($pcMatches);

            if (! empty($pcMatches)) {
                foreach ($pcMatches as $valuesBlock) {
                    if (preg_match_all("/\(([^)]+(?:\([^)]*\)[^)]*)*)\)/", $valuesBlock, $tupleMatches)) {
                        foreach ($tupleMatches[1] as $tuple) {
                            $values = $this->parseSqlTuple($tuple);

                            if (count($values) >= 9) {
                                $pcPropertyId = trim($values[1], "'\"");
                                $vdate = trim($values[8], "'\"");

                                if ($pcPropertyId && $vdate && $pcPropertyId !== 'NULL' && $vdate !== 'NULL') {
                                    $vdate = substr($vdate, 0, 10);
                                    $key = $pcPropertyId;
                                    $paychargeLookup[$key] = ($paychargeLookup[$key] ?? 0) + 1;

                                    if (count($debugInfo['sample_paycharge_values']) < 3) {
                                        $debugInfo['sample_paycharge_values'][] = [
                                            'propertyid' => $pcPropertyId,
                                            'vdate' => $vdate,
                                            'key' => $key,
                                        ];
                                    }
                                    $debugInfo['paycharge_found']++;
                                }
                            }
                        }
                    }
                }
            }

            $debugInfo['paycharge_keys'] = array_slice(array_keys($paychargeLookup), 0, 10);
            $debugInfo['total_paycharge_keys'] = count($paychargeLookup);

            $matched = 0;
            foreach ($enviroData as &$row) {
                $key = $row['propertyid'];
                if (isset($paychargeLookup[$key])) {
                    $row['paycharge_count'] = $paychargeLookup[$key];
                    $matched++;
                }
            }
            $debugInfo['matched_records'] = $matched;

            usort($enviroData, fn ($a, $b) => strtotime($b['ncur']) <=> strtotime($a['ncur']));

            File::deleteDirectory($tmpPath);

            return response()->json([
                'status' => 'success',
                'data' => $enviroData,
                'debug' => $debugInfo,
            ]);
        }

        return response()->json(['status' => 'error', 'message' => 'Failed to open ZIP file.']);
    }

    private function parseSqlTuple($tuple)
    {
        $values = [];
        $current = '';
        $inQuotes = false;
        $quoteChar = '';
        $i = 0;

        while ($i < strlen($tuple)) {
            $char = $tuple[$i];

            if (! $inQuotes) {
                if ($char === '"' || $char === "'") {
                    $inQuotes = true;
                    $quoteChar = $char;
                    $current .= $char;
                } elseif ($char === ',') {
                    $values[] = trim($current);
                    $current = '';
                } else {
                    $current .= $char;
                }
            } else {
                if ($char === $quoteChar) {
                    if ($i + 1 < strlen($tuple) && $tuple[$i + 1] === $quoteChar) {
                        $current .= $char.$char;
                        $i++;
                    } else {
                        $inQuotes = false;
                        $current .= $char;
                    }
                } else {
                    $current .= $char;
                }
            }
            $i++;
        }

        if ($current !== '') {
            $values[] = trim($current);
        }

        return $values;
    }
}
