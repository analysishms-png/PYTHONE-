<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        // Section 2 (7) + Section 3 (1) = 8 naye columns
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_commercial
            ADD COLUMN grace_period_days INT NULL DEFAULT 5 AFTER remarks,
            ADD COLUMN payment_mode VARCHAR(30) NULL AFTER grace_period_days,
            ADD COLUMN late_interest_type VARCHAR(30) NULL AFTER payment_mode,
            ADD COLUMN late_interest_pct DECIMAL(8,2) NULL DEFAULT 0 AFTER late_interest_type,
            ADD COLUMN interest_calculation VARCHAR(30) NULL AFTER late_interest_pct,
            ADD COLUMN interest_start_from VARCHAR(30) NULL AFTER interest_calculation,
            ADD COLUMN security_deposit_adj VARCHAR(30) NULL AFTER interest_start_from,
            ADD COLUMN terms_conditions TEXT NULL AFTER security_deposit_adj
        ");
    }

    public function down(): void
    {
        DB::connection('tenant')->statement("ALTER TABLE mall_lease_commercial
            DROP COLUMN grace_period_days,
            DROP COLUMN payment_mode,
            DROP COLUMN late_interest_type,
            DROP COLUMN late_interest_pct,
            DROP COLUMN interest_calculation,
            DROP COLUMN interest_start_from,
            DROP COLUMN security_deposit_adj,
            DROP COLUMN terms_conditions
        ");
    }
};
