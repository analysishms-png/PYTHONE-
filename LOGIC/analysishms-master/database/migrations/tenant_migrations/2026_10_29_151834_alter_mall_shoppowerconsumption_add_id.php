<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::connection('tenant')->hasTable('mall_shoppowerconsumption')) {
            if (!Schema::connection('tenant')->hasColumn('mall_shoppowerconsumption', 'id')) {
                DB::connection('tenant')->statement("
                    ALTER TABLE `mall_shoppowerconsumption` 
                    ADD COLUMN `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT FIRST,
                    ADD UNIQUE KEY (`id`)
                ");
            }
        }
    }

    public function down(): void
    {
        if (Schema::connection('tenant')->hasTable('mall_shoppowerconsumption')) {
            if (Schema::connection('tenant')->hasColumn('mall_shoppowerconsumption', 'id')) {
                DB::connection('tenant')->statement("
                    ALTER TABLE `mall_shoppowerconsumption` 
                    DROP COLUMN `id`
                ");
            }
        }
    }
};
