<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            $table->unsignedTinyInteger('default_days_roomstatus')
                ->default(15)
                ->after('grcinstruction7');
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('enviro_form', function (Blueprint $table) {
            $table->dropColumn('default_days_roomstatus');
        });
    }
};