<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // 1. mall_lease_dtl: floorid hata kar shopcode add karna
        if (Schema::connection('tenant')->hasColumn('mall_lease_dtl', 'floorid')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_dtl` 
                DROP COLUMN `floorid`
            ");
        }

        if (!Schema::connection('tenant')->hasColumn('mall_lease_dtl', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_dtl` 
                ADD COLUMN `shopcode` VARCHAR(50) NULL AFTER `unitid`
            ");
        }

        // 2. mall_lease_escalation: tenantid aur shopcode add karna
        if (!Schema::connection('tenant')->hasColumn('mall_lease_escalation', 'tenantid')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_escalation` 
                ADD COLUMN `tenantid` VARCHAR(50) NULL AFTER `leaseid`
            ");
        }

        if (!Schema::connection('tenant')->hasColumn('mall_lease_escalation', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_escalation` 
                ADD COLUMN `shopcode` VARCHAR(50) NULL AFTER `tenantid`
            ");
        }
    }

    public function down(): void
    {
        // Rollback ke liye
        if (Schema::connection('tenant')->hasColumn('mall_lease_dtl', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_dtl` 
                DROP COLUMN `shopcode`,
                ADD COLUMN `floorid` BIGINT UNSIGNED NULL AFTER `propertyid`
            ");
        }

        if (Schema::connection('tenant')->hasColumn('mall_lease_escalation', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_escalation` 
                DROP COLUMN `shopcode`
            ");
        }

        if (Schema::connection('tenant')->hasColumn('mall_lease_escalation', 'tenantid')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `mall_lease_escalation` 
                DROP COLUMN `tenantid`
            ");
        }
    }
};
