<?php

namespace App\Services;

use App\Models\Backuplog;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use RuntimeException;
use Illuminate\Support\Facades\Log;
use Throwable;

class PropertyDatabaseBackupService
{
    protected string $backupPath;

    public function __construct()
    {
        $this->backupPath = public_path('uploads/backup');

        if (!File::exists($this->backupPath)) {
            File::makeDirectory($this->backupPath, 0755, true);
        }
    }

    public function backupProperty(int $propertyId, string $username): array
    {
        try {
            TenantDatabase::connect($propertyId);

            $backup = $this->backupDatabase('tenant');

            DB::disconnect('main');
            DB::reconnect('main');

            DB::connection('main')->table('backuplog')->insert([
                'propertyid'    => $propertyId,
                'username'      => $username,
                'filename'      => $backup['filename'],
                'filepath'      => 'uploads/backup/' . $backup['filename'],
                'filesize'      => $backup['size'],
                'status'        => 0,
                'downloaded_by' => null,
                'downloaded_at' => null,
                'created_at'    => now(),
            ]);

            return $backup;
        } catch (Throwable $e) {
            throw new RuntimeException($e->getMessage());
        } finally {
            DB::disconnect('tenant');
            DB::setDefaultConnection('main');
        }
    }

    public function backupMain(): array
    {
        try {
            return $this->backupDatabase('main');
        } catch (Throwable $e) {
            throw new RuntimeException($e->getMessage());
        }
    }

    private function backupDatabase(string $connection): array
    {
        $filePath = '';

        try {
            $config = config("database.connections.{$connection}");

            if (!$config) {
                throw new RuntimeException("Database connection [{$connection}] not found.");
            }

            $dbName = $config['database'];
            $dbHost = $config['host'];
            $dbPort = $config['port'];
            $dbUser = $config['username'];
            $dbPass = $config['password'];

            $fileName = $dbName . '_' . date('d_m_Y_H_i_s') . '.sql.gz';
            $filePath = $this->backupPath . DIRECTORY_SEPARATOR . $fileName;

            $command = sprintf(
                'mysqldump -h %s -P %s -u %s -p%s --single-transaction --quick --lock-tables=false %s 2>/dev/null | gzip > %s',
                escapeshellarg($dbHost),
                escapeshellarg($dbPort),
                escapeshellarg($dbUser),
                $dbPass,
                escapeshellarg($dbName),
                escapeshellarg($filePath)
            );

            $output = [];
            $status = 0;

            exec($command, $output, $status);

            if (
                $status !== 0 ||
                !file_exists($filePath) ||
                filesize($filePath) === 0
            ) {
                @unlink($filePath);

                throw new RuntimeException(
                    implode(PHP_EOL, $output) ?: "Database backup failed for {$dbName}"
                );
            }

            return [
                'success'  => true,
                'database' => $dbName,
                'filename' => $fileName,
                'path'     => $filePath,
                'size'     => filesize($filePath),
            ];
        } catch (Throwable $e) {
            @unlink($filePath);
            throw new RuntimeException($e->getMessage());
        }
    }
}
