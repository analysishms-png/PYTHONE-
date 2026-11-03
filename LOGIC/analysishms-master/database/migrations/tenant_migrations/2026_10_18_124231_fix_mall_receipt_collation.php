<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * mall_receipt table utf8mb4_general_ci me bani thi (Laravel migration default),
     * jabki legacy tables (subgroup, revmast, voucher_prefix) utf8mb4_unicode_ci ki hain.
     * Is collation mismatch se mall_receipt + subgroup/revmast JOIN queries
     * ERROR 1267 (Illegal mix of collations) deti thi — paymentreceiptentry page 500 karta tha.
     */
    public function up(): void
    {
        if (!Schema::connection('tenant')->hasTable('mall_receipt')) {
            return;
        }

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci'
        );
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (!Schema::connection('tenant')->hasTable('mall_receipt')) {
            return;
        }

        DB::connection('tenant')->statement(
            'ALTER TABLE `mall_receipt` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci'
        );
    }
};
