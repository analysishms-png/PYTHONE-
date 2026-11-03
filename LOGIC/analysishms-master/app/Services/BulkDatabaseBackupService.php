<?php

namespace App\Services;

use App\Models\BulkBackupLog;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use RuntimeException;
use Throwable;
use ZipArchive;

class BulkDatabaseBackupService
{
    protected string $backupPath;
    protected string $timestamp;
    protected string $folderName;
    protected string $folderPath;
    protected int $successCount = 0;
    protected string $mainDbName;

    public function __construct()
    {
        $this->backupPath = public_path('uploads/bulkbackup');

        if (!File::exists($this->backupPath)) {
            File::makeDirectory($this->backupPath, 0755, true);
        }

        $this->timestamp = date('d_m_Y_H_i_s');
        $this->folderName = "analysis_{$this->timestamp}";
        $this->folderPath = $this->backupPath . DIRECTORY_SEPARATOR . $this->folderName;

        $mainConfig = config('database.connections.main');
        $this->mainDbName = $mainConfig['database'] ?? 'analysis';
    }

    public function createBulkBackup(string $username): array
    {
        try {
            $this->createBackupFolder();
            $this->backupMainDatabase();
            $this->backupTenantDatabases();
            $zipPath = $this->createZipArchive();
            $this->removeBackupFolder();
            $this->logBackup($username, $zipPath);

            return [
                'success' => true,
                'filename' => basename($zipPath),
                'path' => $zipPath,
                'size' => filesize($zipPath),
                'total_database' => $this->successCount,
            ];
        } catch (Throwable $e) {
            $this->cleanupOnFailure();
            throw new RuntimeException($e->getMessage());
        } finally {
            $this->restoreConnections();
        }
    }

    protected function createBackupFolder(): void
    {
        if (!File::exists($this->folderPath)) {
            File::makeDirectory($this->folderPath, 0755, true);
        }
    }

    protected function backupMainDatabase(): void
    {
        $config = config('database.connections.main');

        $fileName = "analysis_{$this->timestamp}.sql.gz";
        $filePath = $this->folderPath . DIRECTORY_SEPARATOR . $fileName;

        $command = $this->buildMysqldumpCommand($config, $filePath);

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
                "Main database backup failed: " . implode(PHP_EOL, $output)
            );
        }

        $this->successCount++;
    }

    protected function backupTenantDatabases(): void
    {
        $propertyIds = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->orderBy('propertyid')
            ->pluck('propertyid')
            ->toArray();

        foreach ($propertyIds as $propertyId) {
            $this->backupSingleTenant($propertyId);
        }
    }

    protected function backupSingleTenant(int $propertyId): void
    {
        try {
            if (!$this->databaseExists($propertyId)) {
                Log::warning("Database for property {$propertyId} does not exist, skipping.");
                return;
            }

            \App\Services\TenantDatabase::connect($propertyId);

            $config = config('database.connections.tenant');
            $dbName = $config['database'] ?? "db_{$propertyId}";

            $fileName = "{$dbName}_{$this->timestamp}.sql.gz";
            $filePath = $this->folderPath . DIRECTORY_SEPARATOR . $fileName;

            $command = $this->buildMysqldumpCommand($config, $filePath);

            $output = [];
            $status = 0;
            exec($command, $output, $status);

            if (
                $status !== 0 ||
                !file_exists($filePath) ||
                filesize($filePath) === 0
            ) {
                @unlink($filePath);
                Log::error("Tenant backup failed for property {$propertyId}: " . implode(PHP_EOL, $output));
                return;
            }

            $this->successCount++;
        } catch (Throwable $e) {
            Log::error("Tenant backup exception for property {$propertyId}: {$e->getMessage()}");
        } finally {
            DB::disconnect('tenant');
            DB::setDefaultConnection('main');
        }
    }

    protected function databaseExists(int $propertyId): bool
    {
        try {
            $company = DB::connection('main')
                ->table('company')
                ->where('propertyid', $propertyId)
                ->first();

            if (!$company) {
                return false;
            }

            $dbName = !empty($company->db_name) ? $company->db_name : "db_{$propertyId}";

            $result = DB::connection('main')
                ->select("SELECT SCHEMA_NAME FROM information_schema.SCHEMATA WHERE SCHEMA_NAME = ?", [$dbName]);

            return !empty($result);
        } catch (Throwable $e) {
            Log::error("Database existence check failed for property {$propertyId}: {$e->getMessage()}");
            return false;
        }
    }

    protected function buildMysqldumpCommand(array $config, string $filePath): string
    {
        $host = $config['host'] ?? '127.0.0.1';
        $port = $config['port'] ?? '3306';
        $username = $config['username'] ?? 'root';
        $password = $config['password'] ?? '';
        $database = $config['database'];

        return sprintf(
            'mysqldump -h %s -P %s -u %s -p%s --single-transaction --quick --lock-tables=false %s 2>/dev/null | gzip > %s',
            escapeshellarg($host),
            escapeshellarg($port),
            escapeshellarg($username),
            $password,
            escapeshellarg($database),
            escapeshellarg($filePath)
        );
    }

    protected function createZipArchive(): string
    {
        $zipFileName = "analysis_{$this->timestamp}.zip";
        $zipPath = $this->backupPath . DIRECTORY_SEPARATOR . $zipFileName;

        $zip = new ZipArchive();
        if ($zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE) !== true) {
            throw new RuntimeException('Could not create ZIP archive');
        }

        $files = File::files($this->folderPath);
        foreach ($files as $file) {
            $relativePath = $file->getRelativePathname();
            $zip->addFile($file->getRealPath(), $relativePath);
        }

        $zip->close();

        if (!file_exists($zipPath) || filesize($zipPath) === 0) {
            throw new RuntimeException('ZIP archive creation failed or empty');
        }

        return $zipPath;
    }

    protected function removeBackupFolder(): void
    {
        if (File::exists($this->folderPath)) {
            File::deleteDirectory($this->folderPath);
        }
    }

    protected function logBackup(string $username, string $zipPath): void
    {
        DB::connection('main')->table('backuplog')->insert([
            'username' => $username,
            'propertyid' => 10,
            'filename' => basename($zipPath),
            'filepath' => 'uploads/bulkbackup/' . basename($zipPath),
            'filesize' => filesize($zipPath),
            'total_database' => $this->successCount,
            'status' => 0,
            'downloaded_by' => null,
            'downloaded_at' => null,
            'created_at' => now(),
        ]);
    }

    protected function cleanupOnFailure(): void
    {
        if (File::exists($this->folderPath)) {
            File::deleteDirectory($this->folderPath);
        }
    }

    protected function restoreConnections(): void
    {
        DB::disconnect('tenant');
        DB::setDefaultConnection('main');
    }
}