<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_chargemast` MODIFY `taxstru` VARCHAR(100) NULL DEFAULT NULL'
        );
    }

    public function down(): void
    {
        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_chargemast` MODIFY `taxstru` DECIMAL(8,2) NULL DEFAULT 0'
        );
    }
};
