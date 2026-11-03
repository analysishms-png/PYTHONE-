<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('plan_mast', function (Blueprint $table) {
            $table->tinyInteger('status')->default(0)->after('activeYN');
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('plan_mast', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
};
