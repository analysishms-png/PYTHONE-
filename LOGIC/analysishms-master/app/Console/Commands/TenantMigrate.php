<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Database\Migrations\DatabaseMigrationRepository;
use Illuminate\Database\Migrations\Migrator;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Facades\DB;

class TenantMigrate extends Command
{
    protected $signature = 'tenant:migrate {propertyId}';

    protected $description = 'Run tenant migrations for a property database';

    public function handle(): int
    {
        $propertyId = (int) $this->argument('propertyId');

        if ($propertyId <= 0) {
            $this->error('Invalid property ID.');
            return self::FAILURE;
        }

        TenantDatabase::createDatabase($propertyId);
        TenantDatabase::connect($propertyId);

        $this->info(
            'Connected to tenant database: ' .
            DB::connection('tenant')->getDatabaseName()
        );

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

        $path = database_path('migrations/tenant_migrations');

        $migrator->run([$path]);

        $this->info('Tenant migrations completed successfully.');

        return self::SUCCESS;
    }
}