<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('facilitybill1', function ($table) {
            $table->date('duedate')->nullable()->after('toperiod');
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('facilitybill1', function ($table) {
            $table->dropColumn('duedate');
        });
    }
};