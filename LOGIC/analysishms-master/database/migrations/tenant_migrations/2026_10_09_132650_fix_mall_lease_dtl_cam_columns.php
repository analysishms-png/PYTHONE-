<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY camrate DECIMAL(18,2) NULL DEFAULT 0");
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY mincam DECIMAL(18,2) NULL DEFAULT 0");
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY currentcam DECIMAL(18,2) NULL DEFAULT 0");
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY camrate DECIMAL(18,0) NULL DEFAULT 0");
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY mincam DECIMAL(18,0) NULL DEFAULT 0");
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_dtl MODIFY currentcam DECIMAL(18,0) NULL DEFAULT 0");
    }
};