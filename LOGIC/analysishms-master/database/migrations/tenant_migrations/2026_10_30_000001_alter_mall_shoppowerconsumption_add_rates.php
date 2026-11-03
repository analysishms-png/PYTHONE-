<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        if (Schema::connection('tenant')->hasTable('mall_shoppowerconsumption')) {
            if (!Schema::connection('tenant')->hasColumn('mall_shoppowerconsumption', 'kesco_rate')) {
                Schema::connection('tenant')->table('mall_shoppowerconsumption', function (Blueprint $table) {
                    $table->decimal('kesco_rate', 10, 2)->default(0)->after('dg_percentage');
                });
            }
            if (!Schema::connection('tenant')->hasColumn('mall_shoppowerconsumption', 'dg_rate')) {
                Schema::connection('tenant')->table('mall_shoppowerconsumption', function (Blueprint $table) {
                    $table->decimal('dg_rate', 10, 2)->default(0)->after('kesco_rate');
                });
            }
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::connection('tenant')->hasTable('mall_shoppowerconsumption')) {
            Schema::connection('tenant')->table('mall_shoppowerconsumption', function (Blueprint $table) {
                $table->dropColumn(['kesco_rate', 'dg_rate']);
            });
        }
    }
};
