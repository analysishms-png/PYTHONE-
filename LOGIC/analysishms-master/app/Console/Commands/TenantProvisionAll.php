<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class TenantProvisionAll extends Command
{
    protected $signature = 'tenant:provision-all {--property=}';

    protected $description = 'Create tenant databases and run migrations for all properties';

    public function handle(): int
    {
        $query = DB::connection('main')
            ->table('company')
            ->whereNotIn('propertyid', [10, 20])
            ->orderBy('propertyid');

        if ($this->option('property')) {
            $query->where('propertyid', (int) $this->option('property'));
        }

        $companies = $query->get();

        if ($companies->isEmpty()) {
            $this->error('No properties found.');
            return self::FAILURE;
        }

        foreach ($companies as $company) {

            $propertyId = (int) $company->propertyid;

            $this->line("------------------------------------------------");
            $this->info("Property : {$propertyId}");

            try {

                TenantDatabase::createDatabase($propertyId);

                $exit = Artisan::call('tenant:migrate', [
                    'propertyId' => $propertyId,
                ]);

                if ($exit !== 0) {
                    $this->error("Migration failed : {$propertyId}");
                    continue;
                }

                $this->info("Completed : db_{$propertyId}");
            } catch (\Throwable $e) {

                $this->error("Failed {$propertyId} : " . $e->getMessage());
            }
        }

        $this->line("------------------------------------------------");
        $this->info('All provisioning completed.');

        return self::SUCCESS;
    }
}
