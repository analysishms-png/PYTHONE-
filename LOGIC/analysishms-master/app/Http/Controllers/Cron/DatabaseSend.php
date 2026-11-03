<?php

namespace App\Http\Controllers\Cron;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DatabaseSend extends Controller
{
    public function run()
    {
        $dbName = env('DB_DATABASE');
        $dbUser = env('DB_USERNAME');
        $dbHost = env('DB_HOST');
        $dbPass = env('DB_PASSWORD');

        $botToken = env('TELEGRAM_BOT_TOKEN');

        $chatIds = ['992946431', '8662572859'];

        $fileName = 'db_backup_' . date('Y-m-d_H-i-s') . '.gz';
        $filePath = storage_path($fileName);

        $command = "mysqldump -h {$dbHost} -u {$dbUser} -p'{$dbPass}' --single-transaction --quick --lock-tables=false {$dbName} | gzip > {$filePath} 2>&1";

        exec($command, $output, $returnVar);

        if ($returnVar !== 0 || !file_exists($filePath)) {
            return response()->json([
                'status' => 'error',
                'message' => implode("\n", $output)
            ]);
        }

        $url = "https://api.telegram.org/bot{$botToken}/sendDocument";

        $responses = [];

        foreach ($chatIds as $chatId) {
            $postFields = [
                'chat_id' => $chatId,
                'document' => new \CURLFile($filePath),
                'caption' => 'DB Backup - ' . date('Y-m-d H:i:s')
            ];

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_HTTPHEADER, ["Content-Type:multipart/form-data"]);
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $postFields);

            $responses[$chatId] = curl_exec($ch);
            curl_close($ch);
        }

        return response()->json([
            'status' => 'success',
            'telegram_responses' => $responses
        ]);
    }
}
