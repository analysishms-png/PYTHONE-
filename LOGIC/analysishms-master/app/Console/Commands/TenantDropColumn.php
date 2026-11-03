<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class TenantDropColumn extends Command
{
    protected $signature = 'tenant:drop-column {table} {column}';
// php artisan tenant:drop-column plan_mast status
    protected $description = 'Drop a column from a table in all tenant databases';

    public function handle(): int
    {
        $table = $this->argument('table');
        $column = $this->argument('column');

        $properties = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->pluck('propertyid');

        foreach ($properties as $propertyId) {

            $database = 'db_' . $propertyId;

            try {
                if (!DB::connection('main')->selectOne(
                    "SELECT SCHEMA_NAME FROM information_schema.SCHEMATA WHERE SCHEMA_NAME = ?",
                    [$database]
                )) {
                    $this->warn("Skipped : {$database}");
                    continue;
                }

                TenantDatabase::connect($propertyId);

                if (!Schema::connection('tenant')->hasTable($table)) {
                    $this->warn("No table : {$database}.{$table}");
                    continue;
                }

                if (!Schema::connection('tenant')->hasColumn($table, $column)) {
                    $this->line("Already removed : {$database}");
                    continue;
                }

                DB::connection('tenant')->statement(
                    "ALTER TABLE `{$table}` DROP COLUMN `{$column}`"
                );

                $this->info("Done : {$database}");
            } catch (\Throwable $e) {
                $this->error("Failed : {$database} - {$e->getMessage()}");
            }

            DB::purge('tenant');
        }

        $this->info('Completed.');

        return self::SUCCESS;
    }
}
