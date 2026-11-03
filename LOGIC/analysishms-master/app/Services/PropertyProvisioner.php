<?php

namespace App\Services;

use App\Models\Companyreg;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use RuntimeException;

class PropertyProvisioner
{
    public function provision(Companyreg $company, $inputUsername): Companyreg
    {
        $main = DB::connection('main');

        $propertyId = null;
        $databaseName = null;
        $centralUserId = null;
        $companySaved = false;
        $tenantDatabaseCreated = false;

        try {
            $main->beginTransaction();

            $maxPropertyId = $main
                ->table('company')
                ->max('propertyid');

            $propertyId = is_null($maxPropertyId)
                ? 101
                : ((int) $maxPropertyId + 1);

            $company->propertyid = $propertyId;
            $company->db_host = 'localhost';
            $company->db_name = "db_$propertyId";

            $sis = 'ANA';

            $maxSid = $main
                ->table('company')
                ->max('comp_code');

            $maxSidNum = 0;

            if ($maxSid) {
                $maxSidNum = (int) substr(
                    $maxSid,
                    strlen($sis)
                );
            }

            $company->comp_code = $sis . str_pad(
                $maxSidNum + 1,
                3,
                '0',
                STR_PAD_LEFT
            );

            $now = now();

            $company->created_at = $now;

            $currentYear = (int) $now->format('Y');
            $nextYear = $currentYear + 1;

            if ((int) $now->format('n') < 4) {
                $currentYear--;
                $nextYear--;
            }

            $company->cfyear =
                $currentYear . '-' . substr($nextYear, -2);

            $company->pfyear =
                ($currentYear - 1) . '-' . substr($currentYear, -2);

            if (! empty($company->password)) {
                $company->password = Hash::make(
                    $company->password
                );
            }

            $company->setConnection('main');
            $company->save();

            $companySaved = true;

            $centralUserId = $main
                ->table('users')
                ->insertGetId([
                    'u_name' => $inputUsername,
                    'name' => $inputUsername,
                    'propertyid' => $propertyId,
                    'email' => $company->email,
                    'password' => $company->password,
                    'role' => 2,
                    'addedby' => Auth::user()->name,
                    'AP' => 'P',
                    'created_at' => now(),
                ]);

            $main->commit();

            $databaseName = TenantDatabase::databaseName(
                $propertyId
            );

            $this->createTenantDatabase(
                $propertyId,
                $databaseName
            );

            $tenantDatabaseCreated = true;

            $this->runTenantMigrations($propertyId);

            TenantDatabase::connect($propertyId);

            $this->verifyTenantConnection(
                $databaseName
            );

            $this->insertTenantCompany(
                $company,
                $propertyId
            );

            $this->insertTenantUser(
                $company,
                $propertyId,
                $centralUserId,
                $inputUsername
            );

            $this->insertTenantEnvironment(
                $company,
                $propertyId
            );

            DB::setDefaultConnection('main');

            $company->setConnection('main');

            return $company;
        } catch (\Throwable $e) {
            if ($main->transactionLevel() > 0) {
                $main->rollBack();
            }

            if ($tenantDatabaseCreated && $databaseName) {
                try {
                    $main->statement(
                        "DROP DATABASE IF EXISTS `{$databaseName}`"
                    );
                } catch (\Throwable $cleanupException) {
                    throw new RuntimeException(
                        $e->getMessage()
                            . ' Tenant database cleanup also failed: '
                            . $cleanupException->getMessage(),
                        0,
                        $e
                    );
                }
            }

            if ($companySaved && $propertyId) {
                try {
                    $main
                        ->table('company')
                        ->where('propertyid', $propertyId)
                        ->delete();

                    $main
                        ->table('users')
                        ->where('propertyid', $propertyId)
                        ->delete();
                } catch (\Throwable $cleanupException) {
                    throw new RuntimeException(
                        $e->getMessage()
                            . ' Company cleanup also failed: '
                            . $cleanupException->getMessage(),
                        0,
                        $e
                    );
                }
            }

            DB::setDefaultConnection('main');

            throw $e;
        }
    }

    private function createTenantDatabase(
        int $propertyId,
        string $databaseName
    ): void {
        $exists = DB::connection('main')->selectOne(
            'SELECT SCHEMA_NAME
             FROM information_schema.SCHEMATA
             WHERE SCHEMA_NAME = ?',
            [$databaseName]
        );

        if ($exists) {
            throw new RuntimeException(
                "Tenant database [{$databaseName}] already exists."
            );
        }

        TenantDatabase::createDatabase($propertyId);
    }

    private function runTenantMigrations(
        int $propertyId
    ): void {
        $exitCode = Artisan::call(
            'tenant:migrate',
            [
                'propertyId' => $propertyId,
            ]
        );

        if ($exitCode !== 0) {
            throw new RuntimeException(
                "Tenant migrations failed for property {$propertyId}."
            );
        }
    }

    private function verifyTenantConnection(
        string $databaseName
    ): void {
        $connectedDatabase = DB::connection('tenant')
            ->getDatabaseName();

        if ($connectedDatabase !== $databaseName) {
            throw new RuntimeException(
                'Tenant database verification failed. '
                    . "Expected [{$databaseName}], "
                    . "connected to [{$connectedDatabase}]."
            );
        }
    }

    private function insertTenantCompany(
        Companyreg $company,
        int $propertyId
    ): void {
        $data = $company->getAttributes();
        $data['propertyid'] = $propertyId;
        $data['db_name'] = "db_$propertyId";

        DB::connection('tenant')
            ->table('company')
            ->insert($data);
    }

    private function insertTenantUser(
        Companyreg $company,
        int $propertyId,
        int $centralUserId,
        string $inputUsername
    ): void {
        DB::connection('tenant')
            ->table('users')
            ->insert([
                'id' => $centralUserId,
                'u_name' => $inputUsername,
                'name' => $inputUsername,
                'propertyid' => $propertyId,
                'email' => $company->email,
                'password' => $company->password,
                'role' => 2,
                'created_at' => now(),
            ]);
    }

    private function insertTenantEnvironment(
        Companyreg $company,
        int $propertyId
    ): void {
        $currentTime = now();

        $enviroTables = [
            'enviro_banquet',
            'enviro_einvoice',
            'enviro_finance',
            'enviro_form',
            'enviro_general',
            'enviro_inventory',
            'enviro_notifications',
            'enviro_payroll',
            'enviro_pos',
            'enviro_whatsapp',
            'channelenviro',
        ];

        foreach ($enviroTables as $table) {
            $datain = [
                'propertyid' => $propertyId,
                'created_at' => $currentTime,
            ];

            if ($table === 'enviro_general') {
                $datain['ncur'] = $currentTime->toDateString();
            }

            DB::connection('tenant')
                ->table($table)
                ->insert($datain);
        }
    }
}
