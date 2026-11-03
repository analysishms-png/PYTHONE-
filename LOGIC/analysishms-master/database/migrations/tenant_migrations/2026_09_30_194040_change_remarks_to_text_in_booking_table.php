<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::connection('tenant')->table('booking', function (Blueprint $table) {
            $table->text('Remarks')->change();
        });
    }

    public function down(): void
    {
        Schema::connection('tenant')->table('booking', function (Blueprint $table) {
            $table->string('Remarks', 100)->change();
        });
    }
};
