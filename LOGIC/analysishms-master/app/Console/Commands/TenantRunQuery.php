<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class TenantRunQuery extends Command
{
    protected $signature = 'tenant:query {query}';
    // php artisan tenant:query "ALTER TABLE room_mast DROP INDEX idx_room_mast_type_room_cat"
    protected $description = 'Run a SQL query on all tenant databases';

    public function handle(): int
    {
        $query = $this->argument('query');

        $properties = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->orderBy('propertyid')
            ->pluck('propertyid');

        $success = 0;
        $skipped = 0;

        foreach ($properties as $propertyId) {

            $dbName = 'db_' . $propertyId;

            $exists = DB::connection('main')->selectOne(
                "SELECT SCHEMA_NAME FROM information_schema.SCHEMATA WHERE SCHEMA_NAME = ?",
                [$dbName]
            );

            if (!$exists) {
                $this->warn("Skipped : {$dbName}");
                $skipped++;
                continue;
            }

            try {
                TenantDatabase::connect($propertyId);

                DB::connection('tenant')->statement($query);

                $this->info("Success : {$dbName}");
                $success++;
            } catch (\Throwable $e) {
                $this->error("Failed : {$dbName} - {$e->getMessage()}");
                $skipped++;
            }
        }

        $this->newLine();
        $this->info("Completed");
        $this->line("Success : {$success}");
        $this->line("Skipped : {$skipped}");

        return self::SUCCESS;
    }
}
