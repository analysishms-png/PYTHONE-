<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class TenantRemoveMigration extends Command
{
    protected $signature = 'tenant:remove-migration {migration}';
    // php artisan tenant:remove-migration 2026_09_27_093017_add_status_to_plan_mast_table

    protected $description = 'Remove a migration entry from tenant_migrations in all tenant databases';

    public function handle(): int
    {
        $migration = $this->argument('migration');

        $properties = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->orderBy('propertyid')
            ->pluck('propertyid');

        $removed = 0;
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

            TenantDatabase::connect($propertyId);

            $count = DB::connection('tenant')
                ->table('tenant_migrations')
                ->where('migration', $migration)
                ->delete();

            if ($count > 0) {
                $this->info("Removed : {$dbName}");
                $removed++;
            }
        }

        $this->newLine();
        $this->info("Completed");
        $this->line("Removed : {$removed}");
        $this->line("Skipped : {$skipped}");

        return self::SUCCESS;
    }
}
