<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('mall_chargemast', function (Blueprint $table) {

            if (!Schema::connection('tenant')->hasColumn('mall_chargemast', 'shortcode')) {
                $table->string('shortcode', 5)->after('chargename');
            }

            if (!Schema::connection('tenant')->hasColumn('mall_chargemast', 'saccode')) {
                $table->string('saccode', 8)->nullable()->after('shortcode');
            }

            if (!Schema::connection('tenant')->hasColumn('mall_chargemast', 'u_entdt')) {
                $table->dateTime('u_entdt')->nullable()->after('u_name');
            }

            $table->decimal('taxstru', 8, 2)->nullable()->default(0)->change();
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('mall_chargemast', function (Blueprint $table) {

            if (Schema::connection('tenant')->hasColumn('mall_chargemast', 'shortcode')) {
                $table->dropColumn('shortcode');
            }

            if (Schema::connection('tenant')->hasColumn('mall_chargemast', 'saccode')) {
                $table->dropColumn('saccode');
            }

            $table->decimal('taxstru', 8, 0)->nullable()->default(0)->change();
        });
    }
};
