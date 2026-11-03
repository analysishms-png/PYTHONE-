<?php

namespace App\Console\Commands;

use App\Services\TenantDatabase;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class TenantSeedProperty extends Command
{
    protected $signature = 'tenant:seed-property {propertyId}';

    protected $description = 'Copy one property data from main DB to its tenant DB';

    public function handle(): int
    {
        $propertyId = (int) $this->argument('propertyId');

        if ($propertyId <= 0) {
            $this->error('Invalid property ID.');
            return self::FAILURE;
        }

        TenantDatabase::connect($propertyId);

        $this->info('Tenant DB : ' . DB::connection('tenant')->getDatabaseName());

        foreach ($this->getTenantTables() as $table) {
            if (!Schema::connection('main')->hasTable($table)) {
                $this->warn("Skipped : {$table}");
                continue;
            }

            $this->copyTable($table, $propertyId);
        }

        $this->info('Property copied successfully.');

        return self::SUCCESS;
    }

    private function getTenantTables(): array
    {
        $database = DB::connection('tenant')->getDatabaseName();

        return collect(DB::connection('tenant')->select(
            "SELECT TABLE_NAME
             FROM information_schema.TABLES
             WHERE TABLE_SCHEMA = ?
             ORDER BY TABLE_NAME",
            [$database]
        ))
            ->pluck('TABLE_NAME')
            ->reject(fn($table) => in_array($table, [
                'migrations',
                'tenant_migrations',
            ]))
            ->values()
            ->all();
    }

    private function copyTable(string $table, int $propertyId): void
    {
        $sourceColumns = Schema::connection('main')->getColumnListing($table);
        $targetColumns = Schema::connection('tenant')->getColumnListing($table);

        if (in_array('propertyid', $targetColumns)) {
            DB::connection('tenant')->table($table)
                ->where('propertyid', $propertyId)
                ->delete();
        }

        if (in_array('property_id', $targetColumns)) {
            DB::connection('tenant')->table($table)
                ->where('property_id', $propertyId)
                ->delete();
        }

        if (in_array('Property_ID', $targetColumns)) {
            DB::connection('tenant')->table($table)
                ->where('Property_ID', $propertyId)
                ->delete();
        }

        $query = DB::connection('main')->table($table);

        if (in_array('propertyid', $sourceColumns)) {
            $query->where('propertyid', $propertyId);
        }

        if (in_array('property_id', $sourceColumns)) {
            $query->where('property_id', $propertyId);
        }

        if (in_array('Property_ID', $sourceColumns)) {
            $query->where('Property_ID', $propertyId);
        }

        $total = 0;

        $processRows = function ($rows) use (&$total, $table, $targetColumns, $propertyId) {

            $insert = [];

            foreach ($rows as $row) {

                $data = (array) $row;

                unset($data['id'], $data['sn'], $data['Sn']);

                if (array_key_exists('u_entdt', $data) && in_array('created_at', $targetColumns)) {
                    $data['created_at'] = $data['u_entdt'];
                }

                if (array_key_exists('U_EntDt', $data) && in_array('created_at', $targetColumns)) {
                    $data['created_at'] = $data['U_EntDt'];
                }

                if (array_key_exists('u_updatedt', $data) && in_array('updated_at', $targetColumns)) {
                    $data['updated_at'] = $data['u_updatedt'];
                }

                if (array_key_exists('U_UpdateDt', $data) && in_array('updated_at', $targetColumns)) {
                    $data['updated_at'] = $data['U_UpdateDt'];
                }

                $filtered = [];

                foreach ($targetColumns as $column) {

                    if ($column === 'id') {
                        continue;
                    }

                    if ($table === 'company' && $column === 'db_name') {
                        $filtered['db_name'] = 'db_' . $propertyId;
                        continue;
                    }

                    $filtered[$column] = array_key_exists($column, $data)
                        ? $data[$column]
                        : null;
                }

                $insert[] = $filtered;

                if (count($insert) === 500) {
                    DB::connection('tenant')->table($table)->insert($insert);
                    $total += count($insert);
                    $insert = [];
                }
            }

            if ($insert) {
                DB::connection('tenant')->table($table)->insert($insert);
                $total += count($insert);
            }
        };

        if (in_array('id', $sourceColumns)) {

            $query->orderBy('id')
                ->chunkById(500, $processRows, 'id');
        } elseif (in_array('sn', $sourceColumns)) {

            $query->orderBy('sn')
                ->chunkById(500, $processRows, 'sn');
        } else {

            $query->orderBy($sourceColumns[0])
                ->chunk(500, $processRows);
        }

        $this->info("{$table} : {$total} rows");
    }
}
