<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // 1. Fix mall_lease_escalation PRIMARY KEY to include shopcode
        if (Schema::connection('tenant')->hasTable('mall_lease_escalation')) {
            // Null shopcode ko empty string karo taaki PK ban sake
            DB::connection('tenant')->statement("UPDATE `mall_lease_escalation` SET `shopcode` = '' WHERE `shopcode` IS NULL");
            DB::connection('tenant')->statement("ALTER TABLE `mall_lease_escalation` MODIFY `shopcode` VARCHAR(50) NOT NULL DEFAULT ''");
            
            // Drop old PK and add composite PK including shopcode
            try {
                DB::connection('tenant')->statement("ALTER TABLE `mall_lease_escalation` DROP PRIMARY KEY, ADD PRIMARY KEY (`propertyid`, `leaseid`, `shopcode`, `chargecode`, `effectivefrom`)");
            } catch (\Exception $e) {
                // Ignore if already applied
            }
        }

        // 2. Fix tablemall_lease_charges PRIMARY KEY to include shopcode
        if (Schema::connection('tenant')->hasTable('tablemall_lease_charges')) {
            if (!Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'tenantid')) {
                DB::connection('tenant')->statement("ALTER TABLE `tablemall_lease_charges` ADD COLUMN `tenantid` VARCHAR(50) NULL AFTER `leaseid`");
            }
            if (!Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'shopcode')) {
                DB::connection('tenant')->statement("ALTER TABLE `tablemall_lease_charges` ADD COLUMN `shopcode` VARCHAR(50) NOT NULL DEFAULT '' AFTER `tenantid`");
            } else {
                DB::connection('tenant')->statement("UPDATE `tablemall_lease_charges` SET `shopcode` = '' WHERE `shopcode` IS NULL");
                DB::connection('tenant')->statement("ALTER TABLE `tablemall_lease_charges` MODIFY `shopcode` VARCHAR(50) NOT NULL DEFAULT ''");
            }

            try {
                DB::connection('tenant')->statement("ALTER TABLE `tablemall_lease_charges` DROP PRIMARY KEY, ADD PRIMARY KEY (`propertyid`, `leaseid`, `shopcode`, `chargecode`, `effectivefrom`)");
            } catch (\Exception $e) {
                // Ignore if already applied
            }
        }
    }

    public function down(): void
    {
        if (Schema::connection('tenant')->hasTable('mall_lease_escalation')) {
            try {
                DB::connection('tenant')->statement("ALTER TABLE `mall_lease_escalation` DROP PRIMARY KEY, ADD PRIMARY KEY (`propertyid`, `leaseid`, `chargecode`, `effectivefrom`)");
            } catch (\Exception $e) {}
        }

        if (Schema::connection('tenant')->hasTable('tablemall_lease_charges')) {
            try {
                DB::connection('tenant')->statement("ALTER TABLE `tablemall_lease_charges` DROP PRIMARY KEY, ADD PRIMARY KEY (`propertyid`, `leaseid`, `chargecode`, `effectivefrom`)");
            } catch (\Exception $e) {}
        }
    }
};
