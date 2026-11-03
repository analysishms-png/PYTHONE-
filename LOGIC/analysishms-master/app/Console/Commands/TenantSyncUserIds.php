<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class TenantSyncUserIds extends Command
{
    protected $signature = 'tenant:sync-user-ids';
    //  php artisan tenant:sync-user-ids
    protected $description = 'Sync tenant users.id with main database';

    public function handle(): int
    {
        $properties = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->orderBy('propertyid')
            ->pluck('propertyid');

        foreach ($properties as $propertyId) {

            $dbName = "db_{$propertyId}";

            $exists = DB::connection('main')->selectOne(
                "SELECT SCHEMA_NAME
                 FROM information_schema.SCHEMATA
                 WHERE SCHEMA_NAME = ?",
                [$dbName]
            );

            if (! $exists) {
                $this->warn("Skipped : {$dbName}");
                continue;
            }

            try {

                TenantDatabase::connect($propertyId);

                DB::connection('tenant')->beginTransaction();

                $users = DB::connection('main')
                    ->table('users')
                    ->where('propertyid', $propertyId)
                    ->select('id', 'u_name')
                    ->get();

                foreach ($users as $user) {

                    DB::connection('tenant')
                        ->table('users')
                        ->where('propertyid', $propertyId)
                        ->where('u_name', $user->u_name)
                        ->update([
                            'id' => $user->id
                        ]);
                }

                DB::connection('tenant')->commit();

                $maxId = DB::connection('tenant')
                    ->table('users')
                    ->max('id') ?? 0;

                DB::connection('tenant')->statement(
                    "ALTER TABLE users AUTO_INCREMENT = " . ($maxId + 1)
                );

                $this->info("Done : {$dbName}");
            } catch (\Throwable $e) {

                if (DB::connection('tenant')->transactionLevel() > 0) {
                    DB::connection('tenant')->rollBack();
                }

                $this->error("Failed : {$dbName} - {$e->getMessage()}");
            }
        }

        $this->newLine();
        $this->info('All tenant user IDs synchronized.');

        return self::SUCCESS;
    }
}
