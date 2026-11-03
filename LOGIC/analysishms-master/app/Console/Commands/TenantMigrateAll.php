<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Database\Migrations\DatabaseMigrationRepository;
use Illuminate\Database\Migrations\Migrator;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Facades\DB;

class TenantMigrateAll extends Command
{
    protected $signature = 'tenant:migrate-all';

    protected $description = 'Run pending tenant migrations for all existing tenant databases';

    public function handle(): int
    {
        $properties = DB::connection('main')
            ->table('company')
            ->where('propertyid', '>', 100)
            ->orderBy('propertyid')
            ->pluck('propertyid');

        foreach ($properties as $propertyId) {

            $dbName = 'db_' . $propertyId;

            $exists = DB::connection('main')->selectOne(
                "SELECT SCHEMA_NAME FROM information_schema.SCHEMATA WHERE SCHEMA_NAME = ?",
                [$dbName]
            );

            if (! $exists) {
                $this->warn("Skipped : {$dbName} (database not found)");
                continue;
            }

            $this->info("Migrating : {$dbName}");

            TenantDatabase::connect($propertyId);

            $repository = new DatabaseMigrationRepository(
                app('db'),
                'tenant_migrations'
            );

            if (! $repository->repositoryExists()) {
                $repository->createRepository();
            }

            $migrator = new Migrator(
                $repository,
                app('db'),
                new Filesystem(),
                app('events')
            );

            $migrator->setConnection('tenant');

            $migrator->run([
                database_path('migrations/tenant_migrations')
            ]);

            $this->info("Done : {$dbName}");
        }

        $this->info('All tenant migrations completed successfully.');

        return self::SUCCESS;
    }
}