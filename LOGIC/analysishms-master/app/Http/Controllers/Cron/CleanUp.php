<?php

namespace App\Http\Controllers\Cron;

use App\Http\Controllers\Controller;
use App\Models\ActivityLog;
use App\Models\Applicationlogs;
use App\Models\DailyReportSnapshot;
use App\Models\PrintDelay;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CleanUp extends Controller
{
    public function cleanup()
    {
        $storagePath = storage_path();
        $files = scandir($storagePath);

        $deleted = [];

        foreach ($files as $file) {

            if ($file === '.' || $file === '..') continue;

            if (preg_match('/^(db_backup_|database_backup_).*\\.(gz|zip)/', $file)) {

                $fullPath = $storagePath . '/' . $file;

                if (is_file($fullPath)) {
                    unlink($fullPath);
                    $deleted[] = $file;
                }
            }
        }

        $logPath = storage_path('logs/laravel.log');

        if (file_exists($logPath)) {
            file_put_contents($logPath, '');
        }

        ActivityLog::where('created_at', '<', Carbon::now()->subDays(2))->delete();
        Applicationlogs::where('created_at', '<', Carbon::now()->subDays(5))->delete();
        DailyReportSnapshot::where('created_at', '<', Carbon::now()->subDays(1))->delete();
        PrintDelay::where('created_at', '<', Carbon::now()->subDays(1))->delete();

        return response()->json([
            'status' => 'success',
            'deleted_files' => $deleted,
            'log_cleared' => true
        ]);
    }
}
