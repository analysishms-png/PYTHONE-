<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class TenantSeedAll extends Command
{
    protected $signature = 'tenant:seed-all {--property=}';

    protected $description = 'Copy all property data from main DB into tenant databases';

    public function handle(): int
    {
        $query = DB::connection('main')
            ->table('company')
            ->select('propertyid', 'comp_name')
            ->orderBy('propertyid');

        if ($this->option('property')) {
            $query->where('propertyid', (int) $this->option('property'));
        }

        $properties = $query->get();

        if ($properties->isEmpty()) {
            $this->error('No properties found.');
            return self::FAILURE;
        }

        foreach ($properties as $property) {

            $this->line(str_repeat('-', 60));
            $this->info("Property {$property->propertyid} - {$property->comp_name}");

            $exit = Artisan::call('tenant:seed-property', [
                'propertyId' => $property->propertyid,
            ]);

            $this->line(Artisan::output());

            if ($exit !== 0) {
                $this->error("Failed: {$property->propertyid}");
                continue;
            }

            $this->info("Completed: {$property->propertyid}");
        }

        $this->line(str_repeat('-', 60));
        $this->info('All properties seeded successfully.');

        return self::SUCCESS;
    }
}
