<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // 1. tenantid column add karna (agar exist nahi karta)
        if (!Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'tenantid')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `tablemall_lease_charges` 
                ADD COLUMN `tenantid` VARCHAR(50) NULL AFTER `leaseid`
            ");
        }

        // 2. shopcode column add karna (agar exist nahi karta)
        if (!Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `tablemall_lease_charges` 
                ADD COLUMN `shopcode` VARCHAR(50) NULL AFTER `tenantid`
            ");
        }
    }

    public function down(): void
    {
        if (Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'shopcode')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `tablemall_lease_charges` 
                DROP COLUMN `shopcode`
            ");
        }

        if (Schema::connection('tenant')->hasColumn('tablemall_lease_charges', 'tenantid')) {
            DB::connection('tenant')->statement("
                ALTER TABLE `tablemall_lease_charges` 
                DROP COLUMN `tenantid`
            ");
        }
    }
};
